package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes7.dex */
final class k1 extends kotlinx.coroutines.flow.internal.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f67822a = new AtomicReference(null);

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(StateFlowImpl stateFlowImpl) {
        if (kotlinx.coroutines.internal.c.a(this.f67822a) != null) {
            return false;
        }
        kotlinx.coroutines.internal.c.b(this.f67822a, j1.f67820a);
        return true;
    }

    public final Object e(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (!androidx.compose.animation.core.j0.a(this.f67822a, j1.f67820a, cancellableContinuationImpl)) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m454constructorimpl(Unit.f67061a));
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f67061a;
    }

    @Override // kotlinx.coroutines.flow.internal.c
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Continuation[] b(StateFlowImpl stateFlowImpl) {
        kotlinx.coroutines.internal.c.b(this.f67822a, null);
        return kotlinx.coroutines.flow.internal.b.f67807a;
    }

    public final void g() {
        AtomicReference atomicReference = this.f67822a;
        while (true) {
            Object objA = kotlinx.coroutines.internal.c.a(atomicReference);
            if (objA == null || objA == j1.f67821b) {
                return;
            }
            if (objA == j1.f67820a) {
                if (androidx.compose.animation.core.j0.a(this.f67822a, objA, j1.f67821b)) {
                    return;
                }
            } else if (androidx.compose.animation.core.j0.a(this.f67822a, objA, j1.f67820a)) {
                Result.Companion companion = Result.INSTANCE;
                ((CancellableContinuationImpl) objA).resumeWith(Result.m454constructorimpl(Unit.f67061a));
                return;
            }
        }
    }

    public final boolean h() {
        Object andSet = this.f67822a.getAndSet(j1.f67820a);
        Intrinsics.e(andSet);
        return andSet == j1.f67821b;
    }
}
