package Testador_Mvn.Testador;

/**
 * Hello world!
 *
 */
public class Calculadora {
	// analisado pelo sonarqube
	public int soma(int a, int b) {
		return a + b;
	}
	 
	public int divisao(int x, int y) {
		return x/y;
	}
	
	public int multiplica(boolean s, int x, int y) {
		if(s) 	  
		{		 
			return x*y;   
		}
		return x/y;
	}
	
	public static void main(String[] args) {
		    
			Calculadora calc = new Calculadora();
			int soma = calc.soma(2,3);
		    int mul = calc.multiplica(true, 2,3);
		    
		    System.out.println(soma);
		    System.out.println(mul);
		  }

}
