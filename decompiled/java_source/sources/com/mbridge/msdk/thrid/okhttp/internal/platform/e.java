package com.mbridge.msdk.thrid.okhttp.internal.platform;

import com.mbridge.msdk.thrid.okhttp.u;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
class e extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f38235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Method f38236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Method f38237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Class<?> f38238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Class<?> f38239g;

    private static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f38240a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f38241b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f38242c;

        a(List<String> list) {
            this.f38240a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = com.mbridge.msdk.thrid.okhttp.internal.c.f37902b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f38241b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f38240a;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        if (this.f38240a.contains(list.get(i11))) {
                            String str = (String) list.get(i11);
                            this.f38242c = str;
                            return str;
                        }
                    }
                    String str2 = this.f38240a.get(0);
                    this.f38242c = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f38242c = (String) objArr[0];
            return null;
        }
    }

    e(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f38235c = method;
        this.f38236d = method2;
        this.f38237e = method3;
        this.f38238f = cls;
        this.f38239g = cls2;
    }

    public static g h() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new e(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket) {
        try {
            this.f38237e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e11) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to remove alpn", (Exception) e11);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public void a(SSLSocket sSLSocket, String str, List<u> list) {
        try {
            this.f38235c.invoke(null, sSLSocket, Proxy.newProxyInstance(g.class.getClassLoader(), new Class[]{this.f38238f, this.f38239g}, new a(g.a(list))));
        } catch (IllegalAccessException | InvocationTargetException e11) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to set alpn", (Exception) e11);
        }
    }

    @Override // com.mbridge.msdk.thrid.okhttp.internal.platform.g
    public String b(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f38236d.invoke(null, sSLSocket));
            boolean z10 = aVar.f38241b;
            if (!z10 && aVar.f38242c == null) {
                g.d().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (z10) {
                return null;
            }
            return aVar.f38242c;
        } catch (IllegalAccessException | InvocationTargetException e11) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to get selected protocol", (Exception) e11);
        }
    }
}
