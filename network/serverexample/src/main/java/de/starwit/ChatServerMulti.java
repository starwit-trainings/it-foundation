package de.starwit;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ChatServerMulti {

    private Logger log = LogManager.getLogger(ChatServerMulti.class.getName());

    private ServerSocket serverSocket;

    private int serverPort = 2066;

    public void start() {
        try {
            serverSocket = new ServerSocket(serverPort);
            while (true) {
                new ChatClientHandler(serverSocket.accept()).start();
            }
        } catch (IOException e) {
            log.error("Can't open socket " + e.getMessage());
        }
    }

    public void stop() {
        try {
            serverSocket.close();
        } catch (IOException e) {
            log.error("Can't close socket " + e.getMessage());
        }
    }

    private static class ChatClientHandler extends Thread {
        private Logger log = LogManager.getLogger(ChatClientHandler.class.getName());
        private Socket clientSocket;
        private PrintWriter out;
        private BufferedReader in;
        private ServerFunctions sf;

        public ChatClientHandler(Socket socket) {
            this.clientSocket = socket;
            sf = new ServerFunctions();
        }

        public void run() {
            try {
                out = new PrintWriter(clientSocket.getOutputStream(), true);
                in = new BufferedReader(
                        new InputStreamReader(clientSocket.getInputStream()));

                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    if ("\\q".equals(inputLine)) {
                        out.println("bye");
                        break;
                    } else {
                        String answer = sf.parseInput(inputLine);
                        out.println(answer);
                    }
                }
                in.close();
                out.close();
                clientSocket.close();
            } catch (IOException e) {
                log.error("Exception while opening/closing socket listener " + e.getMessage());
            }
        }
    }
}
