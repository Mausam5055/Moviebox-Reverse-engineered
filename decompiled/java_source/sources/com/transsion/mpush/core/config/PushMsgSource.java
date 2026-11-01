package com.transsion.mpush.core.config;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/transsion/mpush/core/config/PushMsgSource;", "", "<init>", "()V", "SOURCE_PUSH", "", "SOURCE_FCM_PUSH", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PushMsgSource {
    public static final PushMsgSource INSTANCE = new PushMsgSource();
    public static final String SOURCE_FCM_PUSH = "fcm_push";
    public static final String SOURCE_PUSH = "push";

    private PushMsgSource() {
    }
}
