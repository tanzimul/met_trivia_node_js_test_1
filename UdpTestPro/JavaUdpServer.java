import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Date;
import java.sql.*;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;

public class JavaUdpServer {

	static UdpServerThread udpServerThread;

  public static void main(String[] args) throws IOException {
    System.out.println("Server start");
    System.out.println("Runtime Java: " 
      + System.getProperty("java.runtime.version"));

    new UdpServerThread().start();
  }

  private static class UdpServerThread extends Thread{
    final int serverport = 4445;
    protected DatagramSocket socket = null;
    public UdpServerThread() throws IOException {
      this("UdpServerThread");
    }
    public UdpServerThread(String name) throws IOException {
      super(name);
      socket = new DatagramSocket(serverport);
      System.out.println("JavaUdpServer run on: " + serverport);
    }

    @Override
    public void run() {
      while(true){
        String dString = "0";
        try {
          byte[] buf = new byte[256];
		    //String dString;
                    // receive request
          DatagramPacket packet = new DatagramPacket(buf, buf.length);
          socket.receive(packet);
          try
          {
           System.out.println("step 1");
                      // create our mysql database connection
           Class.forName("com.mysql.jdbc.Driver");  
           Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/trivia_app","root","MightyEgg2019@#");
           System.out.println("Connection: "+ conn);
                      // our SQL SELECT query. 
                      // if you only need a few columns, specify them by name instead of using "*"
           String query = "SELECT question_list_pivot.question_id FROM question_list_pivot WHERE question_list_pivot.status = 1 AND question_list_pivot.is_active = 0";
//String query = "SELECT question.question_id FROM question INNER JOIN question_list_pivot ON question.question_id = question_list_pivot.question_id WHERE question_list_pivot.status = 1 AND question_list_pivot.is_active = 0 ";

                      // create the java statement
           Statement st = conn.createStatement();
           
                      // execute the query, and get a java resultset
           ResultSet rs = st.executeQuery(query);
           
                      // iterate through the java resultset
           while (rs.next())
           {
            int id = rs.getInt("question_id");
                        // print the results
                        //System.out.format("%s\n", id);
			//String dString = "0";
            
            int num = 0;
                        //String dString;


            if(id>0){
              dString = Integer.toString(id);
            }
            
            else{
			//	int num = 0;
              dString =Integer.toString(num) ;
            }


			//String dString = Integer.toString(id);
			//if(dString>0){}

			//System.out.println(id);
			//String dString = Integer.toString(id);
			//String s = "{\"balance\": 1000.21, \"num\":100, \"is_vip\":true, \"name\":\"foo\"}";
			//String dString = s.toString();
			//buf = dString.getBytes();
	              	// send the response to the client at "address" and "port"
              		//InetAddress address = packet.getAddress();
          	        //int port = packet.getPort();
	                //System.out.println("Request from: " + address + ":" + port);
	               // packet = new DatagramPacket(buf, buf.length, address, port);
              		//socket.send(packet);
          }
          st.close();
        }
        catch (Exception e)
        {
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
		    //String s = "{\"balance\": 1000.21, \"num\":100, \"is_vip\":true, \"name\":\"foo\"}";
                   //String dString = s.toString();
        buf = dString.getBytes();
        
                   // send the response to the client at "address" and "port"
        InetAddress address = packet.getAddress();
        int port = packet.getPort();
        System.out.println("Request from: " + address + ":" + port);
        packet = new DatagramPacket(buf, buf.length, address, port);
        socket.send(packet);
        
      } catch (IOException ex) {
        System.out.println(ex.toString());
      }
      
    }
    
  }
  
}

}
