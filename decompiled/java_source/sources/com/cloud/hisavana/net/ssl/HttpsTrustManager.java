package com.cloud.hisavana.net.ssl;

import android.annotation.SuppressLint;
import android.util.Log;
import com.cloud.sdk.commonutil.util.c;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"CustomX509TrustManager"})
public class HttpsTrustManager implements X509TrustManager {

    public static class TrustAllHostnameVerifier implements HostnameVerifier {
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public static SSLSocketFactory a() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{new HttpsTrustManager()}, new SecureRandom());
            return sSLContext.getSocketFactory();
        } catch (Exception e11) {
            c.netLog("createSSLSocketFactory: --> " + Log.getStackTraceString(e11));
            return null;
        }
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
