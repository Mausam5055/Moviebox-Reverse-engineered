package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Route;
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
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Address f40532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.squareup.okhttp.internal.f f40533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Proxy f40534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InetSocketAddress f40535d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f40537f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f40539h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f40536e = Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f40538g = Collections.emptyList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f40540i = new ArrayList();

    public l(Address address, com.squareup.okhttp.internal.f fVar) {
        this.f40532a = address;
        this.f40533b = fVar;
        l(address.url(), address.getProxy());
    }

    static String b(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private boolean d() {
        return this.f40539h < this.f40538g.size();
    }

    private boolean e() {
        return !this.f40540i.isEmpty();
    }

    private boolean f() {
        return this.f40537f < this.f40536e.size();
    }

    private InetSocketAddress h() throws SocketException {
        if (d()) {
            List list = this.f40538g;
            int i11 = this.f40539h;
            this.f40539h = i11 + 1;
            return (InetSocketAddress) list.get(i11);
        }
        throw new SocketException("No route to " + this.f40532a.getUriHost() + "; exhausted inet socket addresses: " + this.f40538g);
    }

    private Route i() {
        return (Route) this.f40540i.remove(0);
    }

    private Proxy j() throws SocketException, UnknownHostException {
        if (f()) {
            List list = this.f40536e;
            int i11 = this.f40537f;
            this.f40537f = i11 + 1;
            Proxy proxy = (Proxy) list.get(i11);
            k(proxy);
            return proxy;
        }
        throw new SocketException("No route to " + this.f40532a.getUriHost() + "; exhausted proxy configurations: " + this.f40536e);
    }

    private void k(Proxy proxy) throws SocketException, UnknownHostException {
        String uriHost;
        int uriPort;
        this.f40538g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            uriHost = this.f40532a.getUriHost();
            uriPort = this.f40532a.getUriPort();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            uriHost = b(inetSocketAddress);
            uriPort = inetSocketAddress.getPort();
        }
        if (uriPort < 1 || uriPort > 65535) {
            throw new SocketException("No route to " + uriHost + ":" + uriPort + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f40538g.add(InetSocketAddress.createUnresolved(uriHost, uriPort));
        } else {
            List<InetAddress> listLookup = this.f40532a.getDns().lookup(uriHost);
            int size = listLookup.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.f40538g.add(new InetSocketAddress(listLookup.get(i11), uriPort));
            }
        }
        this.f40539h = 0;
    }

    private void l(HttpUrl httpUrl, Proxy proxy) {
        if (proxy != null) {
            this.f40536e = Collections.singletonList(proxy);
        } else {
            this.f40536e = new ArrayList();
            List<Proxy> listSelect = this.f40532a.getProxySelector().select(httpUrl.uri());
            if (listSelect != null) {
                this.f40536e.addAll(listSelect);
            }
            List list = this.f40536e;
            Proxy proxy2 = Proxy.NO_PROXY;
            list.removeAll(Collections.singleton(proxy2));
            this.f40536e.add(proxy2);
        }
        this.f40537f = 0;
    }

    public void a(Route route, IOException iOException) {
        if (route.getProxy().type() != Proxy.Type.DIRECT && this.f40532a.getProxySelector() != null) {
            this.f40532a.getProxySelector().connectFailed(this.f40532a.url().uri(), route.getProxy().address(), iOException);
        }
        this.f40533b.b(route);
    }

    public boolean c() {
        return d() || f() || e();
    }

    public Route g() throws SocketException {
        if (!d()) {
            if (!f()) {
                if (e()) {
                    return i();
                }
                throw new NoSuchElementException();
            }
            this.f40534c = j();
        }
        InetSocketAddress inetSocketAddressH = h();
        this.f40535d = inetSocketAddressH;
        Route route = new Route(this.f40532a, this.f40534c, inetSocketAddressH);
        if (!this.f40533b.c(route)) {
            return route;
        }
        this.f40540i.add(route);
        return g();
    }
}
