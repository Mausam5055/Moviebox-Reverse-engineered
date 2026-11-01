package com.mbridge.msdk.thrid.okhttp.internal.platform;

import android.os.Build;
import android.util.Log;
import com.mbridge.msdk.thrid.okhttp.u;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes5.dex */
class b extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class<?> f38220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f<Socket> f38221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f<Socket> f38222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f<Socket> f38223f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final f<Socket> f38224g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c f38225h = c.a();

    static final class a extends com.mbridge.msdk.thrid.okhttp.internal.tls.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f38226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f38227b;

        a(Object obj, Method method) {
            this.f38226a = obj;
            this.f38227b = method;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.tls.c
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f38227b.invoke(this.f38226a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e11) {
                throw new AssertionError(e11);
            } catch (InvocationTargetException e12) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e12.getMessage());
                sSLPeerUnverifiedException.initCause(e12);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.thrid.okhttp.internal.platform.b$b, reason: collision with other inner class name */
    static final class C0551b implements com.mbridge.msdk.thrid.okhttp.internal.tls.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final X509TrustManager f38228a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f38229b;

        C0551b(X509TrustManager x509TrustManager, Method method) {
            this.f38229b = method;
            this.f38228a = x509TrustManager;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.tls.e
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f38229b.invoke(this.f38228a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e11) {
                throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to get issues and signature", (Exception) e11);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0551b)) {
                return false;
            }
            C0551b c0551b = (C0551b) obj;
            return this.f38228a.equals(c0551b.f38228a) && this.f38229b.equals(c0551b.f38229b);
        }

        public int hashCode() {
            return this.f38228a.hashCode() + (this.f38229b.hashCode() * 31);
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f38230a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f38231b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Method f38232c;

        c(Method method, Method method2, Method method3) {
            this.f38230a = method;
            this.f38231b = method2;
            this.f38232c = method3;
        }

        static c a() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", null);
                method2 = cls.getMethod(MRAIDPresenter.OPEN, String.class);
                method = cls.getMethod("warnIfOpen", null);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new c(method3, method2, method);
        }

        Object a(String str) {
            Method method = this.f38230a;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, null);
                    this.f38231b.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        boolean a(Object obj) {
            if (obj != null) {
                try {
                    this.f38232c.invoke(obj, null);
                    return true;
                } catch (Exception unused) {
                }
            }
            return false;
        }
    }

    b(Class<?> cls, f<Socket> fVar, f<Socket> fVar2, f<Socket> fVar3, f<Socket> fVar4) {
        this.f38220c = cls;
        this.f38221d = fVar;
        this.f38222e = fVar2;
        this.f38223f = fVar3;
        this.f38224g = fVar4;
    }

    private boolean a(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", null).invoke(obj, null)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.b(str);
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return a(str, cls, obj);
        }
    }

    public static g h() {
        Class<?> cls;
        f fVar;
        f fVar2;
        if (!g.f()) {
            return null;
        }
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            f fVar3 = new f(null, "setUseSessionTickets", Boolean.TYPE);
            f fVar4 = new f(null, "setHostname", String.class);
            if (j()) {
                fVar = new f(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                fVar2 = new f(null, "setAlpnProtocols", byte[].class);
            } else {
                fVar = null;
                fVar2 = null;
            }
            return new b(cls2, fVar3, fVar4, fVar, fVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    static int i() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (NoClassDefFoundError unused) {
            return 0;
        }
    }

    private static boolean j() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public com.mbridge.msdk.thrid.okhttp.internal.tls.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public Object a(String str) {
        return this.f38225h.a(str);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(int i11, String str, Throwable th2) {
        int iMin;
        int i12 = i11 != 5 ? 3 : 5;
        if (th2 != null) {
            str = str + '\n' + Log.getStackTraceString(th2);
        }
        int length = str.length();
        int i13 = 0;
        while (i13 < length) {
            int iIndexOf = str.indexOf(10, i13);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i13 + 4000);
                Log.println(i12, "OkHttp", str.substring(i13, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i13 = iMin;
                }
            }
            i13 = iMin + 1;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(String str, Object obj) {
        if (this.f38225h.a(obj)) {
            return;
        }
        a(5, str, (Throwable) null);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i11) throws IOException {
        try {
            socket.connect(inetSocketAddress, i11);
        } catch (AssertionError e11) {
            if (!com.mbridge.msdk.thrid.okhttp.internal.c.a(e11)) {
                throw e11;
            }
            throw new IOException(e11);
        } catch (ClassCastException e12) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e12;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e12);
            throw iOException;
        } catch (SecurityException e13) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e13);
            throw iOException2;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket, String str, List<u> list) throws IOException {
        if (str != null) {
            this.f38221d.c(sSLSocket, Boolean.TRUE);
            this.f38222e.c(sSLSocket, str);
        }
        f<Socket> fVar = this.f38224g;
        if (fVar == null || !fVar.a(sSLSocket)) {
            return;
        }
        this.f38224g.d(sSLSocket, g.b(list));
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public com.mbridge.msdk.thrid.okhttp.internal.tls.e b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C0551b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public String b(SSLSocket sSLSocket) {
        byte[] bArr;
        f<Socket> fVar = this.f38223f;
        if (fVar == null || !fVar.a(sSLSocket) || (bArr = (byte[]) this.f38223f.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, com.mbridge.msdk.thrid.okhttp.internal.c.f37910j);
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public boolean b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return b(str, cls, cls.getMethod("getInstance", null).invoke(null, null));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.b(str);
        } catch (IllegalAccessException e11) {
            e = e11;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e12) {
            e = e12;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e13) {
            e = e13;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public SSLContext e() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e11) {
            throw new IllegalStateException("No TLS provider", e11);
        }
    }
}
