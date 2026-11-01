package androidx.compose.foundation.lazy.layout;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class AwaitFirstLayoutModifier implements androidx.compose.ui.layout.b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Continuation f2956c;

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) throws Throwable {
        AwaitFirstLayoutModifier$waitForFirstLayout$1 awaitFirstLayoutModifier$waitForFirstLayout$1;
        Continuation continuation2;
        if (continuation instanceof AwaitFirstLayoutModifier$waitForFirstLayout$1) {
            awaitFirstLayoutModifier$waitForFirstLayout$1 = (AwaitFirstLayoutModifier$waitForFirstLayout$1) continuation;
            int i11 = awaitFirstLayoutModifier$waitForFirstLayout$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                awaitFirstLayoutModifier$waitForFirstLayout$1.label = i11 - Integer.MIN_VALUE;
            } else {
                awaitFirstLayoutModifier$waitForFirstLayout$1 = new AwaitFirstLayoutModifier$waitForFirstLayout$1(this, continuation);
            }
        } else {
            awaitFirstLayoutModifier$waitForFirstLayout$1 = new AwaitFirstLayoutModifier$waitForFirstLayout$1(this, continuation);
        }
        Object obj = awaitFirstLayoutModifier$waitForFirstLayout$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = awaitFirstLayoutModifier$waitForFirstLayout$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (!this.f2955b) {
                Continuation continuation3 = this.f2956c;
                awaitFirstLayoutModifier$waitForFirstLayout$1.L$0 = this;
                awaitFirstLayoutModifier$waitForFirstLayout$1.L$1 = continuation3;
                awaitFirstLayoutModifier$waitForFirstLayout$1.label = 1;
                SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.c(awaitFirstLayoutModifier$waitForFirstLayout$1));
                this.f2956c = safeContinuation;
                Object objA = safeContinuation.a();
                if (objA == IntrinsicsKt.f()) {
                    DebugProbesKt.c(awaitFirstLayoutModifier$waitForFirstLayout$1);
                }
                if (objA == objF) {
                    return objF;
                }
                continuation2 = continuation3;
            }
            return Unit.f67061a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        continuation2 = (Continuation) awaitFirstLayoutModifier$waitForFirstLayout$1.L$1;
        ResultKt.b(obj);
        if (continuation2 != null) {
            Result.Companion companion = Result.INSTANCE;
            continuation2.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
        return Unit.f67061a;
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override // androidx.compose.ui.layout.b0
    public void v(androidx.compose.ui.layout.l lVar) {
        if (this.f2955b) {
            return;
        }
        this.f2955b = true;
        Continuation continuation = this.f2956c;
        if (continuation != null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
        this.f2956c = null;
    }
}
