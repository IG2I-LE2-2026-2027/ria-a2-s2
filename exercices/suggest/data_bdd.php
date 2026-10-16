<?php
include("libs/maLibSQL.pdo.php"); 
include("libs/maLibUtils.php");

// envoyer une structure JSON et pas du HTML 
// ==> vraie indépendance entre client et serveur 

// TODO : Les données viennent d'une base de données 
// Objectif + 3 lignes + inclusions de librairies 

// 0) choisir la structure que l'on veut produire 
// TOUJOURS RENVOYER UN RESULTAT RESPECTANT CETTE STRUCTURE 
// ROBUSTESSE 

$data = array("suggestions" => array(),"debutNom" => valider("debutNom")); 
if ($cherche = valider("debutNom")) {
	$SQL = "SELECT * FROM etudiants WHERE nom LIKE '$cherche%' OR prenom LIKE '$cherche%'"; 
	$data["suggestions"] = parcoursRs(SQLSelect($SQL));
}
echo json_encode($data); 


?>
