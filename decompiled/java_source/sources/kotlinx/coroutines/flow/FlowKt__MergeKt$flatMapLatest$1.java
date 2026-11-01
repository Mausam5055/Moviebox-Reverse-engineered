package kotlinx.coroutines.flow;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0015\u0010\u0006\u001a\u00118\u0001¢\u0006\f\b\u0003\u0012\b\b\u0004\u0012\u0004\b\b(\u0005H\n"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/c;", "Lkotlin/ParameterName;", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE, "it", "", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1", f = "Merge.kt", l = {PsExtractor.PRIVATE_STREAM_1, PsExtractor.PRIVATE_STREAM_1}, m = "invokeSuspend")
public final class FlowKt__MergeKt$flatMapLatest$1 extends SuspendLambda implements Function3<c, Object, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<Object, Continuation<? super b>, Object> $transform;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__MergeKt$flatMapLatest$1(Function2<Object, ? super Continuation<? super b>, ? extends Object> function2, Continuation<? super FlowKt__MergeKt$flatMapLatest$1> continuation) {
        super(3, continuation);
        this.$transform = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(c cVar, Object obj, Continuation<? super Unit> continuation) {
        FlowKt__MergeKt$flatMapLatest$1 flowKt__MergeKt$flatMapLatest$1 = new FlowKt__MergeKt$flatMapLatest$1(this.$transform, continuation);
        flowKt__MergeKt$flatMapLatest$1.L$0 = cVar;
        flowKt__MergeKt$flatMapLatest$1.L$1 = obj;
        return flowKt__MergeKt$flatMapLatest$1.invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        c cVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                cVar = (c) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        cVar = (c) this.L$0;
        Object obj2 = this.L$1;
        Function2<Object, Continuation<? super b>, Object> function2 = this.$transform;
        this.L$0 = cVar;
        this.label = 1;
        obj = function2.invoke(obj2, this);
        if (obj == objF) {
            return objF;
        }
        this.L$0 = null;
        this.label = 2;
        if (d.n(cVar, (b) obj, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        c cVar = (c) this.L$0;
        b bVar = (b) this.$transform.invoke(this.L$1, this);
        InlineMarker.c(0);
        d.n(cVar, bVar, this);
        InlineMarker.c(1);
        return Unit.f67061a;
    }
}
