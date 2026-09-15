function enrichir(oStructure, oData) {
	var aux = {}; 
	for (nomProp in oStructure) {
		if (oData[nomProp] != undefined) aux[nomProp] = oData[nomProp]; 
		else aux[nomProp] = oStructure[nomProp]; 
	}
	
	return aux; 
}

function ajax(urlOrConfig, config) {
	var oConfig = {
		url: false,
		type : "GET", 
		data : {}, 
		callback : function(rep){
			console.log(rep); 
		}
	}

	if (config == undefined) config = {};
		
	if (typeof urlOrConfig == "string") {
		oConfig.url=urlOrConfig;
		urlOrConfig = config; 
	}
 
	oConfig = enrichir(oConfig, urlOrConfig);
	// oConfig contient toute l'information nécessaire à l'exécution d'une requete 
	
	// transformation de data(json) en donnees(querystring)
	var donnees = ""; 
	for (cle in oConfig.data) {
		donnees += cle + "=" + oConfig.data[cle] + "&"; 
	}
	// il reste un "&" à la fin 
	// on pourrait utiliser trimEnd() => JS6 
	donnees = donnees.substr(0,donnees.length-1); 
	console.log("Envoi de " + donnees 
								+ " a l'url " + oConfig.url
								+ " par la methode " + oConfig.type);
	
	var request = new XMLHttpRequest();
	if (oConfig.type=='GET') 
	{
		request.open("GET", oConfig.url+"?"+donnees, true);
		donnees=null;
	}
	else 
	{
		request.open("POST", oConfig.url, true);
		request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		// request.setRequestHeader("Content-length", donnees.length);
		// request.setRequestHeader("Connection", "close");
	}

	request.onreadystatechange = function(){
		// On crée la fonction de rappel dans la fonction ajax 
		// => elle dispose dans son scope de l'accès à l'objet request
		// et à l'objet oConfig !! 
	
		if (request.readyState == 4) 
		{
			  if (request.status == 200) 
			  {
					reponse = request.responseText;
					// Il n'y a plus qu'à appeler oConfig.callback ! 
					oConfig.callback(reponse);
			  }
		}	 
	
	};
	
	request.send(donnees);
	
}

console.log("Chargement ajax.js");
