package de.starwit;

import static org.junit.Assert.*;

import org.junit.Test;

public class AppTest {

	@Test
	public void test() {
		String test = App.generateString();
		assertEquals(test, "Hallo Welt!");
	}

}
