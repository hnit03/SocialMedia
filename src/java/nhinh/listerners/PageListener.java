/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nhinh.listerners;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author PC
 */
public class PageListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String filename = "page.txt";
        Map<String, String> indexPage = new HashMap<>();
        String path = sce.getServletContext().getRealPath("/");
        File f = new File(path + "WEB-INF\\" + filename);
        FileReader fr;
        try {
            fr = new FileReader(f);
            BufferedReader br = new BufferedReader(fr);
            String line = "";
            StringTokenizer stk = null;
            while ((line = br.readLine()) != null) {
                stk = new StringTokenizer(line, "=");
                String key = stk.nextToken();
                String value = stk.nextToken();
                indexPage.put(key.trim(), value.trim());
            }
            sce.getServletContext().setAttribute("PAGE", indexPage);
        
        } catch (IOException ex) {
            
        } 
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
}
