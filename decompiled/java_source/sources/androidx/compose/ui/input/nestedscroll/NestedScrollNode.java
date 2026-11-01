package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.f;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import o0.z;
import y.g;

/* JADX INFO: loaded from: classes.dex */
public final class NestedScrollNode extends f.c implements m1, b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private b f4936n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private NestedScrollDispatcher f4937o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object f4938p;

    public NestedScrollNode(b bVar, NestedScrollDispatcher nestedScrollDispatcher) {
        this.f4936n = bVar;
        this.f4937o = nestedScrollDispatcher == null ? new NestedScrollDispatcher() : nestedScrollDispatcher;
        this.f4938p = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n0 E1() {
        n0 n0VarH;
        NestedScrollNode nestedScrollNodeG1 = G1();
        if ((nestedScrollNodeG1 == null || (n0VarH = nestedScrollNodeG1.E1()) == null) && (n0VarH = this.f4937o.h()) == null) {
            throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        }
        return n0VarH;
    }

    private final b F1() {
        if (k1()) {
            return G1();
        }
        return null;
    }

    private final void H1() {
        if (this.f4937o.f() == this) {
            this.f4937o.j(null);
        }
    }

    private final void I1(NestedScrollDispatcher nestedScrollDispatcher) {
        H1();
        if (nestedScrollDispatcher == null) {
            this.f4937o = new NestedScrollDispatcher();
        } else if (!Intrinsics.c(nestedScrollDispatcher, this.f4937o)) {
            this.f4937o = nestedScrollDispatcher;
        }
        if (k1()) {
            J1();
        }
    }

    private final void J1() {
        this.f4937o.j(this);
        this.f4937o.i(new Function0<n0>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollNode$updateDispatcherFields$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final n0 invoke() {
                return this.this$0.E1();
            }
        });
        this.f4937o.k(d1());
    }

    @Override // androidx.compose.ui.input.nestedscroll.b
    public long B0(long j11, int i11) {
        b bVarF1 = F1();
        long jB0 = bVarF1 != null ? bVarF1.B0(j11, i11) : g.f78470b.c();
        return g.r(jB0, this.f4936n.B0(g.q(j11, jB0), i11));
    }

    @Override // androidx.compose.ui.node.m1
    public Object D() {
        return this.f4938p;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    @Override // androidx.compose.ui.input.nestedscroll.b
    public Object G(long j11, long j12, Continuation continuation) throws Throwable {
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$1;
        long j13;
        long j14;
        NestedScrollNode nestedScrollNode;
        long j15;
        long jA;
        long j16;
        if (continuation instanceof NestedScrollNode$onPostFling$1) {
            nestedScrollNode$onPostFling$1 = (NestedScrollNode$onPostFling$1) continuation;
            int i11 = nestedScrollNode$onPostFling$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPostFling$1.label = i11 - Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, continuation);
            }
        } else {
            nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, continuation);
        }
        Object objG = nestedScrollNode$onPostFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = nestedScrollNode$onPostFling$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                long j17 = nestedScrollNode$onPostFling$1.J$1;
                long j18 = nestedScrollNode$onPostFling$1.J$0;
                nestedScrollNode = (NestedScrollNode) nestedScrollNode$onPostFling$1.L$0;
                ResultKt.b(objG);
                j14 = j17;
                j13 = j18;
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j16 = nestedScrollNode$onPostFling$1.J$0;
                ResultKt.b(objG);
            }
            jA = ((z) objG).n();
            j15 = j16;
            return z.b(z.l(j15, jA));
        }
        ResultKt.b(objG);
        b bVar = this.f4936n;
        nestedScrollNode$onPostFling$1.L$0 = this;
        j13 = j11;
        nestedScrollNode$onPostFling$1.J$0 = j13;
        j14 = j12;
        nestedScrollNode$onPostFling$1.J$1 = j14;
        nestedScrollNode$onPostFling$1.label = 1;
        objG = bVar.G(j11, j12, nestedScrollNode$onPostFling$1);
        if (objG == objF) {
            return objF;
        }
        nestedScrollNode = this;
        long jN = ((z) objG).n();
        b bVarF1 = nestedScrollNode.F1();
        if (bVarF1 != null) {
            long jL = z.l(j13, jN);
            long jK = z.k(j14, jN);
            nestedScrollNode$onPostFling$1.L$0 = null;
            nestedScrollNode$onPostFling$1.J$0 = jN;
            nestedScrollNode$onPostFling$1.label = 2;
            objG = bVarF1.G(jL, jK, nestedScrollNode$onPostFling$1);
            if (objG == objF) {
                return objF;
            }
            j16 = jN;
            jA = ((z) objG).n();
            j15 = j16;
        } else {
            j15 = jN;
            jA = z.f70637b.a();
        }
        return z.b(z.l(j15, jA));
    }

    public final NestedScrollNode G1() {
        if (k1()) {
            return (NestedScrollNode) n1.b(this);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.ui.input.nestedscroll.b
    public Object I0(long j11, Continuation continuation) throws Throwable {
        NestedScrollNode$onPreFling$1 nestedScrollNode$onPreFling$1;
        long jA;
        NestedScrollNode nestedScrollNode;
        long j12;
        if (continuation instanceof NestedScrollNode$onPreFling$1) {
            nestedScrollNode$onPreFling$1 = (NestedScrollNode$onPreFling$1) continuation;
            int i11 = nestedScrollNode$onPreFling$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPreFling$1.label = i11 - Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, continuation);
            }
        } else {
            nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, continuation);
        }
        Object objI0 = nestedScrollNode$onPreFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = nestedScrollNode$onPreFling$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                j11 = nestedScrollNode$onPreFling$1.J$0;
                nestedScrollNode = (NestedScrollNode) nestedScrollNode$onPreFling$1.L$0;
                ResultKt.b(objI0);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j12 = nestedScrollNode$onPreFling$1.J$0;
                ResultKt.b(objI0);
            }
            return z.b(z.l(j12, ((z) objI0).n()));
        }
        ResultKt.b(objI0);
        b bVarF1 = F1();
        if (bVarF1 != null) {
            nestedScrollNode$onPreFling$1.L$0 = this;
            nestedScrollNode$onPreFling$1.J$0 = j11;
            nestedScrollNode$onPreFling$1.label = 1;
            objI0 = bVarF1.I0(j11, nestedScrollNode$onPreFling$1);
            if (objI0 == objF) {
                return objF;
            }
            nestedScrollNode = this;
        } else {
            jA = z.f70637b.a();
            nestedScrollNode = this;
        }
        long j13 = j11;
        j12 = jA;
        b bVar = nestedScrollNode.f4936n;
        long jK = z.k(j13, j12);
        nestedScrollNode$onPreFling$1.L$0 = null;
        nestedScrollNode$onPreFling$1.J$0 = j12;
        nestedScrollNode$onPreFling$1.label = 2;
        objI0 = bVar.I0(jK, nestedScrollNode$onPreFling$1);
        if (objI0 == objF) {
            return objF;
        }
        return z.b(z.l(j12, ((z) objI0).n()));
        jA = ((z) objI0).n();
        long j14 = j11;
        j12 = jA;
        b bVar2 = nestedScrollNode.f4936n;
        long jK2 = z.k(j14, j12);
        nestedScrollNode$onPreFling$1.L$0 = null;
        nestedScrollNode$onPreFling$1.J$0 = j12;
        nestedScrollNode$onPreFling$1.label = 2;
        objI0 = bVar2.I0(jK2, nestedScrollNode$onPreFling$1);
        if (objI0 == objF) {
            return objF;
        }
        return z.b(z.l(j12, ((z) objI0).n()));
    }

    public final void K1(b bVar, NestedScrollDispatcher nestedScrollDispatcher) {
        this.f4936n = bVar;
        I1(nestedScrollDispatcher);
    }

    @Override // androidx.compose.ui.input.nestedscroll.b
    public long g0(long j11, long j12, int i11) {
        long jG0 = this.f4936n.g0(j11, j12, i11);
        b bVarF1 = F1();
        return g.r(jG0, bVarF1 != null ? bVarF1.g0(g.r(j11, jG0), g.q(j12, jG0), i11) : g.f78470b.c());
    }

    @Override // androidx.compose.ui.f.c
    public void n1() {
        J1();
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        H1();
    }
}
