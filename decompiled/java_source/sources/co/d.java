package co;

import androidx.media3.datasource.HttpDataSource;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f17547a = new d();

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f17548a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Lazy f17549b = LazyKt.b(new Function0() { // from class: co.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.a.e();
            }
        });

        /* JADX INFO: renamed from: co.d$a$a, reason: collision with other inner class name */
        public static final class C0170a implements X509TrustManager {
            C0170a() {
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

        private a() {
        }

        private final OkHttpClient c() throws NoSuchAlgorithmException, KeyManagementException {
            C0170a c0170a = new C0170a();
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new C0170a[]{c0170a}, new SecureRandom());
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            Intrinsics.g(socketFactory, "getSocketFactory(...)");
            return builder.sslSocketFactory(socketFactory, c0170a).hostnameVerifier(new HostnameVerifier() { // from class: co.c
                @Override // javax.net.ssl.HostnameVerifier
                public final boolean verify(String str, SSLSession sSLSession) {
                    return d.a.d(str, sSLSession);
                }
            }).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean d(String str, SSLSession sSLSession) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final OkHttpClient e() {
            return f17548a.c();
        }

        public final OkHttpClient f() {
            return (OkHttpClient) f17549b.getValue();
        }
    }

    private d() {
    }

    public final HttpDataSource.a a(boolean z10, Map map) {
        HttpDataSource.a bVar = z10 ? new x1.a.b(a.f17548a.f()) : new androidx.media3.datasource.c.b();
        if (map != null) {
            if (map.isEmpty()) {
                map = null;
            }
            if (map != null) {
                bVar.a(map);
            }
        }
        return bVar;
    }
}
