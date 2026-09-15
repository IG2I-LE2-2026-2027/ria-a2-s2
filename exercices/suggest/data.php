<?php
if (isset($_GET["debutNom"])) 
{
	$cherche = $_GET["debutNom"]; 
	
	// On va ouvrir un fichier et afficher les lignes 
	// où le prénom ou le nom contient ce texte

	$tabLignes = file("le2_toupdate.txt");
	foreach ($tabLignes as $ligne)
	{
		// EXO1 : effectuer une recherche sur nom ou prénom 
		if (preg_match("/^.*:(" . $cherche . ".*)$/i",$ligne,$tabResultats))
		{
			// EXO2 afficher nom ET prénom 
			echo $tabResultats[1]; 
		}
	}

	die("");
}

?>
