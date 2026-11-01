package am;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static HostnameVerifier f663a;

    /* JADX INFO: renamed from: am.a$a, reason: collision with other inner class name */
    class C0011a implements HostnameVerifier {
        C0011a(a aVar) {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    public HostnameVerifier a() {
        if (f663a == null) {
            synchronized (this) {
                try {
                    if (f663a == null) {
                        f663a = new C0011a(this);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f663a;
    }
}
