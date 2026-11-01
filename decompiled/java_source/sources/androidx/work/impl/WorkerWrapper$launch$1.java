package androidx.work.impl;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Z"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.work.impl.WorkerWrapper$launch$1", f = "WorkerWrapper.kt", l = {98}, m = "invokeSuspend")
@SourceDebugExtension
final class WorkerWrapper$launch$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Boolean>, Object> {
    int label;
    final /* synthetic */ WorkerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WorkerWrapper$launch$1(WorkerWrapper workerWrapper, Continuation<? super WorkerWrapper$launch$1> continuation) {
        super(2, continuation);
        this.this$0 = workerWrapper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean d(WorkerWrapper.b bVar, WorkerWrapper workerWrapper) {
        boolean zW;
        if (bVar instanceof WorkerWrapper.b.C0132b) {
            zW = workerWrapper.t(((WorkerWrapper.b.C0132b) bVar).a());
        } else if (bVar instanceof WorkerWrapper.b.a) {
            zW = workerWrapper.s(((WorkerWrapper.b.a) bVar).a());
        } else {
            if (!(bVar instanceof WorkerWrapper.b.c)) {
                throw new NoWhenBranchMatchedException();
            }
            zW = workerWrapper.w(((WorkerWrapper.b.c) bVar).a());
        }
        return Boolean.valueOf(zW);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WorkerWrapper$launch$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Boolean> continuation) {
        return ((WorkerWrapper$launch$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        final WorkerWrapper.b aVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.z zVar = this.this$0.f15527o;
                WorkerWrapper$launch$1$resolution$1 workerWrapper$launch$1$resolution$1 = new WorkerWrapper$launch$1$resolution$1(this.this$0, null);
                this.label = 1;
                obj = kotlinx.coroutines.i.g(zVar, workerWrapper$launch$1$resolution$1, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            aVar = (WorkerWrapper.b) obj;
        } catch (WorkerStoppedException e11) {
            aVar = new WorkerWrapper.b.c(e11.getReason());
        } catch (CancellationException unused) {
            aVar = new WorkerWrapper.b.a(null, 1, null);
        } catch (Throwable th2) {
            androidx.work.t.e().d(r1.f15910a, "Unexpected error in WorkerWrapper", th2);
            aVar = new WorkerWrapper.b.a(null, 1, null);
        }
        WorkDatabase workDatabase = this.this$0.f15522j;
        final WorkerWrapper workerWrapper = this.this$0;
        Object objY = workDatabase.Y(new Callable() { // from class: androidx.work.impl.q1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WorkerWrapper$launch$1.d(aVar, workerWrapper);
            }
        });
        Intrinsics.g(objY, "runInTransaction(...)");
        return objY;
    }
}
