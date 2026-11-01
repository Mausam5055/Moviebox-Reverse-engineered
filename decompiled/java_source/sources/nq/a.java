package nq;

import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes6.dex */
public class a extends n00.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Cipher f70535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f70536b;

    public a(String str) {
        this.f70536b = b(str);
    }

    private void f() throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (this.f70535a == null) {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(this.f70536b));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, publicKeyGeneratePublic);
            this.f70535a = cipher;
        }
    }

    public byte[] d(String str) {
        return e(str.getBytes(Charset.forName("UTF-8")));
    }

    public byte[] e(byte[] bArr) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        f();
        return this.f70535a.doFinal(bArr);
    }
}
