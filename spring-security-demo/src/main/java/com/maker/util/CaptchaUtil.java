package com.maker.util;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
/**
 * 绘制验证码图片，并通过response直接将图片返回
 * */
public class CaptchaUtil {              // 验证码工具类
    private static final String[] CANDIDATE_DATA = {
            "A", "B", "C", "D", "E", "F", "G", "H", "J", "K",
            "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X",
            "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
            "k", "m", "n", "p", "s", "t", "u", "v", "w", "x", "y", "z",
            "1", "2", "3", "4", "5", "6", "7", "8", "9" };  // 候选数据
    public static final String CAPTCHA_NAME = "jay-captcha"; // 验证码名称
    private static final int WIDTH = 80;            // 生成图片宽度
    private static final int HEIGHT = 25;           // 生成图片高度
    private static final int LENGTH = 4;            // 验证码长度
    public static void outputCaptcha() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes()).getRequest();  // 获取request对象
        HttpServletResponse response = ((ServletRequestAttributes) RequestContextHolder
                .getRequestAttributes()).getResponse(); // 获取response对象
        HttpSession session = request.getSession();     // 获取session对象
        response.setHeader("Pragma", "No-cache");       // 设置页面不缓存
        response.setHeader("Cache-Control", "no-cache");    // 设置页面不缓存
        response.setDateHeader("Expires", 0);       // 缓存失效时间
        response.setContentType("image/png");       // 图像显式
        BufferedImage image = new BufferedImage(WIDTH, HEIGHT,
                BufferedImage.TYPE_INT_RGB);            // 内存中创建图象
        Graphics g = image.getGraphics();           // 获取图形上下文对象
        Random random = new Random();           // 实例化随机数类
        g.setColor(getRandColor(200, 250));         // 设定背景色
        g.fillRect(0, 0, WIDTH, HEIGHT);            // 绘制矩形
        g.setFont(new Font("宋体", Font.PLAIN, 18));      // 设定字体
        g.setColor(getRandColor(160, 200));         // 获取新的颜色
        for (int i = 0; i < 155; i++) {          // 产生干扰线
            int x = random.nextInt(WIDTH);
            int y = random.nextInt(HEIGHT);
            int xl = random.nextInt(12);
            int yl = random.nextInt(12);
            g.drawLine(x, y, x + xl, y + yl);       // 绘制长线
        }
        StringBuffer sRand = new StringBuffer();        // 保存生成的随机数
        String str [] = captchaData();          // 获取验证码候选数据
        for (int i = 0; i < LENGTH; i++) {           // 生成4位随机数
            String rand = str[random.nextInt(str.length)];  // 获取随机数
            sRand.append(rand);                 // 随机数保存
            g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110),
                    20 + random.nextInt(110)));         // 验证码显式
            g.drawString(rand, 16 * i + 6, 19);         // 图形绘制
        }
        session.setAttribute(CAPTCHA_NAME, sRand.toString());// 验证码存储
        g.dispose();                    // 图象生效
        try {
            ImageIO.write(image, "JPEG", response.getOutputStream());// 输出图象到页面
        } catch (IOException e) {}
    }
    private static String[] captchaData() {         // 验证码候选数据
        return CANDIDATE_DATA;
    }
    private static Color getRandColor(int fc, int bc) {     // 获取随机颜色
        Random random = new Random();
        if (fc > 255) {                  // 设置颜色边界
            fc = 255;
        }
        if (bc > 255) {                  // 设置颜色边界
            bc = 255;
        }
        int r = fc + random.nextInt(bc - fc);       // 随机生成红色数值
        int g = fc + random.nextInt(bc - fc);       // 随机生成绿色数值
        int b = fc + random.nextInt(bc - fc);       // 随机生成蓝色数值
        return new Color(r, g, b);              // 随机返回颜色对象
    }
}