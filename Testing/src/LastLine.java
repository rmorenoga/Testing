import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;



public class LastLine {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String lastline = new String();
		lastline = tail("TestSeq.txt");
		//System.out.println(lastline);
		
		if(lastline == null) {
			System.out.println("Generación 0");
		} else {
			System.out.println(lastline);
		}
		

	}
	
	public static String tail( String string ) {
	    RandomAccessFile fileHandler = null;
	    try {
	        fileHandler = new RandomAccessFile( string, "r" );
	        long fileLength = fileHandler.length() - 1;
	        StringBuilder sb = new StringBuilder();
	        //System.out.println(fileLength);

	        for(long filePointer = fileLength; filePointer != -1; filePointer--){
	            fileHandler.seek( filePointer );
	            int readByte = fileHandler.readByte();

	            if( readByte == 0xA ) {
	                if( filePointer == fileLength ) {
	                    continue;
	                }
	                break;

	            } else if( readByte == 0xD ) {
	                if( filePointer == fileLength - 1 ) {
	                    continue;
	                }
	                break;
	            }

	            sb.append( ( char ) readByte );
	            
	        }
	        
	        if (fileLength  <= 0){
	        	return null;
	        }else{
	        	 String lastLine = sb.reverse().toString();
	        	 String number = lastLine.substring(0, lastLine.indexOf(" "));
	        	 System.out.println(Integer.parseInt(number));
	 	        return number;
	        }
	       
	    } catch( java.io.FileNotFoundException e ) {
	        e.printStackTrace();
	        return null;
	    } catch( java.io.IOException e ) {
	        e.printStackTrace();
	        return null;
	    } finally {
	        if (fileHandler != null )
	            try {
	                fileHandler.close();
	            } catch (IOException e) {
	                /* ignore */
	            }
	    }
	}

}
