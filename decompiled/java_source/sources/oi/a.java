package oi;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f71022a = new a();

    private a() {
    }

    private final void a(int i11, String str, String str2, boolean z10) {
        if (i11 == 3) {
            lg.a.f68839a.c(str, str2, z10);
            return;
        }
        if (i11 == 4) {
            lg.a.f68839a.p(str, new String[]{str2}, z10);
        } else if (i11 == 5) {
            lg.a.f68839a.x(str, str2, z10);
        } else {
            if (i11 != 6) {
                return;
            }
            lg.a.f68839a.i(str, str2, z10);
        }
    }

    public static /* synthetic */ void c(a aVar, String str, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 4;
        }
        if ((i12 & 4) != 0) {
            z10 = true;
        }
        aVar.b(str, i11, z10);
    }

    public static /* synthetic */ void e(a aVar, String str, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 3;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        aVar.d(str, i11, z10);
    }

    public static /* synthetic */ void g(a aVar, String str, String str2, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = "ad_";
        }
        if ((i12 & 4) != 0) {
            i11 = 3;
        }
        if ((i12 & 8) != 0) {
            z10 = true;
        }
        aVar.f(str, str2, i11, z10);
    }

    public static /* synthetic */ void i(a aVar, String str, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 3;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        aVar.h(str, i11, z10);
    }

    public static /* synthetic */ void k(a aVar, String str, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 3;
        }
        if ((i12 & 4) != 0) {
            z10 = true;
        }
        aVar.j(str, i11, z10);
    }

    public static /* synthetic */ void m(a aVar, String str, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 3;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        aVar.l(str, i11, z10);
    }

    public static /* synthetic */ void o(a aVar, String str, String str2, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i11 = 3;
        }
        if ((i12 & 8) != 0) {
            z10 = true;
        }
        aVar.n(str, str2, i11, z10);
    }

    public final void b(String msg, int i11, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i11, "ad_init", msg, z10);
    }

    public final void d(String msg, int i11, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i11, "ad_cct", msg, z10);
    }

    public final void f(String tag, String msg, int i11, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        a(i11, tag, msg, z10);
    }

    public final void h(String msg, int i11, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i11, "ad_ic", msg, z10);
    }

    public final void j(String msg, int i11, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i11, "ad_ps_d", msg, z10);
    }

    public final void l(String msg, int i11, boolean z10) {
        Intrinsics.h(msg, "msg");
        a(i11, "ad_ps_a", msg, z10);
    }

    public final void n(String tag, String msg, int i11, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        a(i11, tag, msg, z10);
    }
}
