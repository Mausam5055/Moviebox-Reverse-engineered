package kotlin;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.RestrictsSuspension;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
@SinceKotlin
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\t\b\u0004¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0007\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00028\u0000H¦@¢\u0006\u0004\b\u0007\u0010\b\u0082\u0001\u0001\t¨\u0006\n"}, d2 = {"Lkotlin/DeepRecursiveScope;", "T", "R", "", "<init>", "()V", AppMeasurementSdk.ConditionalUserProperty.VALUE, "a", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/a;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@RestrictsSuspension
@WasExperimental
public abstract class DeepRecursiveScope<T, R> {
    private DeepRecursiveScope() {
    }

    public /* synthetic */ DeepRecursiveScope(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract Object a(Object obj, Continuation continuation);
}
