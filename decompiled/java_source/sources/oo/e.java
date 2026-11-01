package oo;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f71074a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static f f71075b;

    private e() {
    }

    public static /* synthetic */ void b(e eVar, String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        eVar.a(str, str2, z10);
    }

    public static /* synthetic */ void d(e eVar, String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        eVar.c(str, str2, z10);
    }

    public static /* synthetic */ void f(e eVar, String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        eVar.e(str, str2, z10);
    }

    public static /* synthetic */ void i(e eVar, String str, String str2, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        eVar.h(str, str2, z10);
    }

    public final void a(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f71075b;
        if (fVar != null) {
            fVar.b(tag, msg, z10);
        }
    }

    public final void c(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f71075b;
        if (fVar != null) {
            fVar.d(tag, msg, z10);
        }
    }

    public final void e(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f71075b;
        if (fVar != null) {
            fVar.a(tag, msg, z10);
        }
    }

    public final void g(f callback) {
        Intrinsics.h(callback, "callback");
        f71075b = callback;
    }

    public final void h(String tag, String msg, boolean z10) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        f fVar = f71075b;
        if (fVar != null) {
            fVar.c(tag, msg, z10);
        }
    }
}
