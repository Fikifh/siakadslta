/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.testng.Assert.*;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

/**
 *
 * @author syah
 */
public class LoginNGTest {
    
    public LoginNGTest() {
    }
    /**
     * Test of setUsername method, of class Login.
     */
    @Test
    public void testSetUsername() {
        System.out.println("setUsername");
        String user = null;
        Login instance = new Login();
        instance.setUsername(user);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getUsername method, of class Login.
     */
    @Test
    public void testGetUsername() {
        System.out.println("getUsername");
        Login instance = new Login();
        String expResult = null;
        String result = instance.getUsername();
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }
     /**
     * Test of SetId method, of class Login.
     */
    @Test
    public void testSetId() {
        System.out.println("SetId");
        String nis = null;
        Login instance = new Login();
        instance.SetId(nis);
      
    }
    /**
     * Test of getId method, of class Login.
     */
    @Test
    public void testGetId() {
        System.out.println("getId");
        Login instance = new Login();
        String expResul = null;
        String result = instance.getId();
        assertEquals(result, expResul);
        // TODO review the generated test code and remove the default call to fail.
    } 
}
