package sk;

import android.content.Context;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes6.dex */
public class d extends rk.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Cipher f75382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Cipher f75383b;

    public d(Context context) {
        e.b().a(context);
    }

    private void f() throws Exception {
        if (h() == null) {
            throw new Exception("key not created, please try later");
        }
        if (this.f75382a == null) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, h());
            this.f75382a = cipher;
        }
    }

    private void g() throws Exception {
        if (i() == null) {
            throw new Exception("key not created, please try later");
        }
        if (this.f75383b == null) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, i());
            this.f75383b = cipher;
        }
    }

    private static PrivateKey h() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return (PrivateKey) keyStore.getKey("crypto", null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static PublicKey i() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return keyStore.getCertificate("crypto").getPublicKey();
        } catch (Exception unused) {
            return null;
        }
    }

    public byte[] d(byte[] bArr) throws Exception {
        f();
        return this.f75382a.doFinal(bArr);
    }

    public byte[] e(byte[] bArr) throws Exception {
        g();
        return this.f75383b.doFinal(bArr);
    }
}
