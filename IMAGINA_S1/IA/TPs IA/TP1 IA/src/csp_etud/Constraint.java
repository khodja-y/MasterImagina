package csp_etud;

import java.io.BufferedReader;
import java.util.ArrayList;

/**
 * Classe abstraite pour une contrainte. Cette classe a vocation
 * � �tre sp�cialis�e pour chaque type de contrainte en red�finissant :
 * un constructeur sp�cifique, un constructeur permettant de lire la contrainte
 * � partir d'une repr�sentation textuelle, une m�thode de test de la violation de la contrainte,
 * la m�thode de repr�sentation textuelle de la contrainte.
 * 
 */
public abstract class Constraint {
	
	protected static int num = 0; 			// pour g�n�rer un nom diff�rent pour chaque contrainte
	protected String name; 					// nom de la contrainte
	protected ArrayList<String> varList;	// port�e de la contrainte : la liste des diff�rentes variables
											//                           mises en jeu par la contrainte
	
	/**
	 * Construit une contrainte portant sur une liste de variables.
	 * Les variables doivent �tre diff�rentes. L'arit� de la contrainte
	 * est la taille de la liste.
	 * Le nom de la contrainte est g�n�r� automatiquement
	 * 
	 * @param vars les variables sur lesquelles la contrainte porte
	 * 
	 */
	public Constraint(ArrayList<String> vars) {
		num++;
		this.name = "C"+num;
		varList = vars; 
	}
	
	/**
	 * Construit une contrainte portant sur une liste de variables.
	 * Les variables doivent �tre diff�rentes. L'arit� de la contrainte
	 * est la taille de la liste.
	 * Le nom de la contrainte est pass� en param�tre
	 * 
	 * @param vars les variables de la contrainte 
	 * @param name le nom de la contrainte
	 */
	public Constraint(ArrayList<String> vars, String name) {
		num++;
		this.name = name;
		varList = vars; 
	}
	
	/**
	 * Construit une contrainte � partir d'une repr�sentation textuelle de
	 * la contrainte. La liste de variables est donn�e sous la forme : Var1;Var2;...
	 * Les variables doivent �tre diff�rentes. L'arit� de la contrainte
	 * correspond au nombre de variables lues.
	 * Le nom de la contrainte est g�n�r� automatiquement.
	 * 
	 * @param in le buffer de lecture de la repr�sentation textuelle de la contrainte
	 * @throws Exception en cas d'erreur de format 
	 */
	public Constraint(BufferedReader in) throws Exception {
		num++;
		this.name = "C"+num;
		varList = new ArrayList<String>();
		for (String v : in.readLine().split(";")) varList.add(v);	// Var1;Var2;...;Var(arity)
	}
	
	/**
	 * Retourne l'arit� de la contrainte
	 * 
	 * @return l'arit�
	 */
	public int getArity() {
		return varList.size();
	}
	
	/**
	 * Retourne le nom de la contrainte
	 * 
	 * @return son nom
	 */
	public String getName() {
		return name;
	}
	
	
	/**
	 * Retourne la port�e de la contrainte, c'est � dire la liste de ses variables 
	 * 
	 * @return la liste des variables de la contrainte
	 */
	public ArrayList<String> getVars() {
		return varList;
	}

	/**
	 * 
	 * Teste si une assignation viole la contrainte. 
	 * Doit �tre implant�e dans la classe concr�te. 
	 * @param a l'assignation � tester
	 * @return vrai ssi l'assignation viole la contrainte 
	 */
	public abstract boolean violation(Assignment a);
	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return "\n\t"+ name + " " + varList; 
	}

}
