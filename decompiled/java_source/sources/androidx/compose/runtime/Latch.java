package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class Latch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3613a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f3614b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f3615c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3616d = true;

    public final Object c(Continuation continuation) {
        if (e()) {
            return Unit.f67061a;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this.f3613a) {
            this.f3614b.add(cancellableContinuationImpl);
        }
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.compose.runtime.Latch$await$2$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return Unit.f67061a;
            }

            public final void invoke(Throwable th2) {
                Object obj = this.this$0.f3613a;
                Latch latch = this.this$0;
                kotlinx.coroutines.n nVar = cancellableContinuationImpl;
                synchronized (obj) {
                    latch.f3614b.remove(nVar);
                    Unit unit = Unit.f67061a;
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result == IntrinsicsKt.f() ? result : Unit.f67061a;
    }

    public final void d() {
        synchronized (this.f3613a) {
            this.f3616d = false;
            Unit unit = Unit.f67061a;
        }
    }

    public final boolean e() {
        boolean z10;
        synchronized (this.f3613a) {
            z10 = this.f3616d;
        }
        return z10;
    }

    public final void f() {
        synchronized (this.f3613a) {
            try {
                if (e()) {
                    return;
                }
                List list = this.f3614b;
                this.f3614b = this.f3615c;
                this.f3615c = list;
                this.f3616d = true;
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    Continuation continuation = (Continuation) list.get(i11);
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m454constructorimpl(Unit.f67061a));
                }
                list.clear();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
