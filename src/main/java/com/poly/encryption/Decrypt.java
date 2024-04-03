package com.poly.encryption;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;
public class Decrypt {
	 final String SECRET_KEY = "YourSecretKey123"; 
	 final String ALGORITHM = "AES";
	 public String decrypt(String encryptedData) throws Exception {
	        SecretKeySpec keySpec = new SecretKeySpec(SECRET_KEY.getBytes(), ALGORITHM);
	        Cipher cipher = Cipher.getInstance(ALGORITHM);
	        cipher.init(Cipher.DECRYPT_MODE, keySpec);
	        byte[] decryptedBytes = cipher.doFinal(Base64.getDecoder().decode(encryptedData));
	        return new String(decryptedBytes);
	}
}
