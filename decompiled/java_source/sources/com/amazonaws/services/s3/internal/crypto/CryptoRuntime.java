package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.security.Provider;
import java.security.Security;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class CryptoRuntime {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Log f18678a = LogFactory.b(CryptoRuntime.class);

    private static final class AesGcm {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(Provider provider) {
            try {
                Cipher.getInstance(ContentCryptoScheme.f18676b.b(), provider);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    public static synchronized void a() {
        if (c()) {
            return;
        }
        try {
            Security.addProvider((Provider) Class.forName("org.bouncycastle.jce.provider.BouncyCastleProvider").newInstance());
        } catch (Exception e11) {
            f18678a.g("Bouncy Castle not available", e11);
        }
    }

    public static boolean b(Provider provider) {
        if (provider == null) {
            provider = Security.getProvider("BC");
        }
        return AesGcm.b(provider);
    }

    public static synchronized boolean c() {
        return Security.getProvider("BC") != null;
    }
}
