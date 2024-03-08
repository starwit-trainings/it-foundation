package de.starwit;

import java.util.Date;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ServerFunctions {

    static Logger log = LogManager.getLogger(ServerFunctions.class.getName());
    
    public Date getServerDate() {
        return new Date();
    }

    public String parseInput(String inputLine) {
        log.debug("received command " + inputLine);
        ServerFunctionsEnum func = ServerFunctionsEnum.getFunction(inputLine);
        String result;
        switch (func) {
            case SERVERTIME:
                result = getServerDate().toString();    
                break;
            case CLUBLIST:
                log.debug("clublist");
                result = "not implemented yet";
                break;
            case LEAGUELIST:
                result = "not implemented yet";
                break;
            case ECHO:
                result = inputLine;
                break;                
            default:
                result = "Default echo " + inputLine;
                break;
        } 
        return result;
    }

}
