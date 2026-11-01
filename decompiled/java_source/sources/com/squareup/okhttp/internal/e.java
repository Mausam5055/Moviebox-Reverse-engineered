package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import okio.Buffer;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f40292a = e();

    private static class a extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f40293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final d f40294c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Method f40295d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Method f40296e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final d f40297f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final d f40298g;

        public a(d dVar, d dVar2, Method method, Method method2, d dVar3, d dVar4) {
            this.f40293b = dVar;
            this.f40294c = dVar2;
            this.f40295d = method;
            this.f40296e = method2;
            this.f40297f = dVar3;
            this.f40298g = dVar4;
        }

        @Override // com.squareup.okhttp.internal.e
        public void c(SSLSocket sSLSocket, String str, List list) {
            if (str != null) {
                this.f40293b.e(sSLSocket, Boolean.TRUE);
                this.f40294c.e(sSLSocket, str);
            }
            d dVar = this.f40298g;
            if (dVar == null || !dVar.g(sSLSocket)) {
                return;
            }
            this.f40298g.f(sSLSocket, e.b(list));
        }

        @Override // com.squareup.okhttp.internal.e
        public void d(Socket socket, InetSocketAddress inetSocketAddress, int i11) throws IOException {
            try {
                socket.connect(inetSocketAddress, i11);
            } catch (AssertionError e11) {
                if (!g.o(e11)) {
                    throw e11;
                }
                throw new IOException(e11);
            } catch (SecurityException e12) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e12);
                throw iOException;
            }
        }

        @Override // com.squareup.okhttp.internal.e
        public String h(SSLSocket sSLSocket) {
            byte[] bArr;
            d dVar = this.f40297f;
            if (dVar == null || !dVar.g(sSLSocket) || (bArr = (byte[]) this.f40297f.f(sSLSocket, new Object[0])) == null) {
                return null;
            }
            return new String(bArr, g.f40432c);
        }
    }

    private static class b extends e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f40299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Method f40300c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Method f40301d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Class f40302e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Class f40303f;

        public b(Method method, Method method2, Method method3, Class cls, Class cls2) {
            this.f40299b = method;
            this.f40300c = method2;
            this.f40301d = method3;
            this.f40302e = cls;
            this.f40303f = cls2;
        }

        @Override // com.squareup.okhttp.internal.e
        public void a(SSLSocket sSLSocket) {
            try {
                this.f40301d.invoke(null, sSLSocket);
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }

        @Override // com.squareup.okhttp.internal.e
        public void c(SSLSocket sSLSocket, String str, List list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                Protocol protocol = (Protocol) list.get(i11);
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f40299b.invoke(null, sSLSocket, Proxy.newProxyInstance(e.class.getClassLoader(), new Class[]{this.f40302e, this.f40303f}, new c(arrayList)));
            } catch (IllegalAccessException | InvocationTargetException e11) {
                throw new AssertionError(e11);
            }
        }

        @Override // com.squareup.okhttp.internal.e
        public String h(SSLSocket sSLSocket) {
            try {
                c cVar = (c) Proxy.getInvocationHandler(this.f40300c.invoke(null, sSLSocket));
                if (!cVar.f40305b && cVar.f40306c == null) {
                    com.squareup.okhttp.internal.c.logger.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    return null;
                }
                if (cVar.f40305b) {
                    return null;
                }
                return cVar.f40306c;
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }
    }

    private static class c implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f40304a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f40305b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f40306c;

        public c(List list) {
            this.f40304a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = g.f40431b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f40305b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f40304a;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        if (this.f40304a.contains(list.get(i11))) {
                            String str = (String) list.get(i11);
                            this.f40306c = str;
                            return str;
                        }
                    }
                    String str2 = (String) this.f40304a.get(0);
                    this.f40306c = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f40306c = (String) objArr[0];
            return null;
        }
    }

    static byte[] b(List list) {
        Buffer buffer = new Buffer();
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            Protocol protocol = (Protocol) list.get(i11);
            if (protocol != Protocol.HTTP_1_0) {
                buffer.writeByte(protocol.toString().length());
                buffer.writeUtf8(protocol.toString());
            }
        }
        return buffer.readByteArray();
    }

    private static e e() {
        Method method;
        d dVar;
        Method method2;
        try {
            try {
                try {
                    Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
                } catch (ClassNotFoundException unused) {
                    Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
                    Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                    return new b(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                return new e();
            }
        } catch (ClassNotFoundException unused3) {
            Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
        }
        d dVar2 = null;
        d dVar3 = new d(null, "setUseSessionTickets", Boolean.TYPE);
        d dVar4 = new d(null, "setHostname", String.class);
        try {
            Class<?> cls3 = Class.forName("android.net.TrafficStats");
            method2 = cls3.getMethod("tagSocket", Socket.class);
            try {
                method = cls3.getMethod("untagSocket", Socket.class);
                try {
                    Class.forName("android.net.Network");
                    dVar = new d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                    try {
                        dVar2 = new d(null, "setAlpnProtocols", byte[].class);
                    } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                    }
                } catch (ClassNotFoundException | NoSuchMethodException unused5) {
                    dVar = null;
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused6) {
                method = null;
                dVar = null;
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused7) {
            method = null;
            dVar = null;
            method2 = null;
        }
        return new a(dVar3, dVar4, method2, method, dVar, dVar2);
    }

    public static e f() {
        return f40292a;
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List list) {
    }

    public void d(Socket socket, InetSocketAddress inetSocketAddress, int i11) {
        socket.connect(inetSocketAddress, i11);
    }

    public String g() {
        return "OkHttp";
    }

    public String h(SSLSocket sSLSocket) {
        return null;
    }

    public void i(String str) {
        System.out.println(str);
    }
}
