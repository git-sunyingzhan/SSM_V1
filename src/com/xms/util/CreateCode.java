package com.xms.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CreateCode extends HttpServlet {
	@Override
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//设置返回的响应内容格式为图片格式
		res.setContentType("image/jpeg");
		
		//生成图片区域
		BufferedImage bi = new BufferedImage(80,40,BufferedImage.TYPE_INT_RGB);
		//画笔
		Graphics g = bi.getGraphics();
		//沾色
		g.setColor(randomColor());
		//填充背景颜色
		g.fillRect(0, 0, 80, 40);
		//换验证码的颜色
		g.setColor(randomColor());
		g.setFont(new Font(null,Font.BOLD,25));
		
		//生成随机验证码
		String num = getCode(4);
		
		g.drawString(num, 10, 25);
		
		//通过res获取图片输出流
		OutputStream os = res.getOutputStream();
		
		//将图片内容放入到os中:将bi的内容写入到os中后缀是.jpeg
		ImageIO.write(bi, "jpeg", os);
		
		//将验证码保存到session会话中
		req.getSession().setAttribute("checkCode", num);
	}
	
	public String getCode(int length) {
    	Random r = new Random();
		String pool = "23456789QWERTYUIOPSADFGHJKLZXCVBNM";
		String str = "";
		for (int i = 0; i < length; i++) {
			int idx = r.nextInt(pool.length());
			str += pool.charAt(idx);
		}
		return str;
	}
	
	public Color randomColor() {
		int i = 256;
		return new Color(randomInt(i),randomInt(i),randomInt(i));
	}
	
	public int randomInt(int i) {
		return new Random().nextInt(i);
	}
}
