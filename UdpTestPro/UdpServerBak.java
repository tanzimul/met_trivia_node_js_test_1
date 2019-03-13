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
        
        try {
          byte[] buf = new byte[256];
          
                    // receive request
          DatagramPacket packet = new DatagramPacket(buf, buf.length);
          socket.receive(packet);
          Connection conn = null;
                    //private static final String myDriver = "com.mysql.cj.jdbc.Driver";
          try
          {
                      // create our mysql database connection
           conn = DriverManager.getConnection("jdbc:mysql://localhost/trivia_app?"+"user=root&password=MightyEgg2019@#");
                     // String myDriver = "org.gjt.mm.mysql.Driver";
                      //String myDriver = "com.mysql.cj.jdbc.Driver";
		      //Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                      //String myUrl = "jdbc:mysql://localhost:3306/trivia_app?autoReconnect=true";
                      //Class.forName(myDriver);
		      //Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
                      //Connection conn = DriverManager.getConnection(myUrl, "root", "MightyEgg2019@#");
           


           System.out.println("SQLException: " + ex.getMessage());
           System.out.println("SQLState: " + ex.getSQLState());
           System.out.println("VendorError: " + ex.getErrorCode())
                      // our SQL SELECT query. 
                      // if you only need a few columns, specify them by name instead of using "*"
           String query = "SELECT question.question_id FROM question INNER JOIN question_list_pivot ON question.question_id = question_list_pivot.question_id WHERE question_list_pivot.status = 1 AND question_list_pivot.is_active = 0 ";

                      // create the java statement
           Statement st = conn.createStatement();
           
                      // execute the query, and get a java resultset
           ResultSet rs = st.executeQuery(query);
           
                      // iterate through the java resultset
           while (rs.next())
           {
            int id = rs.getInt("question_id");
//                        String firstName = rs.getString("first_name");
//                        String lastName = rs.getString("last_name");
//                        Date dateCreated = rs.getDate("date_created");
//                        boolean isAdmin = rs.getBoolean("is_admin");
//                        int numPoints = rs.getInt("num_points");
            
                        // print the results
//                        System.out.format("%s, %s, %s, %s, %s, %s\n", id, firstName, lastName, dateCreated, isAdmin, numPoints);
            System.out.format("%s\n", id);
          }
          st.close();
        }
        catch (Exception e)
        {
          System.err.println("Got an exception! ");
          System.err.println(e.getMessage());
        }
        
        
        
        
        String dString = new Date().toString();
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
