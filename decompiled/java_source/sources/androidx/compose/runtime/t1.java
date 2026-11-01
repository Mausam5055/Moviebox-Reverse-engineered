package androidx.compose.runtime;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class t1 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f4041i = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q f4042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q2 f4044c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i1 f4045d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f4046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f4047f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f4048g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4049h = true;

    public t1(q qVar, Object obj, boolean z10, q2 q2Var, i1 i1Var, Function1 function1, boolean z11) {
        this.f4042a = qVar;
        this.f4043b = z10;
        this.f4044c = q2Var;
        this.f4045d = i1Var;
        this.f4046e = function1;
        this.f4047f = z11;
        this.f4048g = obj;
    }

    public final boolean a() {
        return this.f4049h;
    }

    public final q b() {
        return this.f4042a;
    }

    public final Function1 c() {
        return this.f4046e;
    }

    public final Object d() {
        if (this.f4043b) {
            return null;
        }
        i1 i1Var = this.f4045d;
        if (i1Var != null) {
            return i1Var.getValue();
        }
        Object obj = this.f4048g;
        if (obj != null) {
            return obj;
        }
        k.s("Unexpected form of a provided value");
        throw new KotlinNothingValueException();
    }

    public final q2 e() {
        return this.f4044c;
    }

    public final i1 f() {
        return this.f4045d;
    }

    public final Object g() {
        return this.f4048g;
    }

    public final t1 h() {
        this.f4049h = false;
        return this;
    }

    public final boolean i() {
        return this.f4047f;
    }

    public final boolean j() {
        return (this.f4043b || g() != null) && !this.f4047f;
    }
}
