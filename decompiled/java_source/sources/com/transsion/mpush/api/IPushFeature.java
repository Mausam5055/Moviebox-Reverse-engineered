package com.transsion.mpush.api;

import android.content.Context;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u0001H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016¨\u0006\u0010"}, d2 = {"Lcom/transsion/mpush/api/IPushFeature;", "", "init", "", "context", "Landroid/content/Context;", "onTrigger", EventConstants.KEY_SOURCE, "", "onMessageReceive", "msgId", "", "message", "refreshMessage", "", PushConstants.PROVIDER_FIELD_DESTROY, "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IPushFeature {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static void destroy(IPushFeature iPushFeature) {
        }

        public static void onMessageReceive(IPushFeature iPushFeature, String msgId, Object obj) {
            Intrinsics.h(msgId, "msgId");
        }

        public static boolean refreshMessage(IPushFeature iPushFeature, Object message) {
            Intrinsics.h(message, "message");
            return false;
        }
    }

    void destroy();

    void init(Context context);

    void onMessageReceive(String msgId, Object message);

    void onTrigger(int source);

    boolean refreshMessage(Object message);
}
