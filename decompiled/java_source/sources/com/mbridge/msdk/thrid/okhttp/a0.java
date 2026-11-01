package com.mbridge.msdk.thrid.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: loaded from: classes5.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f37764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f37765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final InetSocketAddress f37766c;

    public a0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f37764a = aVar;
        this.f37765b = proxy;
        this.f37766c = inetSocketAddress;
    }

    public a a() {
        return this.f37764a;
    }

    public Proxy b() {
        return this.f37765b;
    }

    public boolean c() {
        return this.f37764a.f37761i != null && this.f37765b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.f37766c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            if (a0Var.f37764a.equals(this.f37764a) && a0Var.f37765b.equals(this.f37765b) && a0Var.f37766c.equals(this.f37766c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f37764a.hashCode() + 527) * 31) + this.f37765b.hashCode()) * 31) + this.f37766c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f37766c + "}";
    }
}
