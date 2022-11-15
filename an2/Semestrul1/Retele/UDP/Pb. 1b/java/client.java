/*
Enunt: Clientul trimite serverului un numar. Serverul il primeste, il afiseaza pe ecran si trimite clientului dublul numarului.

Compilare:
	javac client.java
	javac server.java
	
Rulare:
	java client
	java server	
*/
import java.io.*;
import java.net.*;

class client
{
   public static void main(String args[]) throws Exception
   {
      BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));
      DatagramSocket clientSocket = new DatagramSocket();
      InetAddress IPAddress = InetAddress.getByName("localhost");
      byte[] sendData = new byte[1024];
      byte[] receiveData = new byte[1024];
	  
	  System.out.println("Dati un numar:");
      String numar = inFromUser.readLine().trim();
      sendData = numar.getBytes();
	  System.out.println("Am trimis: " + numar);
	  
      DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, 1234);
      clientSocket.send(sendPacket);
	  
      DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
      clientSocket.receive(receivePacket);
	  
      String rez = new String(receivePacket.getData());
      System.out.println("FROM SERVER:" + rez);
     
	  clientSocket.close();
   }
}