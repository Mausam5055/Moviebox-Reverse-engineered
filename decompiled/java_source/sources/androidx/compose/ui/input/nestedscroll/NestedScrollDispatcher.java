package androidx.compose.ui.input.nestedscroll;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.n0;
import o0.z;
import y.g;

/* JADX INFO: loaded from: classes.dex */
public final class NestedScrollDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NestedScrollNode f4931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Function0 f4932b = new Function0<n0>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$calculateNestedScrollScope$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final n0 invoke() {
            return this.this$0.h();
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n0 f4933c;

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object a(long j11, long j12, Continuation continuation) throws Throwable {
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$1;
        long jA;
        if (continuation instanceof NestedScrollDispatcher$dispatchPostFling$1) {
            nestedScrollDispatcher$dispatchPostFling$1 = (NestedScrollDispatcher$dispatchPostFling$1) continuation;
            int i11 = nestedScrollDispatcher$dispatchPostFling$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPostFling$1.label = i11 - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPostFling$1 = new NestedScrollDispatcher$dispatchPostFling$1(this, continuation);
            }
        } else {
            nestedScrollDispatcher$dispatchPostFling$1 = new NestedScrollDispatcher$dispatchPostFling$1(this, continuation);
        }
        NestedScrollDispatcher$dispatchPostFling$1 nestedScrollDispatcher$dispatchPostFling$2 = nestedScrollDispatcher$dispatchPostFling$1;
        Object objG = nestedScrollDispatcher$dispatchPostFling$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = nestedScrollDispatcher$dispatchPostFling$2.label;
        if (i12 == 0) {
            ResultKt.b(objG);
            b bVarG = g();
            if (bVarG != null) {
                nestedScrollDispatcher$dispatchPostFling$2.label = 1;
                objG = bVarG.G(j11, j12, nestedScrollDispatcher$dispatchPostFling$2);
                if (objG == objF) {
                    return objF;
                }
            } else {
                jA = z.f70637b.a();
            }
            return z.b(jA);
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objG);
        jA = ((z) objG).n();
        return z.b(jA);
    }

    public final long b(long j11, long j12, int i11) {
        b bVarG = g();
        return bVarG != null ? bVarG.g0(j11, j12, i11) : g.f78470b.c();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(long j11, Continuation continuation) throws Throwable {
        NestedScrollDispatcher$dispatchPreFling$1 nestedScrollDispatcher$dispatchPreFling$1;
        long jA;
        if (continuation instanceof NestedScrollDispatcher$dispatchPreFling$1) {
            nestedScrollDispatcher$dispatchPreFling$1 = (NestedScrollDispatcher$dispatchPreFling$1) continuation;
            int i11 = nestedScrollDispatcher$dispatchPreFling$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPreFling$1.label = i11 - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, continuation);
            }
        } else {
            nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, continuation);
        }
        Object objI0 = nestedScrollDispatcher$dispatchPreFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = nestedScrollDispatcher$dispatchPreFling$1.label;
        if (i12 == 0) {
            ResultKt.b(objI0);
            b bVarG = g();
            if (bVarG != null) {
                nestedScrollDispatcher$dispatchPreFling$1.label = 1;
                objI0 = bVarG.I0(j11, nestedScrollDispatcher$dispatchPreFling$1);
                if (objI0 == objF) {
                    return objF;
                }
            } else {
                jA = z.f70637b.a();
            }
            return z.b(jA);
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objI0);
        jA = ((z) objI0).n();
        return z.b(jA);
    }

    public final long d(long j11, int i11) {
        b bVarG = g();
        return bVarG != null ? bVarG.B0(j11, i11) : g.f78470b.c();
    }

    public final n0 e() {
        n0 n0Var = (n0) this.f4932b.invoke();
        if (n0Var != null) {
            return n0Var;
        }
        throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
    }

    public final NestedScrollNode f() {
        return this.f4931a;
    }

    public final b g() {
        NestedScrollNode nestedScrollNode = this.f4931a;
        if (nestedScrollNode != null) {
            return nestedScrollNode.G1();
        }
        return null;
    }

    public final n0 h() {
        return this.f4933c;
    }

    public final void i(Function0 function0) {
        this.f4932b = function0;
    }

    public final void j(NestedScrollNode nestedScrollNode) {
        this.f4931a = nestedScrollNode;
    }

    public final void k(n0 n0Var) {
        this.f4933c = n0Var;
    }
}
