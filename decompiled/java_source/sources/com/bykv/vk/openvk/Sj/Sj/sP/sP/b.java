package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class b extends ProxySelector {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f20243d = Collections.singletonList(Proxy.NO_PROXY);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ProxySelector f20244a = ProxySelector.getDefault();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f20245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f20246c;

    private b(String str, int i11) {
        this.f20245b = str;
        this.f20246c = i11;
    }

    static void a(String str, int i11) {
        ProxySelector.setDefault(new b(str, i11));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f20244a.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List select(URI uri) {
        if (uri != null) {
            return (this.f20245b.equalsIgnoreCase(uri.getHost()) && this.f20246c == uri.getPort()) ? f20243d : this.f20244a.select(uri);
        }
        throw new IllegalArgumentException("URI can't be null");
    }
}
