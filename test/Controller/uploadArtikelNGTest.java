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
public class uploadArtikelNGTest {
    
    public uploadArtikelNGTest() {
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
     * Test of getTanggal method, of class uploadArtikel.
     */
    @Test
    public void testGetTanggal() {
        System.out.println("getTanggal");
        uploadArtikel instance = new uploadArtikel();
        instance.getTanggal();
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of processRequest method, of class uploadArtikel.
     */
    @Test
    public void testProcessRequest() throws Exception {
        System.out.println("processRequest");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        uploadArtikel instance = new uploadArtikel();
        instance.processRequest(request, response);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of doGet method, of class uploadArtikel.
     */
    @Test
    public void testDoGet() throws Exception {
        System.out.println("doGet");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        uploadArtikel instance = new uploadArtikel();
        instance.doGet(request, response);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of doPost method, of class uploadArtikel.
     */
    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        uploadArtikel instance = new uploadArtikel();
        instance.doPost(request, response);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getServletInfo method, of class uploadArtikel.
     */
    @Test
    public void testGetServletInfo() {
        System.out.println("getServletInfo");
        uploadArtikel instance = new uploadArtikel();
        String expResult = "";
        String result = instance.getServletInfo();
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }
    
}
