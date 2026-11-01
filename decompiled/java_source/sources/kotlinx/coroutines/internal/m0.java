package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m2;

/* JADX INFO: loaded from: classes7.dex */
final class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f67876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f67877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m2[] f67878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f67879d;

    public m0(CoroutineContext coroutineContext, int i11) {
        this.f67876a = coroutineContext;
        this.f67877b = new Object[i11];
        this.f67878c = new m2[i11];
    }

    public final void a(m2 m2Var, Object obj) {
        Object[] objArr = this.f67877b;
        int i11 = this.f67879d;
        objArr[i11] = obj;
        m2[] m2VarArr = this.f67878c;
        this.f67879d = i11 + 1;
        Intrinsics.f(m2Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        m2VarArr[i11] = m2Var;
    }

    public final void b(CoroutineContext coroutineContext) {
        int length = this.f67878c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i11 = length - 1;
            m2 m2Var = this.f67878c[length];
            Intrinsics.e(m2Var);
            m2Var.m(coroutineContext, this.f67877b[length]);
            if (i11 < 0) {
                return;
            } else {
                length = i11;
            }
        }
    }
}
