package androidx.room;

import com.cloud.tmc.miniapp.bridge.PermissionScopeBridge;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.room.ObservedTableVersions", f = "InvalidationTracker.kt", l = {PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_NOT_FOUND}, m = "collect")
final class ObservedTableVersions$collect$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ObservedTableVersions this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ObservedTableVersions$collect$1(ObservedTableVersions observedTableVersions, Continuation<? super ObservedTableVersions$collect$1> continuation) {
        super(continuation);
        this.this$0 = observedTableVersions;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(null, this);
    }
}
