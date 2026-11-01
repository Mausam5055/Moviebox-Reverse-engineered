package gm;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f63883a = new i();

    private i() {
    }

    public final void a(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        try {
            lg.a.C0828a.f(lg.a.f68839a, "web_log", "<" + tag + ">: " + msg, false, 4, null);
        } catch (Throwable unused) {
        }
    }

    public final void b(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        try {
            lg.a.C0828a.l(lg.a.f68839a, "web_log", "<" + tag + ">: " + msg, false, 4, null);
        } catch (Throwable unused) {
        }
    }

    public final void c(String msg) {
        Intrinsics.h(msg, "msg");
        try {
            lg.a.C0828a.f(lg.a.f68839a, "web_log", msg, false, 4, null);
        } catch (Throwable unused) {
        }
    }

    public final void d(String msg) {
        Intrinsics.h(msg, "msg");
        try {
            lg.a.C0828a.l(lg.a.f68839a, "web_log", msg, false, 4, null);
        } catch (Throwable unused) {
        }
    }

    public final void e(String msg) {
        Intrinsics.h(msg, "msg");
        try {
            lg.a.C0828a.z(lg.a.f68839a, "web_log", msg, false, 4, null);
        } catch (Throwable unused) {
        }
    }

    public final void f(String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        try {
            lg.a.C0828a.z(lg.a.f68839a, "web_log", "<" + tag + ">: " + msg, false, 4, null);
        } catch (Throwable unused) {
        }
    }
}
