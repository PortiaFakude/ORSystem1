
package school;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException;
import java.sql.Statement; 
import java.sql.*; 
import java.util.ArrayList; 
import java.util.Scanner; 
import java.util.Collections;
import java.util.List; 
import java.lang.*;
import java.text.DateFormat; 
import java.text.SimpleDateFormat; 
import java.util.Calendar; 


/**
 *
 * @author Portia
 */
public class Learners {
    
    /** 
     * The method that will display the current date which the learner were added on the database 
     */
    public void displayDate(){
    //Using calendar class to get current time 
    Calendar calendar = Calendar.getInstance();
    java.util.Date time = calendar.getTime();
    //Using dateformat class to get the current date 
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd" ); 
    //get the current date time with Date() 
    java.util.Date date = new java.util.Date();
    System.out.println("The learner was published on the following date:"); 
    System.out.println(dateFormat.format(date) + "/t" + time);
    }
    
     public static void main(String[] args) {
         
         Learners learn = new Learners();
         
         String dbURL = "jdbc:mysql://localhost:3306/thutopelehighschoollearner"; 
         String username = "root"; String password = "";
         
         try {
            /** 
             * Creating an object which will be used to when connecting to the database 
             */
            Connection conn = DriverManager.getConnection(dbURL, username, password);
            
            /** 
             * Using the SELECT statement to which will be used to view all learner information
             */
            String sql = "SELECT * FROM learner"; 
            Statement statement = conn.createStatement();
            ResultSet result = statement.executeQuery(sql);
            int cnt = 0;
            
            while(result.next()){
            int learnerID = result.getInt(1); 
            String firstName = result.getString(2);
            String lastName = result.getString(3);
            String DOB = result.getString(4);
            String gender = result.getString(5);
            String cellNo = result.getString(6);
            String address = result.getString(7);
            String parentName = result.getString(8);
            String parentContact = result.getString(9);
            String highestGradePassed = result.getString(10);
            String userName = result.getString(11);
            String passWord = result.getString(12);
            
            /** * Displaying the learners retrieved from the database */
            
            System.out.println("\n*****************************************Registered learners************************************");
            System.out.println("LearnerID                : " + learnerID);
            System.out.println("First name               : " + firstName);
            System.out.println("Last name                : " + lastName);
            System.out.println("Date of birth            : " + DOB);
            System.out.println("Gender                   : " + gender);
            System.out.println("Cellphone number         : " + cellNo);
            System.out.println("Physical Address         : " + address);
            System.out.println("Parent name&surname      : " + parentName);
            System.out.println("Parent contact           : " + parentContact);
            System.out.println("Highest grade passed     : " + highestGradePassed);
            System.out.println("Username                 : " + userName);
            System.out.println("Password                 : " + passWord);
            learn.displayDate();
                } 
            } catch (SQLException ex) { ex.printStackTrace(); 
         }
     } 
}
