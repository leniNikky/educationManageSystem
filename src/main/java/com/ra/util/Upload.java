package com.ra.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;

public class Upload {

	public static String upload(File file, String url, String fileName) throws Exception {
		InputStream is = new FileInputStream(file);
		url = getFolder(url);
		File tofile = new File(url, fileName);
		OutputStream os = new FileOutputStream(tofile);
		byte buffer[] = new byte[1024];
		int length = 0;
		while (-1 != (length = is.read(buffer, 0, buffer.length))) {
			os.write(buffer);
		}
		os.close();
		is.close();
		return doImage(url + "/" + fileName);

	}

	public static String uploader(File file, String url, String fileName) throws Exception {
		if (!validateFileExt(fileName))
			return null;
		url = getFolder(url);
		File tofile = new File(url, fileName);
		FileUtils.copyFile(file, tofile);
		return doImage(url + "/" + fileName);
	}

	public static String getFolder(String url) {
		SimpleDateFormat formater = new SimpleDateFormat("yyyyMMdd");
		url += "/" + formater.format(new Date());
		File file = new File(url);
		if (!file.exists() && !file.isDirectory()) {
			file.mkdir();
		}
		return url;
	}

	public static String doImage(String url) {
		int index = url.lastIndexOf("res");
		if (index != -1) {
			url = url.substring(index);
			url = url.substring(0, 3) + "/" + url.substring(4);
		}
		// System.out.println(url);
		return url;
	}

	public static boolean validateFileExt(String fileName) {
		// String[] ext = { ".rar", ".zip", ".7z" };
		// String suffix =
		// fileName.substring(fileName.lastIndexOf('.')).toLowerCase();
		// return Arrays.asList(ext).contains(suffix);
		return true;
	}

}
