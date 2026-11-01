package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.q;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.a f37958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f37959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.d f37960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n f37961d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37963f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Proxy> f37962e = Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<InetSocketAddress> f37964g = Collections.emptyList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<a0> f37965h = new ArrayList();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<a0> f37966a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f37967b = 0;

        a(List<a0> list) {
            this.f37966a = list;
        }

        public List<a0> a() {
            return new ArrayList(this.f37966a);
        }

        public boolean b() {
            return this.f37967b < this.f37966a.size();
        }

        public a0 c() {
            if (!b()) {
                throw new NoSuchElementException();
            }
            List<a0> list = this.f37966a;
            int i11 = this.f37967b;
            this.f37967b = i11 + 1;
            return list.get(i11);
        }
    }

    public f(com.mbridge.msdk.thrid.okhttp.a aVar, d dVar, com.mbridge.msdk.thrid.okhttp.d dVar2, n nVar) {
        this.f37958a = aVar;
        this.f37959b = dVar;
        this.f37960c = dVar2;
        this.f37961d = nVar;
        a(aVar.k(), aVar.f());
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private void a(q qVar, Proxy proxy) {
        if (proxy != null) {
            this.f37962e = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = this.f37958a.h().select(qVar.m());
            this.f37962e = (listSelect == null || listSelect.isEmpty()) ? com.mbridge.msdk.thrid.okhttp.internal.c.a(Proxy.NO_PROXY) : com.mbridge.msdk.thrid.okhttp.internal.c.a(listSelect);
        }
        this.f37963f = 0;
    }

    private void a(Proxy proxy) throws IOException {
        String strG;
        int iJ;
        this.f37964g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strG = this.f37958a.k().g();
            iJ = this.f37958a.k().j();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            strG = a(inetSocketAddress);
            iJ = inetSocketAddress.getPort();
        }
        if (iJ < 1 || iJ > 65535) {
            throw new SocketException("No route to " + strG + ":" + iJ + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f37964g.add(InetSocketAddress.createUnresolved(strG, iJ));
            return;
        }
        this.f37961d.dnsStart(this.f37960c, strG);
        List<InetAddress> listA = this.f37958a.c().a(strG);
        if (listA.isEmpty()) {
            throw new UnknownHostException(this.f37958a.c() + " returned no addresses for " + strG);
        }
        this.f37961d.dnsEnd(this.f37960c, strG, listA);
        int size = listA.size();
        for (int i11 = 0; i11 < size; i11++) {
            this.f37964g.add(new InetSocketAddress(listA.get(i11), iJ));
        }
    }

    private boolean b() {
        return this.f37963f < this.f37962e.size();
    }

    private Proxy d() throws IOException {
        if (b()) {
            List<Proxy> list = this.f37962e;
            int i11 = this.f37963f;
            this.f37963f = i11 + 1;
            Proxy proxy = list.get(i11);
            a(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f37958a.k().g() + "; exhausted proxy configurations: " + this.f37962e);
    }

    public void a(a0 a0Var, IOException iOException) {
        if (a0Var.b().type() != Proxy.Type.DIRECT && this.f37958a.h() != null) {
            this.f37958a.h().connectFailed(this.f37958a.k().m(), a0Var.b().address(), iOException);
        }
        this.f37959b.b(a0Var);
    }

    public boolean a() {
        return b() || !this.f37965h.isEmpty();
    }

    public a c() throws IOException {
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (b()) {
            Proxy proxyD = d();
            int size = this.f37964g.size();
            for (int i11 = 0; i11 < size; i11++) {
                a0 a0Var = new a0(this.f37958a, proxyD, this.f37964g.get(i11));
                if (this.f37959b.c(a0Var)) {
                    this.f37965h.add(a0Var);
                } else {
                    arrayList.add(a0Var);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f37965h);
            this.f37965h.clear();
        }
        return new a(arrayList);
    }
}
