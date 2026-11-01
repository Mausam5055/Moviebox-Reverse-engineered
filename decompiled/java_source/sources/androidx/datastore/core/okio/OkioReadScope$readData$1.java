package androidx.datastore.core.okio;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.datastore.core.okio.OkioReadScope", f = "OkioStorage.kt", l = {180, 187}, m = "readData$suspendImpl")
final class OkioReadScope$readData$1<T> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ OkioReadScope this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OkioReadScope$readData$1(OkioReadScope okioReadScope, Continuation<? super OkioReadScope$readData$1> continuation) {
        super(continuation);
        this.this$0 = okioReadScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return OkioReadScope.j(this.this$0, this);
    }
}
