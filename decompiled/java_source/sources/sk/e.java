package sk;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.util.GregorianCalendar;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes6.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f75384a;

    private e() {
    }

    public static synchronized e b() {
        try {
            if (f75384a == null) {
                f75384a = new e();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f75384a;
    }

    private boolean c() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            return (((PrivateKey) keyStore.getKey("crypto", null)) == null || keyStore.getCertificate("crypto").getPublicKey() == null) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean a(Context context) {
        if (c()) {
            return true;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar2.add(1, 100);
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
            KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder("crypto", 3);
            builder.setCertificateSubject(new X500Principal("CN=crypto")).setEncryptionPaddings("PKCS1Padding").setCertificateSerialNumber(BigInteger.valueOf(1337L)).setCertificateNotBefore(gregorianCalendar.getTime()).setCertificateNotAfter(gregorianCalendar2.getTime());
            keyPairGenerator.initialize(builder.build());
            keyPairGenerator.generateKeyPair();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
