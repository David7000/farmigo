package com.test.util;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

import java.util.logging.Level;
import java.util.logging.Logger;

public class ServerHostPort {

    public static final int PORT = 8084;

    // http://stackoverflow.com/questions/9481865/getting-the-ip-address-of-the-current-machine-using-java
    
    
    public static String getHost() {

        Enumeration e;
        try {
            e = NetworkInterface.getNetworkInterfaces();
        
        while (e.hasMoreElements()) {
            NetworkInterface n = (NetworkInterface) e.nextElement();
            Enumeration ee = n.getInetAddresses();
            while (ee.hasMoreElements()) {
                InetAddress i = (InetAddress) ee.nextElement();
                System.out.println(i.getHostAddress());
                
                if(i.getHostAddress().toString().startsWith("127.") || i.getHostAddress().toString().startsWith("192.168.") ||  i.getHostAddress().toString().startsWith("10.") || i.getHostAddress().toString().startsWith("172.16.") ||  i.getHostAddress().toString().startsWith("169.254.") || i.getHostAddress().toString().startsWith("255.255.255.255")  ) {
                    
                } else {
                    return i.getHostAddress().toString();
                }
            }
        }
        
        } catch (SocketException ex) {
            Logger.getLogger(ServerHostPort.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "wildfly-learningsap.rhcloud.com";
    }
    
    public static String getHostDomainName() {
        
       return  "localhost";
       //  return  "wildfly-learningsap.rhcloud.com";
    }

}
