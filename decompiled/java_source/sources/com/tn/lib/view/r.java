package com.tn.lib.view;

import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class r {
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
