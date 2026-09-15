<?php
	
	$tabEtudiants[] = array("prenom"=>"Thomas","nom"=>"Bourdeaud'huy"); 
	$tabEtudiants[] = array("prenom"=>"Jean-Pierre","nom"=>"Bourey"); 
	$tabAsso = array(	"promo"=>"2016-2017",
						"etudiants"=>$tabEtudiants);

?>

<h1>
Fonction php json_encode
</h1>

<pre>
$tabEtudiants[] = array("prenom"=>"Thomas","nom"=>"Bourdeaud'huy"); 
$tabEtudiants[] = array("prenom"=>"Jean-Pierre","nom"=>"Bourey"); 
$tabAsso = array("promo"=>"2016-2017","etudiants"=>$tabEtudiants);
</pre>

<hr />

<pre>
echo "&lt;pre>";
print_r($tabAsso);
echo "&lt;/pre>";
</pre>


<?php	
	echo "<pre>";
	print_r($tabAsso);
	echo "</pre>";
?>

<hr />

<pre>
echo json_encode($tabAsso);
</pre>

<?php
	echo json_encode($tabAsso);
?>

<hr />
<h1>json_encode et les bases de donn&eacute;es </h1> 

<pre>
$SQL = "SELECT * FROM users";
$rs = SQLSelect($SQL);
$tab = parcoursRs($rs);
$data["users"] = $tab;
</pre>

<hr />

<pre>
echo "&lt;pre>";
print_r($data);
echo "&lt;/pre>";
</pre>

<?php
	include("libs/maLibSQL.pdo.php");

	$SQL ="CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) NOT NULL,
  `passe` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
)"; 

	SQLUpdate($SQL); 

	SQLDelete("DELETE FROM users");
	SQLInsert("INSERT INTO users(pseudo,passe) VALUES ('tom','héhé')");
	SQLInsert("INSERT INTO users(pseudo,passe) VALUES ('max','fols')");

	$SQL = "SELECT * FROM users";
	$rs = SQLSelect($SQL);
	$tab = parcoursRs($rs);
	$data["users"] = $tab;
	echo "<pre>";
	print_r($data);
	echo "</pre>";
?>

<hr />
<pre>
echo json_encode($data);
</pre>

<?php
	echo json_encode($data);
?>

<h3>NB : json_encode nécessite des données encodées en utf-8... (SQLSelect convertit les données si besoin !) </h3> 



