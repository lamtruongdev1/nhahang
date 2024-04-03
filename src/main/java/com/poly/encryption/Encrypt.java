package com.poly.encryption;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;
public class Encrypt {
	 final String SECRET_KEY = "YourSecretKey123";
	 final String ALGORITHM = "AES";
	 
	 public String encrypt(String data) throws Exception {
	        SecretKeySpec keySpec = new SecretKeySpec(SECRET_KEY.getBytes(), ALGORITHM);
	        Cipher cipher = Cipher.getInstance(ALGORITHM);
	        cipher.init(Cipher.ENCRYPT_MODE, keySpec);
	        byte[] encryptedBytes = cipher.doFinal(data.getBytes());
	        return Base64.getEncoder().encodeToString(encryptedBytes);
	 }
}
