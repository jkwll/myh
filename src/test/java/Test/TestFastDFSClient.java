package Test;

import java.io.File;

import org.junit.Test;

import top.wull.blog.util.FastDFSClient;

public class TestFastDFSClient {
	@Test
	public void fun1() throws Exception{
		File file = new File("D://11156.jpg");
		String[] strs = FastDFSClient.UploadFileByFastDFS(file);
		for (String string : strs) {
			System.out.println("string "+string);
		}
	}
}
