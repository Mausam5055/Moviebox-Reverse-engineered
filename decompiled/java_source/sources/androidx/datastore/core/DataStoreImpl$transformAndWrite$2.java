package androidx.datastore.core;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\u008a@"}, d2 = {"<anonymous>", "T"}, k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2", f = "DataStoreImpl.kt", l = {330, 331, 337}, m = "invokeSuspend")
final class DataStoreImpl$transformAndWrite$2 extends SuspendLambda implements Function1<Continuation<Object>, Object> {
    final /* synthetic */ CoroutineContext $callerContext;
    final /* synthetic */ Function2<Object, Continuation<Object>, Object> $transform;
    Object L$0;
    int label;
    final /* synthetic */ DataStoreImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DataStoreImpl$transformAndWrite$2(DataStoreImpl dataStoreImpl, CoroutineContext coroutineContext, Function2<Object, ? super Continuation<Object>, ? extends Object> function2, Continuation<? super DataStoreImpl$transformAndWrite$2> continuation) {
        super(1, continuation);
        this.this$0 = dataStoreImpl;
        this.$callerContext = coroutineContext;
        this.$transform = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new DataStoreImpl$transformAndWrite$2(this.this$0, this.$callerContext, this.$transform, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<Object> continuation) {
        return ((DataStoreImpl$transformAndWrite$2) create(continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005e  */
    /* JADX WARN: Code duplicated, block: B:22:0x006a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x006b  */
    /* JADX WARN: Code duplicated, block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        d dVar;
        DataStoreImpl dataStoreImpl;
        Object obj2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
            } else if (i11 == 2) {
                dVar = (d) this.L$0;
                ResultKt.b(obj);
                dVar.b();
                if (!Intrinsics.c(dVar.c(), obj)) {
                    return obj;
                }
                dataStoreImpl = this.this$0;
                this.L$0 = obj;
                this.label = 3;
                if (dataStoreImpl.B(obj, true, this) == objF) {
                    return objF;
                }
                obj2 = obj;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.L$0;
                ResultKt.b(obj);
            }
            return obj2;
        }
        ResultKt.b(obj);
        DataStoreImpl dataStoreImpl2 = this.this$0;
        this.label = 1;
        obj = dataStoreImpl2.y(true, this);
        if (obj == objF) {
            return objF;
        }
        dVar = (d) obj;
        CoroutineContext coroutineContext = this.$callerContext;
        DataStoreImpl$transformAndWrite$2$newData$1 dataStoreImpl$transformAndWrite$2$newData$1 = new DataStoreImpl$transformAndWrite$2$newData$1(this.$transform, dVar, null);
        this.L$0 = dVar;
        this.label = 2;
        obj = kotlinx.coroutines.i.g(coroutineContext, dataStoreImpl$transformAndWrite$2$newData$1, this);
        if (obj == objF) {
            return objF;
        }
        dVar.b();
        if (!Intrinsics.c(dVar.c(), obj)) {
            return obj;
        }
        dataStoreImpl = this.this$0;
        this.L$0 = obj;
        this.label = 3;
        if (dataStoreImpl.B(obj, true, this) == objF) {
            return objF;
        }
        obj2 = obj;
        return obj2;
    }
}
