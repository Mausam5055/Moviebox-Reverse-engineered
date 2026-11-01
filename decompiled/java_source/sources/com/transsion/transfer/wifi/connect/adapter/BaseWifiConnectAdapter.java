package com.transsion.transfer.wifi.connect.adapter;

import androidx.appcompat.app.AppCompatActivity;
import com.transsion.transfer.wifi.util.g;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseWifiConnectAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n0 f55856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.transfer.wifi.connect.b f55857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private lv.a f55858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AppCompatActivity f55859d;

    public static /* synthetic */ void b(BaseWifiConnectAdapter baseWifiConnectAdapter, AppCompatActivity appCompatActivity, lv.a aVar, n0 n0Var, com.transsion.transfer.wifi.connect.b bVar, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: connect");
        }
        if ((i11 & 1) != 0) {
            appCompatActivity = null;
        }
        baseWifiConnectAdapter.a(appCompatActivity, aVar, n0Var, bVar);
    }

    public final void a(AppCompatActivity appCompatActivity, lv.a aVar, n0 n0Var, com.transsion.transfer.wifi.connect.b bVar) {
        this.f55859d = appCompatActivity;
        this.f55858c = aVar;
        this.f55856a = n0Var;
        this.f55857b = bVar;
        if (n0Var != null) {
            k.d(n0Var, null, null, new BaseWifiConnectAdapter$connect$1(this, null), 3, null);
        }
    }

    public abstract void c();

    public abstract void d();

    public final String e() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final AppCompatActivity f() {
        return this.f55859d;
    }

    public final n0 g() {
        return this.f55856a;
    }

    public final com.transsion.transfer.wifi.connect.b h() {
        return this.f55857b;
    }

    public final lv.a i() {
        return this.f55858c;
    }

    public final void j(String msg) {
        Intrinsics.h(msg, "msg");
        g.b(g.f55970a, e() + " --> " + msg, false, 2, null);
    }

    public final void k() {
        c();
        this.f55856a = null;
        this.f55859d = null;
        this.f55857b = null;
        this.f55858c = null;
    }
}
