package fj;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String s11, SSLSession sslSession) {
        Intrinsics.h(s11, "s");
        Intrinsics.h(sslSession, "sslSession");
        return true;
    }
}
