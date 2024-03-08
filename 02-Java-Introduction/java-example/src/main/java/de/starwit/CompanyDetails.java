package de.starwit;

public class CompanyDetails extends CompanyBase {
    /*
     * year,
     * industry_code_ANZSIC,
     * industry_name_ANZSIC,
     * rme_size_grp,
     * variable,
     * value,
     * unit
     */

    private String industryCode;
    private String rme;
    private String variable;
    private String value;
    private String unit;

    static String field;

    @Override
    public String toString() {
        return "CompanyDetails [year=" + year + ", industryCode=" + industryCode + ", industryName=" + industryName
                + ", rme=" + rme + ", variable=" + variable + ", value=" + value + ", unit=" + unit + "]";
    }

    public String businessDetails(int year) {
        if(year == -1) {
            return "nix";
        }
        return "Test";
    }

    public CompanyDetails() {

    }

    public CompanyDetails(int year, String industryCode, String industryName, String rme, String variable, String value,
            String unit) {
        this.year = year;
        this.industryCode = industryCode;
        this.industryName = industryName;
        this.rme = rme;
        this.variable = variable;
        this.value = value;
        this.unit = unit;
    }

    public String getVariable() {
        return variable;
    }

    public void setVariable(String variable) {
        this.variable = variable;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getIndustryCode() {
        return industryCode;
    }

    public void setIndustryCode(String industryCode) {
        this.industryCode = industryCode;
    }

    public String getIndustryName() {
        return industryName;
    }

    public void setIndustryName(String industryName) {
        this.industryName = industryName;
    }

    public String getRme() {
        return rme;
    }

    public void setRme(String rme) {
        this.rme = rme;
    }

}
