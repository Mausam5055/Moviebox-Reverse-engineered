package com.apm.insight;

import com.apm.insight.l.g;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.apm.insight.b.a f19438a = new com.apm.insight.b.a();

    public static com.apm.insight.b.a a() {
        return f19438a;
    }

    public static void a(Throwable th2, String str) {
        if (!e.i().isEnsureEnable() || g.a(th2)) {
            return;
        }
        com.apm.insight.f.b.a(th2, str, "core_exception_monitor");
    }
}
