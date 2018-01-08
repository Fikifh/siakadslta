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
public class AdminEditSiswaNGTest {
    
    public AdminEditSiswaNGTest() {
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
     * Test of setNis method, of class AdminEditSiswa.
     */
    @Test
    public void testSetNis() {
        System.out.println("setNis");
        String nii = "";
        AdminEditSiswa instance = new AdminEditSiswa();
        instance.setNis(nii);
        // TODO review the generated test code and remove the default call to fail.
        
    }

    /**
     * Test of getNis method, of class AdminEditSiswa.
     */
    @Test
    public void testGetNis() {
        System.out.println("getNis");
        AdminEditSiswa instance = new AdminEditSiswa();
        String expResult = null;
        String result = instance.getNis();
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
        
    }
}
