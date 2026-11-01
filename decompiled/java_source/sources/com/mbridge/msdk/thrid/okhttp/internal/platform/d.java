package com.mbridge.msdk.thrid.okhttp.internal.platform;

import com.mbridge.msdk.thrid.okhttp.u;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
final class d extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Method f38233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Method f38234d;

    d(Method method, Method method2) {
        this.f38233c = method;
        this.f38234d = method2;
    }

    public static d h() {
        try {
            return new d(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", null));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket, String str, List<u> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listA = g.a(list);
            this.f38233c.invoke(sSLParameters, listA.toArray(new String[listA.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e11) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to set ssl parameters", (Exception) e11);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public String b(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f38234d.invoke(sSLSocket, null);
            if (str == null || str.equals("")) {
                return null;
            }
            return str;
        } catch (IllegalAccessException e11) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("failed to get ALPN selected protocol", (Exception) e11);
        } catch (InvocationTargetException e12) {
            if (e12.getCause() instanceof UnsupportedOperationException) {
                return null;
            }
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("failed to get ALPN selected protocol", (Exception) e12);
        }
    }
}
