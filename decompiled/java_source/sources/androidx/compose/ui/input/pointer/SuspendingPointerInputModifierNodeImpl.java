package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.d1;
import androidx.compose.ui.platform.o2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public final class SuspendingPointerInputModifierNodeImpl extends androidx.compose.ui.f.c implements n0, e0, o0.e {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Object f4956n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Object f4957o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object[] f4958p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Function2 f4959q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private t1 f4960r;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private o f4964v;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private o f4961s = l0.f5014a;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f4962t = new androidx.compose.runtime.collection.b(new PointerEventHandlerCoroutine[16], 0);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f4963u = new androidx.compose.runtime.collection.b(new PointerEventHandlerCoroutine[16], 0);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f4965w = o0.t.f70624b.a();

    /* JADX INFO: Access modifiers changed from: private */
    final class PointerEventHandlerCoroutine implements c, o0.e, Continuation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Continuation f4966a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ SuspendingPointerInputModifierNodeImpl f4967b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private kotlinx.coroutines.n f4968c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private PointerEventPass f4969d = PointerEventPass.Main;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final CoroutineContext f4970e = EmptyCoroutineContext.INSTANCE;

        public PointerEventHandlerCoroutine(Continuation continuation) {
            this.f4966a = continuation;
            this.f4967b = SuspendingPointerInputModifierNodeImpl.this;
        }

        public final void B(Throwable th2) {
            kotlinx.coroutines.n nVar = this.f4968c;
            if (nVar != null) {
                nVar.cancel(th2);
            }
            this.f4968c = null;
        }

        public final void C(o oVar, PointerEventPass pointerEventPass) {
            kotlinx.coroutines.n nVar;
            if (pointerEventPass != this.f4969d || (nVar = this.f4968c) == null) {
                return;
            }
            this.f4968c = null;
            nVar.resumeWith(Result.m454constructorimpl(oVar));
        }

        @Override // o0.n
        public float C0() {
            return this.f4967b.C0();
        }

        @Override // o0.e
        public float E0(float f11) {
            return this.f4967b.E0(f11);
        }

        @Override // o0.n
        public long H(float f11) {
            return this.f4967b.H(f11);
        }

        @Override // o0.n
        public float J(long j11) {
            return this.f4967b.J(j11);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.compose.ui.input.pointer.c
        public Object N(long j11, Function2 function2, Continuation continuation) throws Throwable {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1;
            if (continuation instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) continuation;
                int i11 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, continuation);
                }
            } else {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, continuation);
            }
            Object objE0 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label;
            try {
                if (i12 == 0) {
                    ResultKt.b(objE0);
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label = 1;
                    objE0 = e0(j11, function2, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1);
                    if (objE0 == objF) {
                        return objF;
                    }
                } else {
                    if (i12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objE0);
                }
                return objE0;
            } catch (PointerEventTimeoutCancellationException unused) {
                return null;
            }
        }

        @Override // o0.e
        public long Q(float f11) {
            return this.f4967b.Q(f11);
        }

        @Override // o0.e
        public long Q0(long j11) {
            return this.f4967b.Q0(j11);
        }

        @Override // androidx.compose.ui.input.pointer.c
        public long X() {
            return SuspendingPointerInputModifierNodeImpl.this.X();
        }

        @Override // o0.e
        public int c0(float f11) {
            return this.f4967b.c0(f11);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0, types: [long] */
        /* JADX WARN: Type inference failed for: r11v1, types: [kotlinx.coroutines.t1] */
        /* JADX WARN: Type inference failed for: r11v3, types: [kotlinx.coroutines.t1] */
        /* JADX WARN: Type inference failed for: r11v7 */
        /* JADX WARN: Type inference failed for: r11v8 */
        /* JADX WARN: Type inference failed for: r13v0, types: [kotlin.jvm.functions.Function2] */
        @Override // androidx.compose.ui.input.pointer.c
        public Object e0(long j11, Function2 function2, Continuation continuation) throws Throwable {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1;
            kotlinx.coroutines.n nVar;
            if (continuation instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) continuation;
                int i11 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1(this, continuation);
                }
            } else {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1(this, continuation);
            }
            Object objInvoke = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label;
            try {
                if (i12 == 0) {
                    ResultKt.b(objInvoke);
                    if (j11 <= 0 && (nVar = this.f4968c) != null) {
                        Result.Companion companion = Result.INSTANCE;
                        nVar.resumeWith(Result.m454constructorimpl(ResultKt.a(new PointerEventTimeoutCancellationException(j11))));
                    }
                    t1 t1VarD = kotlinx.coroutines.k.d(SuspendingPointerInputModifierNodeImpl.this.d1(), null, null, new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1(j11, this, null), 3, null);
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.L$0 = t1VarD;
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.label = 1;
                    objInvoke = function2.invoke(this, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1);
                    j11 = t1VarD;
                    if (objInvoke == objF) {
                        return objF;
                    }
                } else {
                    if (i12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    t1 t1Var = (t1) suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.L$0;
                    ResultKt.b(objInvoke);
                    j11 = t1Var;
                }
                j11.cancel(CancelTimeoutCancellationException.INSTANCE);
                return objInvoke;
            } catch (Throwable th2) {
                j11.cancel(CancelTimeoutCancellationException.INSTANCE);
                throw th2;
            }
        }

        @Override // kotlin.coroutines.Continuation
        public CoroutineContext getContext() {
            return this.f4970e;
        }

        @Override // o0.e
        public float getDensity() {
            return this.f4967b.getDensity();
        }

        @Override // androidx.compose.ui.input.pointer.c
        public o2 getViewConfiguration() {
            return SuspendingPointerInputModifierNodeImpl.this.getViewConfiguration();
        }

        @Override // o0.e
        public float h0(long j11) {
            return this.f4967b.h0(j11);
        }

        @Override // androidx.compose.ui.input.pointer.c
        public long k() {
            return SuspendingPointerInputModifierNodeImpl.this.f4965w;
        }

        @Override // androidx.compose.ui.input.pointer.c
        public Object m0(PointerEventPass pointerEventPass, Continuation continuation) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            this.f4969d = pointerEventPass;
            this.f4968c = cancellableContinuationImpl;
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result;
        }

        @Override // androidx.compose.ui.input.pointer.c
        public o n0() {
            return SuspendingPointerInputModifierNodeImpl.this.f4961s;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(Object obj) {
            androidx.compose.runtime.collection.b bVar = SuspendingPointerInputModifierNodeImpl.this.f4962t;
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            synchronized (bVar) {
                suspendingPointerInputModifierNodeImpl.f4962t.t(this);
                Unit unit = Unit.f67061a;
            }
            this.f4966a.resumeWith(obj);
        }

        @Override // o0.e
        public float x0(int i11) {
            return this.f4967b.x0(i11);
        }

        @Override // o0.e
        public float y0(float f11) {
            return this.f4967b.y0(f11);
        }
    }

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4972a;

        static {
            int[] iArr = new int[PointerEventPass.values().length];
            try {
                iArr[PointerEventPass.Initial.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PointerEventPass.Final.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PointerEventPass.Main.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f4972a = iArr;
        }
    }

    public SuspendingPointerInputModifierNodeImpl(Object obj, Object obj2, Object[] objArr, Function2 function2) {
        this.f4956n = obj;
        this.f4957o = obj2;
        this.f4958p = objArr;
        this.f4959q = function2;
    }

    private final void G1(o oVar, PointerEventPass pointerEventPass) {
        androidx.compose.runtime.collection.b bVar;
        int iN;
        synchronized (this.f4962t) {
            androidx.compose.runtime.collection.b bVar2 = this.f4963u;
            bVar2.c(bVar2.n(), this.f4962t);
        }
        try {
            int i11 = a.f4972a[pointerEventPass.ordinal()];
            if (i11 == 1 || i11 == 2) {
                androidx.compose.runtime.collection.b bVar3 = this.f4963u;
                int iN2 = bVar3.n();
                if (iN2 > 0) {
                    Object[] objArrM = bVar3.m();
                    int i12 = 0;
                    do {
                        ((PointerEventHandlerCoroutine) objArrM[i12]).C(oVar, pointerEventPass);
                        i12++;
                    } while (i12 < iN2);
                }
            } else if (i11 == 3 && (iN = (bVar = this.f4963u).n()) > 0) {
                int i13 = iN - 1;
                Object[] objArrM2 = bVar.m();
                do {
                    ((PointerEventHandlerCoroutine) objArrM2[i13]).C(oVar, pointerEventPass);
                    i13--;
                } while (i13 >= 0);
            }
        } finally {
            this.f4963u.h();
        }
    }

    @Override // o0.n
    public float C0() {
        return androidx.compose.ui.node.g.m(this).H().C0();
    }

    @Override // o0.e
    public /* synthetic */ float E0(float f11) {
        return o0.d.e(this, f11);
    }

    @Override // o0.n
    public /* synthetic */ long H(float f11) {
        return o0.m.b(this, f11);
    }

    public Function2 H1() {
        return this.f4959q;
    }

    public final void I1(Object obj, Object obj2, Object[] objArr, Function2 function2) {
        boolean z10 = !Intrinsics.c(this.f4956n, obj);
        this.f4956n = obj;
        if (!Intrinsics.c(this.f4957o, obj2)) {
            z10 = true;
        }
        this.f4957o = obj2;
        Object[] objArr2 = this.f4958p;
        if (objArr2 != null && objArr == null) {
            z10 = true;
        }
        if (objArr2 == null && objArr != null) {
            z10 = true;
        }
        boolean z11 = (objArr2 == null || objArr == null || Arrays.equals(objArr, objArr2)) ? z10 : true;
        this.f4958p = objArr;
        if (z11) {
            j0();
        }
        this.f4959q = function2;
    }

    @Override // o0.n
    public /* synthetic */ float J(long j11) {
        return o0.m.a(this, j11);
    }

    @Override // androidx.compose.ui.input.pointer.e0
    public Object K(Function2 function2, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(cancellableContinuationImpl);
        synchronized (this.f4962t) {
            this.f4962t.b(pointerEventHandlerCoroutine);
            Continuation continuationA = ContinuationKt.a(function2, pointerEventHandlerCoroutine, pointerEventHandlerCoroutine);
            Result.Companion companion = Result.INSTANCE;
            continuationA.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$awaitPointerEventScope$2$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                pointerEventHandlerCoroutine.B(th2);
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    @Override // androidx.compose.ui.node.e1
    public void M(o oVar, PointerEventPass pointerEventPass, long j11) {
        this.f4965w = j11;
        if (pointerEventPass == PointerEventPass.Initial) {
            this.f4961s = oVar;
        }
        if (this.f4960r == null) {
            this.f4960r = kotlinx.coroutines.k.d(d1(), null, CoroutineStart.UNDISPATCHED, new SuspendingPointerInputModifierNodeImpl$onPointerEvent$1(this, null), 1, null);
        }
        G1(oVar, pointerEventPass);
        List listB = oVar.b();
        int size = listB.size();
        boolean z10 = false;
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                z10 = true;
                break;
            } else if (!p.d((w) listB.get(i11))) {
                break;
            } else {
                i11++;
            }
        }
        if (z10) {
            oVar = null;
        }
        this.f4964v = oVar;
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ boolean P0() {
        return d1.d(this);
    }

    @Override // o0.e
    public /* synthetic */ long Q(float f11) {
        return o0.d.g(this, f11);
    }

    @Override // o0.e
    public /* synthetic */ long Q0(long j11) {
        return o0.d.f(this, j11);
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ boolean R() {
        return d1.a(this);
    }

    @Override // androidx.compose.ui.node.e1
    public void T0() {
        j0();
    }

    public long X() {
        long jQ0 = Q0(getViewConfiguration().d());
        long jK = k();
        return y.n.a(Math.max(0.0f, y.m.i(jQ0) - o0.t.g(jK)) / 2.0f, Math.max(0.0f, y.m.g(jQ0) - o0.t.f(jK)) / 2.0f);
    }

    @Override // o0.e
    public /* synthetic */ int c0(float f11) {
        return o0.d.a(this, f11);
    }

    @Override // o0.e
    public float getDensity() {
        return androidx.compose.ui.node.g.m(this).H().getDensity();
    }

    public o2 getViewConfiguration() {
        return androidx.compose.ui.node.g.m(this).l0();
    }

    @Override // o0.e
    public /* synthetic */ float h0(long j11) {
        return o0.d.d(this, j11);
    }

    @Override // androidx.compose.ui.input.pointer.n0
    public void j0() {
        t1 t1Var = this.f4960r;
        if (t1Var != null) {
            t1Var.cancel(new PointerInputResetException());
            this.f4960r = null;
        }
    }

    public long k() {
        return this.f4965w;
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        j0();
        super.o1();
    }

    @Override // androidx.compose.ui.node.e1
    public void t0() {
        o oVar = this.f4964v;
        if (oVar == null) {
            return;
        }
        List listB = oVar.b();
        int size = listB.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((w) listB.get(i11)).i()) {
                List listB2 = oVar.b();
                ArrayList arrayList = new ArrayList(listB2.size());
                int size2 = listB2.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    w wVar = (w) listB2.get(i12);
                    arrayList.add(new w(wVar.f(), wVar.o(), wVar.h(), false, wVar.j(), wVar.o(), wVar.h(), wVar.i(), wVar.i(), 0, 0L, 1536, (DefaultConstructorMarker) null));
                }
                o oVar2 = new o(arrayList);
                this.f4961s = oVar2;
                G1(oVar2, PointerEventPass.Initial);
                G1(oVar2, PointerEventPass.Main);
                G1(oVar2, PointerEventPass.Final);
                this.f4964v = null;
                return;
            }
        }
    }

    @Override // o0.e
    public /* synthetic */ float x0(int i11) {
        return o0.d.c(this, i11);
    }

    @Override // o0.e
    public /* synthetic */ float y0(float f11) {
        return o0.d.b(this, f11);
    }

    @Override // androidx.compose.ui.node.e1
    public void z0() {
        j0();
    }
}
