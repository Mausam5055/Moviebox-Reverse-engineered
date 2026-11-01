package com.transsion.mpush.core.config;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/transsion/mpush/core/config/MsgShowStatus;", "", "<init>", "()V", "STATUS_OK", "", "STATUS_IMG_ERROR", "STATUS_MSG_EMPTY", "STATUS_NOTIFY_CLOSE", "STATUS_APP_ERROR", "isShowStatus", "", "code", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MsgShowStatus {
    public static final MsgShowStatus INSTANCE = new MsgShowStatus();
    public static final String STATUS_APP_ERROR = "402";
    public static final String STATUS_IMG_ERROR = "201";
    public static final String STATUS_MSG_EMPTY = "301";
    public static final String STATUS_NOTIFY_CLOSE = "401";
    public static final String STATUS_OK = "200";

    private MsgShowStatus() {
    }

    public final boolean isShowStatus(String code) {
        Integer numV;
        return ((code == null || (numV = StringsKt.v(code)) == null) ? 0 : numV.intValue()) < 300;
    }
}
