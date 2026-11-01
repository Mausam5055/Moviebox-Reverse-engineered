package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c[] f67803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f67805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private t f67806d;

    public final i1 c() {
        t tVar;
        synchronized (this) {
            tVar = this.f67806d;
            if (tVar == null) {
                tVar = new t(this.f67804b);
                this.f67806d = tVar;
            }
        }
        return tVar;
    }

    protected final c i() {
        c cVarJ;
        t tVar;
        synchronized (this) {
            try {
                c[] cVarArrK = this.f67803a;
                if (cVarArrK == null) {
                    cVarArrK = k(2);
                    this.f67803a = cVarArrK;
                } else if (this.f67804b >= cVarArrK.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(cVarArrK, cVarArrK.length * 2);
                    Intrinsics.g(objArrCopyOf, "copyOf(...)");
                    this.f67803a = (c[]) objArrCopyOf;
                    cVarArrK = (c[]) objArrCopyOf;
                }
                int i11 = this.f67805c;
                do {
                    cVarJ = cVarArrK[i11];
                    if (cVarJ == null) {
                        cVarJ = j();
                        cVarArrK[i11] = cVarJ;
                    }
                    i11++;
                    if (i11 >= cVarArrK.length) {
                        i11 = 0;
                    }
                    Intrinsics.f(cVarJ, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                } while (!cVarJ.a(this));
                this.f67805c = i11;
                this.f67804b++;
                tVar = this.f67806d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (tVar != null) {
            tVar.a0(1);
        }
        return cVarJ;
    }

    protected abstract c j();

    protected abstract c[] k(int i11);

    protected final void l(c cVar) {
        t tVar;
        int i11;
        Continuation[] continuationArrB;
        synchronized (this) {
            try {
                int i12 = this.f67804b - 1;
                this.f67804b = i12;
                tVar = this.f67806d;
                if (i12 == 0) {
                    this.f67805c = 0;
                }
                Intrinsics.f(cVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
                continuationArrB = cVar.b(this);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        for (Continuation continuation : continuationArrB) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m454constructorimpl(Unit.f67061a));
            }
        }
        if (tVar != null) {
            tVar.a0(-1);
        }
    }

    protected final int m() {
        return this.f67804b;
    }

    protected final c[] n() {
        return this.f67803a;
    }
}
