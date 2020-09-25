package Testador_Mvn.Testador;

import junit.framework.TestCase;

public class CalculadoraTest extends TestCase {

	Calculadora calc = new Calculadora();
	
	public void testSoma() {
		assertEquals(3, calc.soma(1, 2));
	}
	
	public void testMultiplica(){
		assertEquals(12,calc.multiplica(true, 4, 3));
	}
	
	public void testMultiplica2(){
		assertEquals(2,calc.multiplica(false, 4, 2));
	}
}
