package kotlin;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0016¢\u0006\u0002\u0010\nR\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000b¸\u0006\u0000"}, d2 = {"kotlin/coroutines/ContinuationKt$Continuation$1", "Lkotlin/coroutines/Continuation;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "resumeWith", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DeepRecursiveScopeImpl$crossFunctionCompletion$$inlined$Continuation$1 implements Continuation<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ CoroutineContext f67028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f67029b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Function3 f67030c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Continuation f67031d;

    @Override // kotlin.coroutines.Continuation
    /* JADX INFO: renamed from: getContext, reason: from getter */
    public CoroutineContext getF67028a() {
        return this.f67028a;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) {
        this.f67029b.f67063a = this.f67030c;
        this.f67029b.f67065c = this.f67031d;
        this.f67029b.f67066d = result;
    }
}
