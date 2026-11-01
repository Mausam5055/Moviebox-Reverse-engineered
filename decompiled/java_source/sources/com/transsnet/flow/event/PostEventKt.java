package com.transsnet.flow.event;

import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a*\u0010\u0005\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0000\u0018\u00012\u0006\u0010\u0001\u001a\u00028\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002H\u0087\b¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"T", NotificationCompat.CATEGORY_EVENT, "", "timeMillis", "", "postEvent", "(Ljava/lang/Object;J)V", "FlowEvent_release"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PostEventKt {
    @Keep
    public static final /* synthetic */ <T> void postEvent(T t11, long j11) {
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        Intrinsics.n(4, "T");
        String name = Object.class.getName();
        Intrinsics.g(name, "getName(...)");
        Intrinsics.e(t11);
        flowEventBus.postEvent(name, t11, j11);
    }
}
