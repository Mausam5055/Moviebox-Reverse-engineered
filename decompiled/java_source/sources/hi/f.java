package hi;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f64472a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f64473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f64474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Boolean f64475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Boolean f64476e;

    private f() {
    }

    public final boolean a() {
        if (f64476e == null) {
            f64476e = Boolean.valueOf(com.transsion.ad.strategy.f.f42232a.b().getBoolean("isAdConfigTest", false));
        }
        return Intrinsics.c(f64476e, Boolean.TRUE);
    }

    public final boolean b() {
        Boolean bool = f64474c;
        if (bool == null) {
            Boolean boolValueOf = Boolean.valueOf(com.transsion.ad.strategy.f.f42232a.b().getBoolean("isDetailRequestLog", false));
            f64474c = boolValueOf;
            return boolValueOf.booleanValue();
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean c() {
        return com.transsion.ad.strategy.f.f42232a.b().getBoolean("7uW91v8bQlbz4J4w", false);
    }

    public final Boolean d() {
        if (f64475d == null) {
            f64475d = Boolean.valueOf(com.transsion.ad.strategy.f.f42232a.b().getBoolean("isHitLog", false));
        }
        return f64475d;
    }

    public final boolean e() {
        Boolean bool = f64473b;
        if (bool == null) {
            Boolean boolValueOf = Boolean.valueOf(com.transsion.ad.strategy.f.f42232a.b().getBoolean("Sk39789136Q8224I", true));
            f64473b = boolValueOf;
            return boolValueOf.booleanValue();
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void f(Boolean bool) {
        if (bool == null) {
            return;
        }
        com.transsion.ad.strategy.f.f42232a.b().putBoolean("isAdConfigTest", bool.booleanValue());
        f64476e = bool;
    }

    public final void g(boolean z10) {
        com.transsion.ad.strategy.f.f42232a.b().putBoolean("isDetailRequestLog", z10);
        f64474c = Boolean.valueOf(z10);
    }

    public final void h(boolean z10) {
        com.transsion.ad.strategy.f.f42232a.b().putBoolean("7uW91v8bQlbz4J4w", z10);
    }

    public final void i(Boolean bool) {
        if (bool == null) {
            return;
        }
        com.transsion.ad.strategy.f.f42232a.b().putBoolean("isHitLog", bool.booleanValue());
        f64475d = bool;
    }

    public final void j(boolean z10) {
        com.transsion.ad.strategy.f.f42232a.b().putBoolean("Sk39789136Q8224I", z10);
        f64473b = Boolean.valueOf(z10);
    }
}
