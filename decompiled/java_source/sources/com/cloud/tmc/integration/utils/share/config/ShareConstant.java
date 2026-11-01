package com.cloud.tmc.integration.utils.share.config;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;", "", "()V", "SHARE_CHANNEL_SYSTEM", "", "SHARE_STATUS_COMPLETE", "SHARE_STATUS_FAILED", "SHARE_TYPE_IMAGE", "", "SHARE_TYPE_PDF", "SHARE_TYPE_TEXT", "SHARE_TYPE_VIDEO", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShareConstant {
    public static final ShareConstant INSTANCE = new ShareConstant();
    public static final int SHARE_CHANNEL_SYSTEM = 1;
    public static final int SHARE_STATUS_COMPLETE = 1;
    public static final int SHARE_STATUS_FAILED = 2;
    public static final String SHARE_TYPE_IMAGE = "image/*";
    public static final String SHARE_TYPE_PDF = "application/pdf";
    public static final String SHARE_TYPE_TEXT = "text/plain";
    public static final String SHARE_TYPE_VIDEO = "video/*";

    private ShareConstant() {
    }
}
