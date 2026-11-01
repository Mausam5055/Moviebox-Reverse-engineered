package n00;

import java.security.NoSuchAlgorithmException;
import javax.crypto.KeyGenerator;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {
    public static String a() throws NoSuchAlgorithmException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        keyGenerator.init(128);
        byte[] encoded = keyGenerator.generateKey().getEncoded();
        if (encoded == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : encoded) {
            String hexString = Integer.toHexString(b11 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }
}
