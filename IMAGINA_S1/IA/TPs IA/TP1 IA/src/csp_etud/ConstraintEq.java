package csp_etud;

import java.io.BufferedReader;
import java.util.ArrayList;

public class ConstraintEq extends Constraint{

	public ConstraintEq(BufferedReader in) throws Exception {
		super(in);
		
	}

	@Override
	public boolean violation(Assignment a) {
		ArrayList<String> aVars = new ArrayList<String>(a.getVars());
		
		for(String var : this.getVars()){
			if(!(aVars.contains(var)))
				return false;
		}
		
		String var1 = this.getVars().get(0);
		for(int i=1;i<this.getVars().size();i++){
			String var2 = this.getVars().get(i);
			if(!(a.get(var1).equals(a.get(var2)))) return true;
			var1 = var2;
		}
		
		
		return false;
	}
	
	public String toString(){
		return super.toString();
	}

}
