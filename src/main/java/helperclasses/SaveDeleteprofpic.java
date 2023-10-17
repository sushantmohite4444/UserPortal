package helperclasses;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class SaveDeleteprofpic {
	
	public static boolean delete(String path) {
		boolean b = false;
		
		
		try {
			File f =new File(path);
			b =f.delete();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return b;
		
	}
	
	
	public static boolean save(InputStream is ,String path) {
		
		boolean o=false;
		try {
			byte b[]=new byte[is.available()];
			
			is.read(b);
			
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(b);
			fos.flush();
			fos.close();
			
			o=true;
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return o;
		
	}

}
