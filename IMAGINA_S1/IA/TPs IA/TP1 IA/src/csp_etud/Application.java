package csp_etud;

import java.io.*;
import java.util.ArrayList;

public class Application {
	
	public static void main(String[] args) throws Exception{
		
		if(args.length>0){
		
				String fileName = args[0] ; // nom du fichier
				Network myNetwork;
				System.out.println("Chargement du fichier : "+ new java.io.File( "." ).getCanonicalPath()+ "/" + fileName);
				BufferedReader readFile = new BufferedReader(new FileReader (fileName));
				myNetwork = new Network(readFile);
				readFile.close();
				System.out.println(myNetwork);
				CSP csp = new CSP(myNetwork);
				System.out.println(myNetwork.getVars());
				Assignment fS = csp.searchSolution();
				System.out.println("première solution :" + fS);
				ArrayList<Assignment> allS = csp.searchAllSolutions();
				System.out.println("Toutes les solutions :" );
				for(Assignment a : allS) System.out.println(a);
				
		}else System.err.println("Aucun CSP entré");		
	}

}
