package de.starwit;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;

public class Client {
    
    public static void main(String[] args) throws Exception {
        Socket socket = new Socket("localhost", 2066);
        OutputStream output = socket.getOutputStream();
        InputStream input = socket.getInputStream();
        BufferedReader reader = new BufferedReader(new InputStreamReader(input));

        PrintWriter writer = new PrintWriter(output, true);
        writer.println("\\d");
        String line = reader.readLine();
        System.out.println(line);
        
        input.close();
        reader.close();
        socket.close();

    }
}
