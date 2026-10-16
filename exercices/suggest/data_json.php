<?php

// TODO : envoyer une structure JSON et pas du HTML 
// ==> vraie indépendance entre client et serveur 

// Process : 1) produire un tableau contenant les données à envoyer
// 2) transformer ce tableau en objet JSON : json_encode 

sleep(2);

// 0) choisir la structure que l'on veut produire 
// TOUJOURS RENVOYER UN RESULTAT RESPECTANT CETTE STRUCTURE 
// ROBUSTESSE 

$data = array("suggestions" => array(), 
							"debutNom" => false); 

/*
$data = array(); 
$data["suggestions"] = array(); 
$data["debutNom"] = false; 
*/

if (isset($_GET["debutNom"])) 
{
	$data["debutNom"] = $_GET["debutNom"]; 
	$tabLignes = file("LE2_2026_2027.csv");
	foreach ($tabLignes as $ligne)
	{
		if (
		preg_match("/^(" . $data["debutNom"] . ".*):(.*):(.*)$/i",$ligne,$tabResultats)
		|| 
		preg_match("/^(.*):(" . $data["debutNom"] . ".*):(.*)$/i",$ligne,$tabResultats)
		)
		{
			$data["suggestions"][] = array(
				"prenom" =>  $tabResultats[1],
				"nom" =>  $tabResultats[2], 
				"id" =>  $tabResultats[3]
			); 
			
			//echo "<pre>";
			//print_r($data);
			//echo "</pre>"; 
			
			// echo "<li>" . $tabResultats[1] . " " . $tabResultats[2] . "</li>"; 
		}
	}

}


echo json_encode($data); 


?>
