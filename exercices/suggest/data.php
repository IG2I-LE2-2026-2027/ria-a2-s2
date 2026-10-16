<?php

// TODO : envoyer une structure JSON et pas du HTML 
// ==> vraie indépendance entre client et serveur 

sleep(2);
if (isset($_GET["debutNom"])) 
{
	$cherche = $_GET["debutNom"]; 
	
	// On va ouvrir un fichier et afficher les lignes 
	// où le prénom ou le nom contient ce texte

	$tabLignes = file("LE2_2026_2027.csv");
	foreach ($tabLignes as $ligne)
	{
		// EXO1 : effectuer une recherche sur nom ou prénom 
		if (
		preg_match("/^(" . $cherche . ".*):(.*):.*$/i",$ligne,$tabResultats)
		|| 
		preg_match("/^(.*):(" . $cherche . ".*):.*$/i",$ligne,$tabResultats)
		)
		{
			// EXO2 afficher nom ET prénom 
			echo "<li>" . $tabResultats[1] . " " . $tabResultats[2] . "</li>"; 
		}
	}

	die("");
}

?>
