package csp_etud;

import java.util.ArrayList;

/**
 * Solveur : permet de r�soudre un probl�me de contrainte par Backtrack : 
 * 	Calcul d'une solution, 
 * 	Calcul de toutes les solutions
 *
 */
public class CSP {

		private Network network;			// le r�seau � r�soudre
		private ArrayList<Assignment> solutions; 	// les solutions du r�seau (r�sultat de searchAllSolutions)
		private Assignment assignment;			// l'assignation courante (r�sultat de searchSolution)
		int cptr;					// le compteur de noeuds explor�s

		
		/**
		 * Cr�e un probl�me de r�solution de contraintes pour un r�seau donn�
		 * 
		 * @param r le r�seau de contraintes � r�soudre
		 */
		public CSP(Network r) {
			network = r;
			solutions = new ArrayList<Assignment>();
			assignment = new Assignment();

		}
		
		
		
		/********************** BACKTRACK UNE SOLUTION *******************************************/
		 
		/**
		 * Cherche une solution au r�seau de contraintes
		 * 
		 * @return une assignation solution du r�seau, ou null si pas de solution
		 */
		
		public Assignment searchSolution() {
			cptr=1;
			
			// Implanter appel a backtrack
			
        	assignment.clear();
        	Assignment sol = backtrack();
        	
			return sol;
			//System.err.println("searchSolution a finaliser : gerer l'appel a backtrack  !!");
			
			
		}

		/* La methode bactrack ci-dessous travaille directement sur l'attribut assignment. 
		 * On peut aussi choisir de ne pas utiliser cet attribut et de cr�er plutot un objet Assignment local � searchSolution : 
		 * dans ce cas il faut le passer en param�tre de backtrack
		 */
		/**
		 * Ex�cute l'algorithme de backtrack � la recherche d'une solution en �tendant l'assignation courante
		 * Utilise l'attribut assignment
		 * @return la prochaine solution ou null si pas de nouvelle solution
		 */
		
		public Assignment backtrack() {
		    // A IMPLANTER
		    // AJOUTER UN PARAMETRE DE TYPE ASSIGNMENT SI ON NE TRAVAILLE PAS DIRECTEMENT SUR L'ATTRIBUT assignment
		    cptr++;
			
			String x = null;
			
			if(assignment.size()==network.getVarNumber()){
				return assignment;
			}
			
			x = chooseVar();
			ArrayList<Object> domaine = tri(network.getDom(x));
			
			for(int i = 0 ; i < domaine.size() ; i++) {
	            assignment.put(x, domaine.get(i));
	            if(this.consistant(x)) {
	                Assignment b = backtrack();
	                if(b != null)
	                    return this.assignment;
	                this.assignment.remove(x);
	            }
	        }
			
		    //System.err.println("backtrack a implanter !!");
		    return null;
		}
		
		
		
		/********************** BACKTRACK TOUTES SOLUTIONS *******************************************/
		
		/**
		 * Calcule toutes les solutions au r�seau de contraintes
		 * 
		 * @return la liste des assignations solution
		 * 
		 */
		public ArrayList<Assignment> searchAllSolutions(){
			
			cptr=1;
			solutions.clear(); // SI ON CHOISIT DE TRAVAILLER DIRECTEMENT SUR L'ATTRIBUT SOLUTIONS
			// Implanter appel a backtrack
			assignment.clear();
			backtrackAll();
			//System.err.println("searchAllSolutions a finaliser : g�rer l'appel a backtrackAll  !!");
						
			
			return solutions;
		}
		
		/**
		 * Ex�cute l'algorithme de backtrack � la recherche de toutes les solutions
		 * �tendant l'assignation courante
		 * 
		 */
		private void backtrackAll() {
		    // AJOUTER UN PARAMETRE DE TYPE ArrayList<Assignment> SI ON NE TRAVAILLE PAS DIRECTEMENT SUR L'ATTRIBUT solutions
		    // A IMPLANTER
		    cptr++;
		    
		    if(this.assignment.size() == this.network.getVarNumber()){
	            this.solutions.add(this.assignment.clone());
	            return;
	        }
		    
		    String x = chooseVar();
	        ArrayList<Object> domain = tri(network.getDom(x));
	        for(int i = 0 ; i < domain.size() ; i++){
	            assignment.put(x, domain.get(i));
	            if(this.consistant(x)) {
	                this.backtrackAll();
	            }
	            this.assignment.remove(x);
	        }
	        return;
		    //System.err.println("backtrackAll a implanter !!");
		
		}
    
  		
    // IMPLANTER l'UNE DES DEUX METHODES CHOOSEVAR CI-DESSOUS (SELON QUE L'ASSIGNATION COURANTE EST PASSEE EN PARAMETRE OU PAS)
		
		/**
		 * Retourne la prochaine variable � assigner �tant donn� assignment (qui doit contenir la solution partielle courante)
		 *  
		 * @return une variable non encore assign�e
		 */
		private String chooseVar() {
		    /*Pour chaque variable du r�seaux, si l'assignation ne contient pas la variable 
		     * je retourne la variable sinon je retourne null*/
			for(String var : network.getVars()){
	            if(!(assignment.containsKey(var))){
	                return var;
	            }
	        }

		    return null;
		}
		
		/*****************************************************************/
		
		/**
		 * Retourne la prochaine variable � assigner �tant donn� la solution partielle pass�e en param�tre
		 *  
		 *  @param sol solution partielle courante
		 * @return une variable non encore assign�e
		 */
		private String chooseVar(Assignment sol) {
			// A IMPLANTER
			System.err.println("M�thode chooseVar() � implanter !!!");
			return null;
		}
		
		
		/**
		 * Fixe un ordre de prise en compte des valeurs d'un domaine
		 * 
		 * @param values une liste de valeurs
		 * @return une liste de valeurs
		 */
		private ArrayList<Object> tri(ArrayList<Object> values) {
			return values; // donc en l'�tat n'est pas d'une grande utilit� !
		}
		


  // IMPLANTER l'UNE DES DEUX METHODES CONSISTANT CI-DESSOUS (SELON QUE L'ASSIGNATION COURANTE EST PASSEE EN PARAMETRE OU PAS)
		
		/**
		 * Teste si l'assignation courante stok�e dans l'attribut assignment est consistante, c'est � dire qu'elle
		 * ne viole aucune contrainte.
		 * 
		 * @param lastAssignedVar la variable que l'on vient d'assigner � cette �tape
		 * @return vrai ssi l'assignment courante ne viole aucune contrainte
		 */
		private boolean consistant(String lastAssignedVar) {
			
			ArrayList<Constraint> constraints = network.getConstraints(lastAssignedVar);
			/*On v�rifie si la contrainte de la viariable qu'on vient d'assigner ne viole 
			 * pas l'assignation, si oui on retourne faux sinon vrai
			 */
			for(int i = 0 ; i < constraints.size() ; i++) {
				
	            if(constraints.get(i).violation(assignment)){ 
	                return false;}
	        }
			return true;
		}
		
		/**
		 * Teste si l'assignation courante stock�e dans assignment est consistante par rapport � sol, c'est � dire qu'elle
		 * ne viole aucune contrainte.
		 * 
		 * @param sol solution partielle courante
		 * @param lastAssignedVar la variable que l'on vient d'assigner � cette �tape
		 * @return vrai ssi l'assignment courante ne viole aucune contrainte
		 */
		private boolean consistant(Assignment sol, String lastAssignedVar) {
			
			
			System.err.println("M�thode consistant() � implanter !!!");
			return true;

		}
		
}
