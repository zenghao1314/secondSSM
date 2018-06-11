package com.jsx.common;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/**
 * created by XX_zh
 * date 2018/6/11 14:36
 * XX_zh Produced, must be fine
 */
public class ImageCode {
    private final static Log log = LogFactory.getLog(ImageCode.class);
    public static String IMAGE_CODE = "image_code";
    public static String[] characterLibrary = { "2", "3", "4", "5", "6", "7", "9", "A", "C", "D", "E", "F", "G",
            "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
    public static String[] lowcharacters = { "a", "b", "c", "d", "e", "f", "g", "h", "j", "k", "m", "n", "p", "q", "r",
            "s", "t", "u", "v", "w", "x", "y", "z" };
    public static String[] adds = { "!", "@", "#", "$", "%", "^", "&", "*", "(", ")" };
    public static Color[] randomColors = { Color.red, Color.green, Color.blue };

    // 给定范围获得随机颜色

    public static Color getRandColor(int fc, int bc) {
        Random random = new Random();
        if (fc > 255)
            fc = 255;
        if (bc > 255)
            bc = 255;
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);
        return new Color(r, g, b);
    }

    public static void writeImageCode(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("image/jpeg");
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        // 在内存中创建图象
        int width = 60, height = 20;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        // 获取图形上下文
        Graphics2D g = image.createGraphics();
        // 生成随机类
        Random random = new Random();
        // 设定背景色
        // g.setColor(getRandColor(200, 250));
        g.setColor(Color.WHITE);

        g.fillRect(0, 0, width, height);
        // 设定字体

        // g.setFont(new Font("宋体", random.nextInt(3), 18));
        int fontInt = random.nextInt(3);
        g.setFont(new Font("宋体", Font.BOLD, 18));
        // 随机产生155条干扰线，
        g.setColor(getRandColor(160, 200));
        // for (int i = 0; i < 155; i++) {
        // int x = random.nextInt(width);
        // int y = random.nextInt(height);
        // int xl = random.nextInt(12);
        // int yl = random.nextInt(12);
        // g.drawLine(x, y, x + xl, y + yl);
        // }
        double[] rotates = new double[] { -0.1, 0.1, 0.1, 0 };
        String randCode = "";
        // 取随机产生的认证码(4位数字)
        for (int i = 0; i < 4; i++) {
            // String rand = String.valueOf(random.nextInt(61));
            int randint = random.nextInt(characterLibrary.length);
            String rand = characterLibrary[randint];
            randCode += rand;
            // 将认证码显示到图象中
            g.setColor(getRandColor(0, 40));
            // 调用函数出来的颜色相同 ， 可能是因为种子太接近 ， 所以只能直接生成
            // g.rotate(rotates[i], 13 * i + 6, 15);
            g.drawString(rand, 13 * i + 6, 16);
        }
        // 图象生效
        // g.setColor(randomColors[random.nextInt(randomColors.length)]);
        // g.drawLine(0, random.nextInt(height), width / 2, random.nextInt(height));
        g.setColor(randomColors[random.nextInt(randomColors.length)]);
        g.drawLine(random.nextInt(width), height / 2, random.nextInt(width), height);
        g.dispose();

        // 图像code写入session
        request.getSession(true).setAttribute(IMAGE_CODE, randCode);

        // 输出图象到页面
        OutputStream outputStream = null;
        try {
            outputStream = response.getOutputStream();
            ImageIO.write(image, "JPEG", outputStream);
            outputStream.flush();
            outputStream.close();
            outputStream = null;
        } catch (IOException e) {
            log.info(e.getMessage());
        } finally {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException ex) {
                }
            }
        }
    }

    public static boolean validateCode(String validateCode, HttpSession session) {
        validateCode = validateCode.toLowerCase();
        String randCode = (String) session.getAttribute(IMAGE_CODE);
        if (randCode == null) {
            return false;
        }
        randCode = randCode.toLowerCase();
//		session.removeAttribute(IMAGE_CODE);
        return (randCode != null && randCode.equals(validateCode)) ? true : false;
        // return true;
    }




}
