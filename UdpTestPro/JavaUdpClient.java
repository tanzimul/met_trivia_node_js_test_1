import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

public class JavaUdpClient {

	public static void main(String[] args) 
    throws UnknownHostException, SocketException, IOException {
        
        //Hardcode ip:port
        String ipLocalLoopback = "18.223.14.38";
        int serverport = 4445;
        
        
        System.out.println("Runtime Java: " 
            + System.getProperty("java.runtime.version"));
        System.out.println("JavaUdpClient running, connect to: " 
            + ipLocalLoopback + ":" + serverport);
        
        // get a datagram socket
        DatagramSocket socket = new DatagramSocket();
        
        // send request
        byte[] buf = new byte[256];
        InetAddress address = InetAddress.getByName(ipLocalLoopback);
        DatagramPacket packet = 
        new DatagramPacket(buf, buf.length, address, serverport);
        socket.send(packet);
        
        // get response
        packet = new DatagramPacket(buf, buf.length);
        socket.receive(packet);
        
        String received = new String(packet.getData(), 0, packet.getLength());
        System.out.println(received);
        
        socket.close();
    }

}
