package l5;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return new BigInteger(1, messageDigest.digest()).toString(16);
        } catch (Exception e11) {
            e11.printStackTrace();
            return str;
        }
    }

    public static Boolean b(String str) {
        return str.contains("<br />") ? Boolean.TRUE : Boolean.valueOf(Pattern.compile("<(\\\"[^\\\"]*\\\"|'[^']*'|[^'\\\">])*>").matcher(str).find());
    }
}
