package de.starwit.restdemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

@Service
public class MyBusinessLogic {

   private Logger log = LoggerFactory.getLogger(MyBusinessLogic.class);

    private Connection conn;

    @Value("${jdbc.url}")
    private String url;

    @Value("${jdbc.user}")
    private String user;
    
    @Value("${jdbc.pw}")
    private String pw;    
    
    @PostConstruct
    private void init() {
        log.info("init db connection");
        try {
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

    public List<Club> getClubs() {
        String query = "Select * from Verein";
        List<Club> result = new ArrayList<>();

        try {
            PreparedStatement preStmt = conn.prepareStatement(query);
            ResultSet rs = preStmt.executeQuery();
            result = parseResult(rs);
            rs.close();
        } catch (SQLException e) {
            log.info("Couldn't run query " + e.getMessage());
        }
        
        return result;

    }

    private List<Club> parseResult(ResultSet rs) {
        List<Club> result = new ArrayList<>();

        try {
            while(rs.next()) {
                Club c = new Club();
                c.setId(rs.getInt(1));
                c.setName(rs.getString(2));
                c.setMyLeague(rs.getInt(3));
                result.add(c);
            }
        } catch (SQLException e) {
            log.info("Can't access result set " + e.getMessage());
        }

        return result;
    }

    @PreDestroy
    private void destroy() {
        try {
            conn.close();
        } catch (SQLException e) {
            log.info("couldn't close connect " + e.getMessage());
        }
    }
    
}
