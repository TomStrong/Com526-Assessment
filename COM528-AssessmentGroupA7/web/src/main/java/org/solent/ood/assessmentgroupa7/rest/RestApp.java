/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.ood.assessmentgroupa7.rest;

import javax.ws.rs.ApplicationPath;
import org.glassfish.jersey.server.ResourceConfig;


@ApplicationPath("/rest")
public class RestApp extends ResourceConfig {
    public RestApp() {
        packages("org.solent.ood.assessmentgroup7a.rest");
    }
}
