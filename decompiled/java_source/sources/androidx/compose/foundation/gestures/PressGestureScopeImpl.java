package androidx.compose.foundation.gestures;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;

/* JADX INFO: loaded from: classes.dex */
public final class PressGestureScopeImpl implements i, o0.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ o0.e f2673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.coroutines.sync.a f2676d = kotlinx.coroutines.sync.g.a(false);

    public PressGestureScopeImpl(o0.e eVar) {
        this.f2673a = eVar;
    }

    @Override // o0.n
    public float C0() {
        return this.f2673a.C0();
    }

    @Override // o0.e
    public float E0(float f11) {
        return this.f2673a.E0(f11);
    }

    @Override // o0.n
    public long H(float f11) {
        return this.f2673a.H(f11);
    }

    @Override // o0.n
    public float J(long j11) {
        return this.f2673a.J(j11);
    }

    @Override // o0.e
    public long Q(float f11) {
        return this.f2673a.Q(f11);
    }

    @Override // o0.e
    public long Q0(long j11) {
        return this.f2673a.Q0(j11);
    }

    @Override // o0.e
    public int c0(float f11) {
        return this.f2673a.c0(f11);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.i
    public Object f0(Continuation continuation) throws Throwable {
        PressGestureScopeImpl$tryAwaitRelease$1 pressGestureScopeImpl$tryAwaitRelease$1;
        PressGestureScopeImpl pressGestureScopeImpl;
        if (continuation instanceof PressGestureScopeImpl$tryAwaitRelease$1) {
            pressGestureScopeImpl$tryAwaitRelease$1 = (PressGestureScopeImpl$tryAwaitRelease$1) continuation;
            int i11 = pressGestureScopeImpl$tryAwaitRelease$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$tryAwaitRelease$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, continuation);
            }
        } else {
            pressGestureScopeImpl$tryAwaitRelease$1 = new PressGestureScopeImpl$tryAwaitRelease$1(this, continuation);
        }
        Object obj = pressGestureScopeImpl$tryAwaitRelease$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pressGestureScopeImpl$tryAwaitRelease$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (this.f2674b || this.f2675c) {
                pressGestureScopeImpl = this;
            } else {
                kotlinx.coroutines.sync.a aVar = this.f2676d;
                pressGestureScopeImpl$tryAwaitRelease$1.L$0 = this;
                pressGestureScopeImpl$tryAwaitRelease$1.label = 1;
                if (kotlinx.coroutines.sync.a.C0814a.a(aVar, null, pressGestureScopeImpl$tryAwaitRelease$1, 1, null) == objF) {
                    return objF;
                }
                pressGestureScopeImpl = this;
            }
            return Boxing.a(pressGestureScopeImpl.f2674b);
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        pressGestureScopeImpl = (PressGestureScopeImpl) pressGestureScopeImpl$tryAwaitRelease$1.L$0;
        ResultKt.b(obj);
        kotlinx.coroutines.sync.a.C0814a.c(pressGestureScopeImpl.f2676d, null, 1, null);
        return Boxing.a(pressGestureScopeImpl.f2674b);
    }

    @Override // o0.e
    public float getDensity() {
        return this.f2673a.getDensity();
    }

    @Override // o0.e
    public float h0(long j11) {
        return this.f2673a.h0(j11);
    }

    public final void n() {
        this.f2675c = true;
        kotlinx.coroutines.sync.a.C0814a.c(this.f2676d, null, 1, null);
    }

    public final void v() {
        this.f2674b = true;
        kotlinx.coroutines.sync.a.C0814a.c(this.f2676d, null, 1, null);
    }

    @Override // o0.e
    public float x0(int i11) {
        return this.f2673a.x0(i11);
    }

    @Override // o0.e
    public float y0(float f11) {
        return this.f2673a.y0(f11);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object z(Continuation continuation) throws Throwable {
        PressGestureScopeImpl$reset$1 pressGestureScopeImpl$reset$1;
        PressGestureScopeImpl pressGestureScopeImpl;
        if (continuation instanceof PressGestureScopeImpl$reset$1) {
            pressGestureScopeImpl$reset$1 = (PressGestureScopeImpl$reset$1) continuation;
            int i11 = pressGestureScopeImpl$reset$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pressGestureScopeImpl$reset$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pressGestureScopeImpl$reset$1 = new PressGestureScopeImpl$reset$1(this, continuation);
            }
        } else {
            pressGestureScopeImpl$reset$1 = new PressGestureScopeImpl$reset$1(this, continuation);
        }
        Object obj = pressGestureScopeImpl$reset$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pressGestureScopeImpl$reset$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.sync.a aVar = this.f2676d;
            pressGestureScopeImpl$reset$1.L$0 = this;
            pressGestureScopeImpl$reset$1.label = 1;
            if (kotlinx.coroutines.sync.a.C0814a.a(aVar, null, pressGestureScopeImpl$reset$1, 1, null) == objF) {
                return objF;
            }
            pressGestureScopeImpl = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pressGestureScopeImpl = (PressGestureScopeImpl) pressGestureScopeImpl$reset$1.L$0;
            ResultKt.b(obj);
        }
        pressGestureScopeImpl.f2674b = false;
        pressGestureScopeImpl.f2675c = false;
        return Unit.f67061a;
    }
}
