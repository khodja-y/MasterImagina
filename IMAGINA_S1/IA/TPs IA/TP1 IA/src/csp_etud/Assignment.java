package csp_etud;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * 
 * Permet la manipulation ais�e des assignations. Une assignation (Assignment) est un ensemble de couples (variable, valeur associ�e).
 * Les noms des variables sont des cha�nes de caract�res (String)
 * Leurs valeurs sont des objects quelconques (Object).
 * 
 * Toute variable de l'assignation doit avoir une valeur associ�e !
 *
 */

/* (non-Javadoc)
 * Pour manipuler une assignation (Assignment) :
 * 	- new Assignment() : pour cr�er une assignation vide
 *  - clear() : pour remettre � vide l'assignation
 *  - isEmpty() : pour tester si l'assignation est vide
 * 	- put(var,valeur) : pour compl�ter l'assignation avec le couple (var, valeur) si var n'est pas d�j� pr�sente
 *  					sinon pour changer la valeur associ�e � var 
 *  - remove(var) : pour supprimer de l'assignation la variable var
 *	- getVars() : pour r�cup�rer la liste des variables de l'assignation
 *	- get(var) : pour r�cup�rer la valeur d'une variable de l'assignation
 *  - clone() : pour r�cup�rer une copie de l'assignation
 */
@SuppressWarnings("serial")
public class Assignment extends HashMap<String,Object> {

	/**
	 * Construit une assignation vide
	 */
	public Assignment() {
		super();
	}
	
	
	/**
	 * Retourne une copie "superficielle" de l'assignation (copie de la hashmap, mais pas de recopie des variables et des valeurs)
	 * Cette copie suffit si on ne modifie pas le nom d'une variable ni un objet valeur lui-m�me 
	 * 
	 * @return la copie de l'assignation 
	 */
	public Assignment clone() {
		return (Assignment)super.clone();
	}
	
	/**
	 * Retourne la liste des variables de l'assignation (c'est � dire toutes les variables assign�es)
	 * 
	 * @return la liste des variables
	 */
	public ArrayList<String> getVars(){
		return new ArrayList<String>(keySet());
	}
}
