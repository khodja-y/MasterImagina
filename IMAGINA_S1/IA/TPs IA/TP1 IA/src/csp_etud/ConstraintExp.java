package csp_etud;

import java.io.BufferedReader;
import java.util.ArrayList;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class ConstraintExp extends Constraint{
	protected String exp;

	public ConstraintExp(BufferedReader in) throws Exception {
		super(in);
		exp = in.readLine().trim();
		
	}

	@Override
	public boolean violation(Assignment a) {
		
		ArrayList<String> assignVars = new ArrayList<String>(a.getVars());
		
		for(String var : this.getVars()){
			//si l'assignation ne contient pas une des variables de la contrainte elle ne la viole pas
			if(!(assignVars.contains(var))) return false;
		}
				
		boolean resultat = false;
		
		String assigned_expression  = exp;
		
		//on remplace les variables par leurs valeurs dans notre expression
		for(String var : this.getVars()){
			assigned_expression = assigned_expression.replace(var, a.get(var).toString());
		}
		
		try {
			ScriptEngineManager mgr = new ScriptEngineManager();
			ScriptEngine engine = mgr.getEngineByName("JavaScript");
			resultat = (boolean)engine.eval(assigned_expression); 
		}
		catch (ScriptException e) { System.err.println("probleme dans: "+ assigned_expression); }
		
		
		return !resultat;
	}

}
