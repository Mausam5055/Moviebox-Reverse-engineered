package com.transsion.lib_web.download_render.utils;

import gm.i;
import nh.m;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f46188a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f46189b;

    private d() {
    }

    public final boolean a() {
        return f46189b;
    }

    public final void b() {
        i.f63883a.a("DR_", "net connected");
        f46189b = true;
    }

    public final void c() {
        i.f63883a.a("DR_", "net disConnected");
        f46189b = false;
    }

    public final void d() {
        f46189b = m.f70474a.b() == 2;
    }
}
