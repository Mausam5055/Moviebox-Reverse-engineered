package com.transsion.athena.ehanat;

import android.annotation.TargetApi;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(17)
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static aethna f42705a = new aethna();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static class aethna implements HostnameVerifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private HostnameVerifier f42706a = HttpsURLConnection.getDefaultHostnameVerifier();

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return this.f42706a.verify(str, sSLSession);
        }
    }

    /* JADX INFO: renamed from: com.transsion.athena.ehanat.athena$athena, reason: collision with other inner class name */
    class C0606athena implements X509TrustManager {
        C0606athena() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public static SSLContext a() {
        SSLContext sSLContext = null;
        try {
            SSLContext sSLContext2 = SSLContext.getInstance("TLS");
            try {
                sSLContext2.init(null, new TrustManager[]{new C0606athena()}, new SecureRandom());
                return sSLContext2;
            } catch (Exception unused) {
                sSLContext = sSLContext2;
                return sSLContext;
            }
        } catch (Exception unused2) {
        }
    }
}
