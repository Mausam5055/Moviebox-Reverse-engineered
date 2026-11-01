package kotlinx.coroutines.channels;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
/* synthetic */ class BufferedChannel$bindCancellationFunResult$1 extends FunctionReferenceImpl implements Function3<Throwable, h, CoroutineContext, Unit> {
    BufferedChannel$bindCancellationFunResult$1(Object obj) {
        super(3, obj, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        m471invoke5_sEAP8((Throwable) obj, ((h) obj2).k(), (CoroutineContext) obj3);
        return Unit.f67061a;
    }

    /* JADX INFO: renamed from: invoke-5_sEAP8, reason: not valid java name */
    public final void m471invoke5_sEAP8(Throwable th2, Object obj, CoroutineContext coroutineContext) {
        ((BufferedChannel) this.receiver).D0(th2, obj, coroutineContext);
    }
}
