function trace(s) {
	window.console && console.log(s);
}

var dbg = (function (borne_max_interne) {
	// borne_max_interne est un paramètre formel 
	// donc une variable locale !! 
	var compteur_interne=0; // locale à mkVarLocale
	if (borne_max_interne == undefined)
		borne_max_interne=5; 
		
	return {
		trace : function(s) {
			if (compteur_interne++<borne_max_interne) 
				trace(s); 
		},
		reset : function() {compteur_interne=0;}, 
		set : function(v) {compteur_interne = v; }, 
		getCompteur : function() {return compteur_interne;}
	};
}) (3);

function show(refOrId,display) {
	// affiche l'élément dont la référence ou l'id est fourni
	// le paramètre display doit valoir block par défaut
	if (typeof refOrId =="string") 
		refOrId = document.getElementById(refOrId);
		
	if (display == undefined) display = "block";
	
	refOrId.style.display = display;
}

function hide(refOrId) {
	// cache l'élément dont la référence ou l'id est fourni
	if (typeof refOrId == "string") 
		refOrId = document.getElementById(refOrId); 
		
	refOrId.style.display = "none";
}

function html(refOrId, val) {
	// affecte une valeur à l'élément dont la référence ou l'id est fourni; si val n'est pas fourni, on renvoie son contenu
	if (typeof refOrId =="string") 
		refOrId = document.getElementById(refOrId); 
		
	if (val == undefined) return refOrId.innerHTML;
	else {
		refOrId.innerHTML = val;
	}
}

function val(refOrId, val) {
	// affecte une valeur à l'élément dont la référence ou l'id est fourni; si val n'est pas fourni, on renvoie son contenu
	// l'élément est un champ de formulaire
	// la fonction doit pouvoir manipuler l'état des champs de type checkbox et radio 
	if (typeof refOrId =="string") 
		refOrId = document.getElementById(refOrId); 
	
	if (val == undefined) {
		if ((refOrId.type=="checkbox") || (refOrId.type=="radio"))
			return refOrId.checked;
		else 
			return refOrId.value;
	}
	else {
		if ((refOrId.type=="checkbox") || (refOrId.type=="radio"))
			return refOrId.checked = val;
		else 
			return refOrId.value = val;
	}
}

trace("Chargement lib utils.js : trace,dbg,show,hide,html,val"); 















