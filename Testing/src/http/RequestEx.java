package http;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class RequestEx {
	
	private static final String GET_URL = "http://localhost:9090/SpringMVCExample";
	
	public static void main(String[] args) throws IOException{
		sendGET();
		System.out.println("GET DONE");

	}
	
	private static void sendGET() throws IOException {
		URL obj = new URL(GET_URL);
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		con.setRequestMethod("GET");
		int responseCode = con.getResponseCode();
		System.out.println("GET Response Code :: " + responseCode);			
	}

}
