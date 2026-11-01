package com.transsion.lib_web.download_render.init;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import kotlin.jvm.internal.Intrinsics;
import nh.l;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f46182a;

    public d(Context context) {
        Intrinsics.h(context, "context");
        this.f46182a = context;
    }

    @Override // com.transsion.lib_web.download_render.init.c
    public void invoke() {
        Object systemService = this.f46182a.getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (Build.VERSION.SDK_INT >= 24) {
            connectivityManager.registerDefaultNetworkCallback(l.f70465g.a());
        } else {
            connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), l.f70465g.a());
        }
        com.transsion.lib_web.download_render.utils.d.f46188a.d();
        om.e.f71037a.d();
    }
}
