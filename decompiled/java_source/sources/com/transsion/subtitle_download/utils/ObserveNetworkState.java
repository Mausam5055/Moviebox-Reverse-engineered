package com.transsion.subtitle_download.utils;

import android.net.Network;
import android.net.NetworkCapabilities;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;
import nh.n;

/* JADX INFO: loaded from: classes.dex */
public final class ObserveNetworkState implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ObserveNetworkState f55042a = new ObserveNetworkState();

    private ObserveNetworkState() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b() {
        String simpleName = ObserveNetworkState.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void c(String str) {
        k.d(o0.a(y0.b()), null, null, new ObserveNetworkState$retryDownload$1(str, null), 3, null);
    }

    public final void d() {
        m.f70474a.l(this);
        c("冷启动");
    }

    @Override // nh.n
    public void onConnected() {
        n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        b.f55044a.a(b() + " --> onConnected() --> 网络重新链接的时候检查一下字幕下载 --> 延迟5秒，优化网络抖动 .....");
        c("网络重新连接");
    }

    @Override // nh.n
    public void onDisconnected() {
    }
}
