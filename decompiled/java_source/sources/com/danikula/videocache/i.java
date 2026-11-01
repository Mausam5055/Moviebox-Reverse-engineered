package com.danikula.videocache;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class i extends ProxySelector {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f24047d = Arrays.asList(Proxy.NO_PROXY);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ProxySelector f24048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f24050c;

    i(ProxySelector proxySelector, String str, int i11) {
        this.f24048a = (ProxySelector) l.c(proxySelector);
        this.f24049b = (String) l.c(str);
        this.f24050c = i11;
    }

    static void a(String str, int i11) {
        ProxySelector.setDefault(new i(ProxySelector.getDefault(), str, i11));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f24048a.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List select(URI uri) {
        if (this.f24049b.equals(uri.getHost()) && this.f24050c == uri.getPort()) {
            return f24047d;
        }
        try {
            List<Proxy> listSelect = this.f24048a.select(uri);
            return listSelect != null ? listSelect : f24047d;
        } catch (Throwable unused) {
            return f24047d;
        }
    }
}
