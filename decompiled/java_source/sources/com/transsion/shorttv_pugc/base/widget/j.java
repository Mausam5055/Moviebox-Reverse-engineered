package com.transsion.shorttv_pugc.base.widget;

import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j {
    public static final void a(String pageName) {
        Intrinsics.h(pageName, "pageName");
        hj.i.f64505a.D(pageName, MapsKt.f(TuplesKt.a("module_name", "no_network")));
    }

    public static final void b(String pageName) {
        Intrinsics.h(pageName, "pageName");
        hj.i.f64505a.p(pageName, MapsKt.f(TuplesKt.a("module_name", "retry")));
    }

    public static final void c(String pageName) {
        Intrinsics.h(pageName, "pageName");
        hj.i.f64505a.p(pageName, MapsKt.f(TuplesKt.a("module_name", "setting")));
    }
}
