/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.ResultSet;
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
public class TheConnectionNGTest {
    
    public TheConnectionNGTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @BeforeMethod
    public void setUpMethod() throws Exception {
    }

    @AfterMethod
    public void tearDownMethod() throws Exception {
    }

    /**
     * Test of TheConnection method, of class TheConnection.
     */
    @Test
    public void testTheConnection() {
        System.out.println("TheConnection");
        Connection expResult = null;
        Connection result = TheConnection.TheConnection();
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of execute method, of class TheConnection.
     */
    @Test
    public void testExecute() {
        System.out.println("execute");
        String SQL = "";
        int expResult = 0;
        int result = TheConnection.execute(SQL);
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of executeQuery method, of class TheConnection.
     */
    @Test
    public void testExecuteQuery() {
        System.out.println("executeQuery");
        String SQL = "";
        ResultSet expResult = null;
        ResultSet result = TheConnection.executeQuery(SQL);
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }
    
}
