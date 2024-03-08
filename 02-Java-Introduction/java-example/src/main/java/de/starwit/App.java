package de.starwit;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class App {

    static Logger log = LogManager.getLogger(App.class.getName());

    public static void main(String[] args) {
        System.out.println("Hello World!");
    }

    /**
     * let's parse data from a CSV file
     * which input/output does that method need?
     */
    public static void readCSV() {

    }

    /**
     * Once we use app.properties - what if config file is missing?
     */
    public static loadProperties() {

    }
}
