package com.transsion.home.view;

import hj.i;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f45785b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f45784a = new g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f45786c = 8;

    private g() {
    }

    private final void c() {
        HashMap map = new HashMap();
        map.put("click", "search");
        i.f64505a.p("guide", map);
    }

    public final boolean a() {
        return f45785b;
    }

    public final void b(boolean z10) {
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("search_guide", true);
        if (z10) {
            c();
        }
    }

    public final void d() {
        f45785b = false;
    }

    public final void e(boolean z10) {
        f45785b = z10;
    }
}
