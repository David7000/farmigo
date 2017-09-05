package com.test.mail;

import java.net.*;
import java.io.*;

public class URLConnectionReader {

    public static void main(String[] args) throws Exception {
        URL oracle = new URL("http://www.myip.dk/");
        URLConnection yc = oracle.openConnection();

        yc.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.1; rv:49.0) Gecko/20100101 Firefox/49.0");

        BufferedReader in = new BufferedReader(new InputStreamReader(
        yc.getInputStream()));
        String inputLine;
        while ((inputLine = in.readLine()) != null) {
            System.out.println(inputLine);
        }
        in.close();
    }
}
