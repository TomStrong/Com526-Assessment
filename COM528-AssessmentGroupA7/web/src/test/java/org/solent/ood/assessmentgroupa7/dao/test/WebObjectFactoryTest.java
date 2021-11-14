/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.ood.assessmentgroupa7.dao.test;

import java.io.File;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import org.solent.ood.assessmentgroupa7.dao.PropertiesDao;
import org.solent.ood.assessmentgroupa7.dao.WebObjectFactory;
import org.solent.ood.assessmentgroupa7.service.Authenticator;

/**
 *
 * @author cgallen
 */
public class WebObjectFactoryTest {

    @Test
    public void testGetPropertiesDao() {
        PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();

        assertNotNull(propertiesDao);
    }
    
    @Test
    public void testGetAuthenticator() {
        Authenticator auth = WebObjectFactory.getAuthenticator();

        assertNotNull(auth);
    }

    @After
    public void after() {
        // remove properties file after test
        try {
            String TEMP_DIR = System.getProperty("java.io.tmpdir");
            File propertiesFile = new File(TEMP_DIR + "/application.properties");
            System.out.println("deleting test properties file:"+propertiesFile.getAbsolutePath());
            propertiesFile.delete();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
