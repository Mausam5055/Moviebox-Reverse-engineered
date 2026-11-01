package androidx.compose.foundation.gestures;

import androidx.compose.ui.node.v;
import androidx.compose.ui.node.w;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.m0;
import o0.t;
import o0.u;

/* JADX INFO: loaded from: classes.dex */
public final class ContentInViewNode extends androidx.compose.ui.f.c implements androidx.compose.foundation.relocation.d, w, androidx.compose.ui.node.d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Orientation f2635n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ScrollingLogic f2636o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f2637p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private d f2638q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f2639r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private androidx.compose.ui.layout.l f2641t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private y.i f2642u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f2643v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f2645x;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final BringIntoViewRequestPriorityQueue f2640s = new BringIntoViewRequestPriorityQueue();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f2644w = t.f70624b.a();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function0 f2646a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final kotlinx.coroutines.n f2647b;

        public a(Function0 function0, kotlinx.coroutines.n nVar) {
            this.f2646a = function0;
            this.f2647b = nVar;
        }

        public final kotlinx.coroutines.n a() {
            return this.f2647b;
        }

        public final Function0 b() {
            return this.f2646a;
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0050  */
        public String toString() {
            String str;
            m0 m0Var = (m0) this.f2647b.getContext().get(m0.f67899b);
            String strD = m0Var != null ? m0Var.d() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Request@");
            String string = Integer.toString(hashCode(), CharsKt.a(16));
            Intrinsics.g(string, "toString(this, checkRadix(radix))");
            sb2.append(string);
            if (strD != null) {
                str = '[' + strD + "](";
                if (str == null) {
                    str = "(";
                }
            } else {
                str = "(";
            }
            sb2.append(str);
            sb2.append("currentBounds()=");
            sb2.append(this.f2646a.invoke());
            sb2.append(", continuation=");
            sb2.append(this.f2647b);
            sb2.append(')');
            return sb2.toString();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2648a;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f2648a = iArr;
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z10, d dVar) {
        this.f2635n = orientation;
        this.f2636o = scrollingLogic;
        this.f2637p = z10;
        this.f2638q = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float N1(d dVar) {
        if (t.e(this.f2644w, t.f70624b.a())) {
            return 0.0f;
        }
        y.i iVarR1 = R1();
        if (iVarR1 == null) {
            iVarR1 = this.f2643v ? S1() : null;
            if (iVarR1 == null) {
                return 0.0f;
            }
        }
        long jD = u.d(this.f2644w);
        int i11 = b.f2648a[this.f2635n.ordinal()];
        if (i11 == 1) {
            return dVar.a(iVarR1.i(), iVarR1.c() - iVarR1.i(), y.m.g(jD));
        }
        if (i11 == 2) {
            return dVar.a(iVarR1.f(), iVarR1.g() - iVarR1.f(), y.m.i(jD));
        }
        throw new NoWhenBranchMatchedException();
    }

    private final int O1(long j11, long j12) {
        int i11 = b.f2648a[this.f2635n.ordinal()];
        if (i11 == 1) {
            return Intrinsics.j(t.f(j11), t.f(j12));
        }
        if (i11 == 2) {
            return Intrinsics.j(t.g(j11), t.g(j12));
        }
        throw new NoWhenBranchMatchedException();
    }

    private final int P1(long j11, long j12) {
        int i11 = b.f2648a[this.f2635n.ordinal()];
        if (i11 == 1) {
            return Float.compare(y.m.g(j11), y.m.g(j12));
        }
        if (i11 == 2) {
            return Float.compare(y.m.i(j11), y.m.i(j12));
        }
        throw new NoWhenBranchMatchedException();
    }

    private final y.i Q1(y.i iVar, long j11) {
        return iVar.q(y.g.u(Y1(iVar, j11)));
    }

    private final y.i R1() {
        androidx.compose.runtime.collection.b bVar = this.f2640s.f2629a;
        int iN = bVar.n();
        y.i iVar = null;
        if (iN > 0) {
            int i11 = iN - 1;
            Object[] objArrM = bVar.m();
            do {
                y.i iVar2 = (y.i) ((a) objArrM[i11]).b().invoke();
                if (iVar2 != null) {
                    if (P1(iVar2.h(), u.d(this.f2644w)) > 0) {
                        return iVar == null ? iVar2 : iVar;
                    }
                    iVar = iVar2;
                }
                i11--;
            } while (i11 >= 0);
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final y.i S1() {
        if (!k1()) {
            return null;
        }
        androidx.compose.ui.layout.l lVarK = androidx.compose.ui.node.g.k(this);
        androidx.compose.ui.layout.l lVar = this.f2641t;
        if (lVar != null) {
            if (!lVar.F()) {
                lVar = null;
            }
            if (lVar != null) {
                return lVarK.O(lVar, false);
            }
        }
        return null;
    }

    private final boolean U1(y.i iVar, long j11) {
        long jY1 = Y1(iVar, j11);
        return Math.abs(y.g.m(jY1)) <= 0.5f && Math.abs(y.g.n(jY1)) <= 0.5f;
    }

    static /* synthetic */ boolean V1(ContentInViewNode contentInViewNode, y.i iVar, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = contentInViewNode.f2644w;
        }
        return contentInViewNode.U1(iVar, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W1() {
        d dVarZ1 = Z1();
        if (this.f2645x) {
            throw new IllegalStateException("launchAnimation called when previous animation was running");
        }
        kotlinx.coroutines.k.d(d1(), null, CoroutineStart.UNDISPATCHED, new ContentInViewNode$launchAnimation$2(this, new UpdatableAnimationState(dVarZ1.b()), dVarZ1, null), 1, null);
    }

    private final long Y1(y.i iVar, long j11) {
        long jD = u.d(j11);
        int i11 = b.f2648a[this.f2635n.ordinal()];
        if (i11 == 1) {
            return y.h.a(0.0f, Z1().a(iVar.i(), iVar.c() - iVar.i(), y.m.g(jD)));
        }
        if (i11 == 2) {
            return y.h.a(Z1().a(iVar.f(), iVar.g() - iVar.f(), y.m.i(jD)), 0.0f);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final d Z1() {
        d dVar = this.f2638q;
        return dVar == null ? (d) androidx.compose.ui.node.e.a(this, BringIntoViewSpec_androidKt.a()) : dVar;
    }

    @Override // androidx.compose.ui.node.w
    public void F(long j11) {
        y.i iVarS1;
        long j12 = this.f2644w;
        this.f2644w = j11;
        if (O1(j11, j12) < 0 && (iVarS1 = S1()) != null) {
            y.i iVar = this.f2642u;
            if (iVar == null) {
                iVar = iVarS1;
            }
            if (!this.f2645x && !this.f2643v && U1(iVar, j12) && !U1(iVarS1, j11)) {
                this.f2643v = true;
                W1();
            }
            this.f2642u = iVarS1;
        }
    }

    @Override // androidx.compose.foundation.relocation.d
    public Object F0(Function0 function0, Continuation continuation) {
        y.i iVar = (y.i) function0.invoke();
        if (iVar == null || V1(this, iVar, 0L, 1, null)) {
            return Unit.f67061a;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (this.f2640s.c(new a(function0, cancellableContinuationImpl)) && !this.f2645x) {
            W1();
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f67061a;
    }

    @Override // androidx.compose.ui.node.w
    public /* synthetic */ void I(androidx.compose.ui.layout.l lVar) {
        v.a(this, lVar);
    }

    public final long T1() {
        return this.f2644w;
    }

    public final void X1(androidx.compose.ui.layout.l lVar) {
        this.f2641t = lVar;
    }

    @Override // androidx.compose.foundation.relocation.d
    public y.i Y(y.i iVar) {
        if (t.e(this.f2644w, t.f70624b.a())) {
            throw new IllegalStateException("Expected BringIntoViewRequester to not be used before parents are placed.");
        }
        return Q1(iVar, this.f2644w);
    }

    public final void a2(Orientation orientation, boolean z10, d dVar) {
        this.f2635n = orientation;
        this.f2637p = z10;
        this.f2638q = dVar;
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f2639r;
    }
}
