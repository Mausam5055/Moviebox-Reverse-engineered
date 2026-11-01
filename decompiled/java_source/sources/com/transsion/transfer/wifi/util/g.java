package com.transsion.transfer.wifi.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f55970a = new g();

    private g() {
    }

    public static /* synthetic */ void b(g gVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        gVar.a(str, z10);
    }

    public static /* synthetic */ void d(g gVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        gVar.c(str, z10);
    }

    public static /* synthetic */ void f(g gVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        gVar.e(str, z10);
    }

    public static /* synthetic */ void h(g gVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        gVar.g(str, z10);
    }

    public final void a(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        lg.a.f68839a.c("mb_wifi", msg, z10);
    }

    public final void c(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        lg.a.f68839a.i("mb_wifi", msg, z10);
    }

    public final void e(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        lg.a.f68839a.x("mb_wifi_r", msg, z10);
    }

    public final void g(String msg, boolean z10) {
        Intrinsics.h(msg, "msg");
        lg.a.f68839a.x("mb_wifi", msg, z10);
    }
}
