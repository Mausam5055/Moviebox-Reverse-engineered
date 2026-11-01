package nq;

import android.os.Build;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes6.dex */
public class b extends n00.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Cipher f70537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Cipher f70538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Key f70539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Key f70540d;

    private void g() throws Exception {
        try {
            i();
            if (this.f70537a == null) {
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(2, this.f70539c);
                this.f70537a = cipher;
            }
        } catch (NoClassDefFoundError unused) {
            throw new Exception("NoClassDefFound...");
        }
    }

    private void h() throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, KeyStoreException, CertificateException {
        i();
        if (this.f70538b == null) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, this.f70540d);
            this.f70538b = cipher;
        }
    }

    private void i() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (this.f70539c == null || this.f70540d == null) {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (Build.VERSION.SDK_INT >= 28) {
                this.f70539c = keyStore.getKey("crypto", null);
                this.f70540d = keyStore.getCertificate("crypto").getPublicKey();
            } else {
                KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) keyStore.getEntry("crypto", null);
                this.f70539c = privateKeyEntry.getPrivateKey();
                this.f70540d = privateKeyEntry.getCertificate().getPublicKey();
            }
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        g();
        return this.f70537a.doFinal(bArr);
    }

    public byte[] e(String str) {
        return f(str.getBytes(StandardCharsets.UTF_8));
    }

    public byte[] f(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, IOException, InvalidKeyException, KeyStoreException, CertificateException {
        h();
        return this.f70538b.doFinal(bArr);
    }
}
