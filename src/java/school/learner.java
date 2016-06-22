
package school;

/**
 *
 * @author Portia
 */

public class learner {
    
    private int learnerID;
    private String firstName = "Margaret";
    private String lastName = "Mhlungu";
    private String cellNo;
    private String DOB;
    private String address = "23 Block G Letlhabile";
    private String gender = "Female";
    private String highestGradePassed;
    private String parentContact;
    private String parentName;
    private String username;
    private String password;

    public learner(int learnerID, String firstName, String lastName, String cellNo, String DOB, String address, String gender, String highestGradePassed, String parentContact, String parentName, String username, String password) {
        this.learnerID = learnerID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.cellNo = cellNo;
        this.DOB = DOB;
        this.address = address;
        this.gender = gender;
        this.highestGradePassed = highestGradePassed;
        this.parentContact = parentContact;
        this.parentName = parentName;
        this.username = username;
        this.password = password;
    }

    public int getLearnerID() {
        return learnerID;
    }

    public void setLearnerID(int learnerID) {
        this.learnerID = learnerID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCellNo() {
        return cellNo;
    }

    public void setCellNo(String cellNo) {
        this.cellNo = cellNo;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHighestGradePassed() {
        return highestGradePassed;
    }

    public void setHighestGradePassed(String highestGradePassed) {
        this.highestGradePassed = highestGradePassed;
    }

    public String getParentContact() {
        return parentContact;
    }

    public void setParentContact(String parentContact) {
        this.parentContact = parentContact;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
