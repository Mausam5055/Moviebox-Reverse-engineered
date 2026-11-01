package sk;

import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes6.dex */
public class c extends rk.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Cipher f75380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f75381b;

    public c(String str) {
        this.f75381b = b(str);
    }

    private void e() throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        if (this.f75380a == null) {
            PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(this.f75381b));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, publicKeyGeneratePublic);
            this.f75380a = cipher;
        }
    }

    private boolean f(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(this.f75381b));
        Signature signature = Signature.getInstance("MD5withRSA");
        signature.initVerify(publicKeyGeneratePublic);
        signature.update(bArr);
        return signature.verify(bArr2);
    }

    public byte[] d(byte[] bArr) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        e();
        return this.f75380a.doFinal(bArr);
    }

    public boolean g(byte[] bArr, byte[] bArr2) {
        return f(bArr, bArr2);
    }
}
