/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package school;

/**
 *
 * @author Matshidiso
 */

public class student {
    private String First_name;
    private String Surname;
    private String DOB;
    private int Age;
    private String Address;
    private String City;
    private int Postal_code;
    private String Email;
    private String User_name;
    private String Password;

    public student(String First_name, String Surname, String DOB, int Age, String Address, String City, int Postal_code, String Email, String User_name, String Password) {
        this.First_name = First_name;
        this.Surname = Surname;
        this.DOB = DOB;
        this.Age = Age;
        this.Address = Address;
        this.City = City;
        this.Postal_code = Postal_code;
        this.Email = Email;
        this.User_name = User_name;
        this.Password = Password;
        
        
    }

    public String getFirst_name() {
        return First_name;
    }

    public String getSurname() {
        return Surname;
    }

    public String getDOB() {
        return DOB;
    }

    public int getAge() {
        return Age;
    }

    public String getAddress() {
        return Address;
    }

    public String getCity() {
        return City;
    }

    public int getPostal_code() {
        return Postal_code;
    }

    public String getEmail() {
        return Email;
    }

    public String getUser_name() {
        return User_name;
    }

    public String getPassword() {
        return Password;
    }

    public void setFirst_name(String First_name) {
        this.First_name = First_name;
    }

    public void setSurname(String Surname) {
        this.Surname = Surname;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public void setAge(int Age) {
        this.Age = Age;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public void setPostal_code(int Postal_code) {
        this.Postal_code = Postal_code;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setUser_name(String User_name) {
        this.User_name = User_name;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    
    
    
    
    
    
    
    
    
}
