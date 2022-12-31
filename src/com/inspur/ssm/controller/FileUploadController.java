package com.inspur.ssm.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.inspur.ssm.util.FileUploadUtils;

@Controller
@RequestMapping(value = "/fileope")
public class FileUploadController {
  @RequestMapping(value = "upload", method = RequestMethod.POST)
	public String upload(
			HttpServletRequest request,
			@RequestParam(value = "myFile", required = false) MultipartFile[] files,
			Model mv) {
		String[] fileName = new String[files.length];
		try {
			for (int i = 0; i < files.length; i++) {
				if(files[i].getSize()>0){
					String a = FileUploadUtils.upload(request, files[i]);
					String[] arr = a.split("/");
					fileName[i] = arr[arr.length - 1];
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.addAttribute("fileNames", fileName);
		mv.addAttribute("msg", "sssss");
		return "success";
	}
  
  @RequestMapping(value = "download", method = RequestMethod.GET)
	public static void download(HttpServletRequest request,HttpServletResponse response, String fileName) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		String newFileName = new String(fileName.getBytes("ISO8859-1"), "UTF-8");
		String ctxPath = request.getSession().getServletContext().getRealPath("/")+ FileUploadUtils.defaultBaseDir;
		String downLoadPath = ctxPath + "/" + newFileName;
		long fileLength = new File(downLoadPath).length();
		response.setHeader("Content-disposition", "attachment;filename="+ new String(newFileName.getBytes("UTF-8"), "ISO8859-1"));
		response.setHeader("Content-Length", String.valueOf(fileLength));
		bis = new BufferedInputStream(new FileInputStream(downLoadPath));
		bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buff = new byte[2048];
		int bytesRead;
		while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
			bos.write(buff, 0, bytesRead);
		}
		bis.close();
		bos.close();
	}

}

