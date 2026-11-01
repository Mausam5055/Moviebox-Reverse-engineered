package n00;

import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Cipher f70069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Cipher f70070b;

    public d(byte[] bArr) {
        byte[] bytes = "abcdefghijk1mnop".getBytes();
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f70069a = cipher;
            cipher.init(1, secretKeySpec, new IvParameterSpec(bytes));
            SecretKeySpec secretKeySpec2 = new SecretKeySpec(bArr, "AES");
            Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS5Padding");
            this.f70070b = cipher2;
            cipher2.init(2, secretKeySpec2, new IvParameterSpec(bytes));
        } catch (Exception e11) {
            com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
        }
    }

    public byte[] a(String str) {
        Cipher cipher = this.f70069a;
        if (cipher != null) {
            try {
                return cipher.doFinal(str.getBytes("UTF-8"));
            } catch (Exception e11) {
                com.transsion.sdk.oneid.b.m(Log.getStackTraceString(e11));
            }
        }
        return null;
    }
}
