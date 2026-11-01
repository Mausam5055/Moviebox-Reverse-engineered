package n00;

import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes7.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f70081a = new b();

    class a implements X509TrustManager {
        a() {
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

    static class b implements HostnameVerifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private HostnameVerifier f70082a = HttpsURLConnection.getDefaultHostnameVerifier();

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return this.f70082a.verify(str, sSLSession);
        }
    }

    public static SSLContext a() {
        SSLContext sSLContext = null;
        try {
            SSLContext sSLContext2 = SSLContext.getInstance("TLS");
            try {
                sSLContext2.init(null, new TrustManager[]{new a()}, new SecureRandom());
                return sSLContext2;
            } catch (Exception unused) {
                sSLContext = sSLContext2;
                return sSLContext;
            }
        } catch (Exception unused2) {
        }
    }
}
