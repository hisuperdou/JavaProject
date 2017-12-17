package com.dou.cakeonline.uill;


import java.math.BigInteger;
/**
 * 
 * Description:  <br /> 
 * Project: abc <br />
 * ClassName: EncryptUtil <br />
 * @author wangwei
 * @version 1.0 2014年3月31日上午10:24:48
 *
 */
public class EncryptUtil {

	private static final int RADIX = 16;
	private static final String SEED = "0988910847463823232312323";
	/**
	 * 
	 * @desc 对取回密码时间进行加密
	 * @author wangwei
	 * @createDate 2013-5-6
	 * @param getPasswordTime
	 * @return
	 */
	public static final String encrypt(String getPasswordTime) {
		if (getPasswordTime == null)
			return "";
		if (getPasswordTime.length() == 0)
			return "";

		BigInteger bi_passwd = new BigInteger(getPasswordTime.getBytes());
		BigInteger bi_r0 = new BigInteger(SEED);
		BigInteger bi_r1 = bi_r0.xor(bi_passwd);
		return bi_r1.toString(RADIX);
	}

	/**
	 * 
	 * @desc 对取回密码时间解密
	 * @author wangwei
	 * @createDate 2013-5-6
	 * @param encrypted
	 * @return
	 */
	public static final String decrypt(String encrypted) {
		if (encrypted == null)
			return "";
		if (encrypted.length() == 0)
			return "";

		BigInteger bi_confuse = new BigInteger(SEED);
		try {
			BigInteger bi_r1 = new BigInteger(encrypted, RADIX);
			BigInteger bi_r0 = bi_r1.xor(bi_confuse);
			return new String(bi_r0.toByteArray());
		} catch (Exception e) {
			return "";
		}
	}
	/**
	 * 
	 * @desc 对密码进行md5加密
	 * @author wangwei
	 * @createDate 2013-5-6
	 * @param source
	 * @return
	 */
	public static String getMD5(byte[] source) {
		String s = null;
		char hexDigits[] = {
		'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
		try {
			java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
			md.update(source);
			byte tmp[] = md.digest();
			char str[] = new char[16 * 2];
			int k = 0; 
			for (int i = 0; i < 16; i++) {
				byte byte0 = tmp[i]; 
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			s = new String(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
}

