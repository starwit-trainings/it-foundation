package de.starwit;

import java.io.BufferedReader;
import java.io.FileReader;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class App {
	
	static Logger log = LogManager.getLogger(App.class.getName());

	public static void main(String[] args) throws Exception {
		log.info("Test");
		
        Path currRelativePath = Paths.get("");
        String currAbsolutePathString = currRelativePath.toAbsolutePath().toString();
        System.out.println("Current absolute path is - " + currAbsolutePathString);
		
		List<List<String>> records = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader("data/company-data.csv"))) {
		    String line;
		    while ((line = br.readLine()) != null) {
		        String[] values = line.split(";");
		        records.add(Arrays.asList(values));
		    }
		}		
	}
	
	public static String generateString() {
		return "Hallo Welt!";
	}

}
