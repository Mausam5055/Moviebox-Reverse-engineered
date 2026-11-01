package androidx.work.impl;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/c;", "", "", "throwable", "", "attempt", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;J)Z"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1", f = "UnfinishedWorkListener.kt", l = {59}, m = "invokeSuspend")
final class UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1 extends SuspendLambda implements Function4<kotlinx.coroutines.flow.c, Throwable, Long, Continuation<? super Boolean>, Object> {
    /* synthetic */ long J$0;
    /* synthetic */ Object L$0;
    int label;

    UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(Continuation<? super UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1> continuation) {
        super(4, continuation);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return invoke((kotlinx.coroutines.flow.c) obj, (Throwable) obj2, ((Number) obj3).longValue(), (Continuation<? super Boolean>) obj4);
    }

    public final Object invoke(kotlinx.coroutines.flow.c cVar, Throwable th2, long j11, Continuation<? super Boolean> continuation) {
        UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1 unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1 = new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(continuation);
        unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1.L$0 = th2;
        unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1.J$0 = j11;
        return unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1.invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Throwable th2 = (Throwable) this.L$0;
            long j11 = this.J$0;
            androidx.work.t.e().d(UnfinishedWorkListenerKt.f15501a, "Cannot check for unfinished work", th2);
            long jMin = Math.min(j11 * ((long) 30000), UnfinishedWorkListenerKt.f15502b);
            this.label = 1;
            if (kotlinx.coroutines.u0.a(jMin, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Boxing.a(true);
    }
}
