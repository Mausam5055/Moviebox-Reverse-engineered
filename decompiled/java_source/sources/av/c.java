package av;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f16147a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f16148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f16149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Function0 f16150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Function0 f16151e;

    private c() {
    }

    public final boolean a() {
        return f16151e != null;
    }

    public final boolean b() {
        return f16150d != null;
    }

    public final boolean c() {
        return f16149c;
    }

    public final boolean d() {
        return f16148b;
    }

    public final void e() {
        f16149c = false;
        Function0 function0 = f16151e;
        if (function0 != null) {
            function0.invoke();
        }
        f16151e = null;
    }

    public final void f() {
        f16148b = false;
        Function0 function0 = f16150d;
        if (function0 != null) {
            function0.invoke();
        }
        f16150d = null;
    }

    public final void g(Function0 callback) {
        Intrinsics.h(callback, "callback");
        f16151e = callback;
    }

    public final void h(Function0 callback) {
        Intrinsics.h(callback, "callback");
        f16150d = callback;
    }

    public final void i() {
        f16149c = true;
    }

    public final void j() {
        f16148b = true;
    }
}
