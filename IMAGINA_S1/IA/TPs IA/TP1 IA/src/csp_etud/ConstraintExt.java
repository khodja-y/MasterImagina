package csp_etud;

import java.io.BufferedReader;
import java.util.ArrayList;

/**
 * Pour manipuler des contraintes en extension
 *
 */
public class ConstraintExt extends Constraint{
	
	private ArrayList<ArrayList<Object>> tuples;	// ensemble des tuples de la contrainte
	
	/**
	 * Construit une contrainte d'extension vide � partir
	 * d'une liste de variables
	 * 
	 * @param var la liste de variables
	 */
	public ConstraintExt(ArrayList<String> var) {
		super(var);
		tuples = new ArrayList<ArrayList<Object>>();
	}
	
	/**
	 * Construit une contrainte d'extension vide � partir
	 * d'une liste de variables et d'un nom
	 * 
	 * @param var la liste de variables
	 * @param name son nom
	 */
	public ConstraintExt(ArrayList<String> var, String name) {
		super(var,name);
		tuples = new ArrayList<ArrayList<Object>>();
	}
	
	/**
	 * Construit une contrainte en extension � partir d'une repr�sentation
	 * textuelle de la contrainte. La liste de variables est donn�e sous la forme : Var1;Var2;...
	 * Puis le nombre de tuples est indiqu� et enfin chaque tupe est donn� sous la forme d'une
	 * suite de valeurs "String" : Val1;Val2;...
	 * Aucune v�rification n'est pr�vue si la syntaxe n'est pas respect�e !!
	 * 
	 * @param in le buffer de lecture de la repr�sentation textuelle de la contrainte
	 * @throws Exception en cas d'erreur de format
	 */
	public ConstraintExt(BufferedReader in) throws Exception{
		super(in);
		tuples = new ArrayList<ArrayList<Object>>();
		int nbTuples = Integer.parseInt(in.readLine());		// nombre de tuples de valeurs
		for(int j=1;j<=nbTuples;j++) {
			ArrayList<Object> tuple = new ArrayList<Object>();
			for (String v : in.readLine().split(";")) tuple.add(v);	// Val1;Val2;...;Val(arity)
			if(tuple.size() != varList.size()) 
				System.err.println("Le tuple " + tuple + " n'a pas l'arit� " + varList.size() + " de la contrainte " + name);
			else if(!tuples.add(tuple)) System.err.println("Le tuple " + tuple + " est d�j� pr�sent dans la contrainte "+ name);
		}
	}
	
	/**
	 * Ajoute un tuple de valeur � la contrainte
	 * 
	 * @param valTuple le tuple � ajouter
	 */
	public void addTuple(ArrayList<Object> valTuple) {
		if(valTuple.size() != varList.size()) 
			System.err.println("Le tuple " + valTuple + " n'a pas l'arit� " + varList.size() + " de la contrainte " + name);
		else if(!tuples.add(valTuple)) System.err.println("Le tuple " + valTuple + " est d�j� pr�sent dans la contrainte "+ name);
	}
	

	/**
	 * Teste si une assignation viole la contrainte. 
	 * La violation "classique" n'est av�r�e que si :
     *      - toutes les variables de la contrainte ont une valeur associ�e dans l'assignation test�e
     *      - le tuple de valeur pour les variables de la contrainte dans l'assignation test�e n'appartient
     *        pas aux tuples autoris�s par la contrainte
	 * @param a l'assignation � tester
	 * @return vrai ssi l'assignation viole la contrainte 
	 */
	
	public boolean violation(Assignment a) {
		ArrayList<String> assignVars = a.getVars(); 
		ArrayList<String> constraintVars = this.getVars();
		/*stock les variables de l'assignation et de la contrainte
		 dans des listes s�par�es*/
		
		for(ArrayList<Object> tuple : this.tuples){ 
			boolean validTuple = true;
			for(String variable : assignVars){ 
				if(constraintVars.contains(variable)){ 
					//si la contrainte contient une variable de l'assignation donn�e
					
					if(!((a.get(variable)).equals(tuple.get(constraintVars.indexOf(variable))))){ 
						/*si la valeur de la variable de l'assignation n'est pas �gal � la valeur du 
						 * tuple de la contrainte le tuple est non valide
						 */
						
						validTuple = false;
					}
				}
				if(!validTuple) break;
			}
			if(validTuple) return false; 
		}
		return true;
		
		
	}
	
	/* (non-Javadoc)
	 * @see Constraint#toString()
	 */
	public String toString() {
		return "\n\t Ext "+ super.toString() + " : " + tuples; 
	}


}
