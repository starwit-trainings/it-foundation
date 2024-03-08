package de.starwit;

public enum ServerFunctionsEnum {
    SERVERTIME, CLUBLIST, LEAGUELIST, ECHO;

    public static ServerFunctionsEnum getFunction(String message) {
        if("\\d".equals(message)) {
            return SERVERTIME;
        }
        if("\\cl".equals(message)) {
            return CLUBLIST;
        }
        if("\\ll".equals(message)) {
            return LEAGUELIST;
        }
        return ECHO;
    }
}
