package de.starwit.restdemo;

public class Club {
    private int id;
    private String name;
    private int myLeague;
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public int getMyLeague() {
        return myLeague;
    }
    public void setMyLeague(int myLeague) {
        this.myLeague = myLeague;
    }
    

    @Override
    public String toString() {
        return "Club [id=" + id + ", name=" + name + ", myLeague=" + myLeague + "]";
    }

    public static String insertStatement(Club c) {
        return "INSERT INTO `Verein` (`Name`, `Liga`) VALUES ('" + c.getName() +"', '" + c.myLeague + "');"; 
    }
}
