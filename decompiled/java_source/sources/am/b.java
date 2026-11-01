package am;

import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static SSLSocketFactory f664a;

    class a implements X509TrustManager {
        a(b bVar) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public SSLSocketFactory a() {
        if (f664a == null) {
            synchronized (this) {
                try {
                    if (f664a == null) {
                        TrustManager[] trustManagerArr = {new a(this)};
                        try {
                            SSLContext sSLContext = SSLContext.getInstance("TLS");
                            sSLContext.init(null, trustManagerArr, null);
                            f664a = sSLContext.getSocketFactory();
                        } catch (Throwable th2) {
                            bm.a.f16624a.e("SSL", th2.getMessage());
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        return f664a;
    }
}
