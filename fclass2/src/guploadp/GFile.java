package guploadp;


	import java.io.BufferedReader;
	import java.io.BufferedWriter;
	import java.io.File;
	import java.io.FileInputStream;
	import java.io.FileNotFoundException;
	import java.io.FileReader;
	import java.io.FileWriter;
	import java.io.IOException;
	import java.io.PrintWriter;
	import java.util.ArrayList;
	import java.util.Enumeration;
	import java.util.Objects;
	import java.util.Scanner;

	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletContext;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	import com.oreilly.servlet.MultipartRequest;
	import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

	public class GFile {
		 public String saveDirectory = "/upload";
		 public int size = 100 * 1024 * 1024;

		 // 파일에 text 쓰기
		 public String uploadFile(HttpServletRequest request) {

		  /* 초기 */
		  /* 저장위치 */
		  ServletContext context = request.getServletContext();
		  // url 주소를 받아 실제 탐색기 경로와 연결시켜주는 것 
		  saveDirectory = context.getRealPath(saveDirectory);
		  MultipartRequest mrequest = null;
		  
		  try {
		   // MultipartRequest :
		   // 이진 파일 / parameter 모두 다 처리 가능한 객체
		   mrequest = new MultipartRequest(request, saveDirectory, this.size, "utf-8",
		     new DefaultFileRenamePolicy());
		  } catch (IOException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }

		  // mrequest.getParameter("f_name") : 파일제목 
		  // mrequest.getFilesystemName("f_realname") : 실제파일이름.jpg
		  return mrequest.getParameter("f_name")+","+mrequest.getFilesystemName("f_realname");
		  
		 }

		 // 텍스트 읽기
		 // 파일에 text 쓰기
		 public void downloadFile(HttpServletRequest request, HttpServletResponse response) {

		  /* 초기 */
		  String saveDirectory = "/upload";
		  PrintWriter out = null;
		  try {
		   out = response.getWriter();
		  } catch (IOException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
		  /* 저장위치 */
		  ServletContext context = request.getServletContext();
		  saveDirectory = context.getRealPath(saveDirectory);
		  
		  response.setContentType("text/html");
		  String filename = request.getParameter("fname");
		  String filepath = saveDirectory;
		  response.setContentType("APPLICATION/OCTET-STREAM");
		  response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");  
		  
		  
		  // 2. 파일 메모리 스트림화 : 
		  FileInputStream fileInputStream = null;
		  try {
		   fileInputStream = new FileInputStream(filepath + filename);
		  } catch (FileNotFoundException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
		  int i;

		  // 3. 파일스트림 리스펀스: 
		  try {
		   while ((i = fileInputStream.read()) != -1) {
		   out.write(i);
		   }
		   // 4. 닫기 처리: 
		   fileInputStream.close();
		  } catch (IOException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  } finally {
		   out.close();}}}


