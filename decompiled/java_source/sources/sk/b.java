package sk;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes6.dex */
public class b extends rk.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Cipher f75376a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Cipher f75377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SecretKeySpec f75378c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f75379d;

    private void g() throws Exception {
        if (this.f75378c == null || this.f75379d == null) {
            throw new Exception("please call encrypt method first");
        }
        if (this.f75376a == null) {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(this.f75379d);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, this.f75378c, ivParameterSpec);
            this.f75376a = cipher;
        }
    }

    private void h() throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (this.f75377b == null) {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(256);
            SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeyGenerateKey);
            this.f75378c = new SecretKeySpec(secretKeyGenerateKey.getEncoded(), "AES");
            this.f75379d = cipher.getIV();
            this.f75377b = cipher;
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        g();
        return this.f75376a.doFinal(bArr);
    }

    public byte[] e(String str) {
        return f(str.getBytes("UTF-8"));
    }

    public byte[] f(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        h();
        return this.f75377b.doFinal(bArr);
    }

    public byte[] i() throws Exception {
        SecretKeySpec secretKeySpec;
        if (this.f75379d == null || (secretKeySpec = this.f75378c) == null || secretKeySpec.getEncoded() == null) {
            throw new Exception("no valid key info");
        }
        byte[] encoded = this.f75378c.getEncoded();
        byte[] bArr = this.f75379d;
        if (encoded.length != 32 || bArr.length != 16) {
            throw new Exception("key length is not valid");
        }
        byte[] bArr2 = new byte[48];
        System.arraycopy(encoded, 0, bArr2, 0, 32);
        System.arraycopy(bArr, 0, bArr2, 32, 16);
        return bArr2;
    }
}
