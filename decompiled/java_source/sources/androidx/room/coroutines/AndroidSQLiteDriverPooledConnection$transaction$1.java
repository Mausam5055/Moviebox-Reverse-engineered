package androidx.room.coroutines;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.room.coroutines.AndroidSQLiteDriverPooledConnection", f = "AndroidSQLiteDriverConnectionPool.android.kt", l = {87}, m = "transaction")
final class AndroidSQLiteDriverPooledConnection$transaction$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidSQLiteDriverPooledConnection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidSQLiteDriverPooledConnection$transaction$1(AndroidSQLiteDriverPooledConnection androidSQLiteDriverPooledConnection, Continuation<? super AndroidSQLiteDriverPooledConnection$transaction$1> continuation) {
        super(continuation);
        this.this$0 = androidSQLiteDriverPooledConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.g(null, null, this);
    }
}
