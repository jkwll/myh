package top.wull.blog.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.csource.fastdfs.ClientGlobal;
import org.csource.fastdfs.StorageClient;
import org.csource.fastdfs.StorageServer;
import org.csource.fastdfs.TrackerClient;
import org.csource.fastdfs.TrackerServer;
import org.junit.Test;

public class FastDFSClient {
	/**
	 * 将传入的文件通过dfs上传到服务器
	 * @param file
	 * @return
	 * @throws Exception
	 */
	 public static String[] UploadFileByFastDFS(File file) throws Exception{  
//	      1、把FastDFS提供的jar包添加到工程中       
//	      2、初始化全局配置。加载一个配置文件。  
	        ClientGlobal.init("fdfs_client.conf");  
//	      3、创建一个TrackerClient对象。  
	        TrackerClient trackerClient =new TrackerClient();  
//	      4、创建一个TrackerServer对象。  
	        TrackerServer trackerServer=trackerClient.getConnection();  
//	      5、声明一个StorageServer对象，null。  
	        StorageServer storageServer=null;  
//	      6、获得StorageClient对象。  
	        StorageClient storageClient=new StorageClient(trackerServer,storageServer);  
//	      7、直接调用StorageClient对象方法上传文件即可。  
/*	        File file = new File("D://TIM图片1.jpg");
*/	        String filename = file.getName();
	        String prefix=filename.substring(filename.lastIndexOf(".")+1);
	        String[] strings=  storageClient.upload_file(File2byte(file), prefix, null);  
	       // String returnstr="";
/*	        for(String string:strings)  
	        {  
	        	// group1
	        	// M00/00/00/wKiRhlrc2rWAKDQ9AAAANxIGZP8172.txt
	            System.out.println(string);  
	        }  
*/	        return strings;
	  }
	 public static byte[] File2byte(File file)
	    {
	        byte[] buffer = null;
	        try
	        {
	            //File file = new File(filePath);
	            FileInputStream fis = new FileInputStream(file);
	            ByteArrayOutputStream bos = new ByteArrayOutputStream();
	            byte[] b = new byte[1024];
	            int n;
	            while ((n = fis.read(b)) != -1)
	            {
	                bos.write(b, 0, n);
	            }
	            fis.close();
	            bos.close();
	            buffer = bos.toByteArray();
	        }
	        catch (FileNotFoundException e)
	        {
	            e.printStackTrace();
	        }
	        catch (IOException e)
	        {
	            e.printStackTrace();
	        }
	        return buffer;
	    }
}
