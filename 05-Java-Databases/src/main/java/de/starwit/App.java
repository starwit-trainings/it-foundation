package de.starwit;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Set;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class App {

    private final Logger log = LogManager.getLogger(this.getClass());

    private Properties config;

    private Connection conn;

    public static void main(String[] args) {
        App a = new App();
        a.createConnection();
        a.runQuery();
        a.closeConnection();
    }

    public App() {
        loadProperties();
    }

    private void loadProperties() {
        try {
            InputStream input = new FileInputStream("data/app.properties");
            config = new Properties();
            config.load(input);
            Set<Object> keys = config.keySet();
            for (Object object : keys) {
                String value = (String)config.get(object);
                log.info(value);
            }
        } catch (IOException e) {
            log.info("Couldn't load app props. Exit. " + e.getMessage());
            System.exit(1);
        }
    }    

    public void createConnection() {
        try {
            String url = (String) config.get("jdbc.url");
            String user = (String) config.get("jdbc.user");
            String pw = (String) config.get("jdbc.pw");
            conn = DriverManager.getConnection(url, user, pw);
        } catch (SQLException e) {
            log.error("Couldn't connect to database with error", e);
            try {
                this.conn.close();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
            this.conn = null;
        }
    }

    public void runQuery() {
        String query = "Select * from Verein";

        try {
            PreparedStatement preStmt = conn.prepareStatement(query);
            ResultSet rs = preStmt.executeQuery();
            printResult(rs);
        } catch (SQLException e) {
            log.info("Couldn't run query " + e.getMessage());
        }
    }

    private void printResult(ResultSet rs) {
        try {
            while(rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int liga = rs.getInt(3);
                log.info(""+id + " " + name + " Liga: " + liga);
                //TODO build a wrapping Java object
            }
        } catch (SQLException e) {
            log.info("Can't access result set " + e.getMessage());
        }
    }

    public void closeConnection() {
        try {
            conn.close();
        } catch (SQLException e) {
            log.info("couldn't close connect " + e.getMessage());
        }
    }
}
