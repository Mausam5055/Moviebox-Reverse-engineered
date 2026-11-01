package com.vungle.ads;

import androidx.core.app.NotificationCompat;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/InvalidBannerSizeError;", "Lcom/vungle/ads/VungleError;", NotificationCompat.CATEGORY_MESSAGE, "", "(Ljava/lang/String;)V", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InvalidBannerSizeError extends VungleError {
    /* JADX WARN: Multi-variable type inference failed */
    public InvalidBannerSizeError() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public InvalidBannerSizeError(String str) {
        super(Sdk$SDKError.Reason.BANNER_VIEW_INVALID_SIZE, "Invalidate size for banner ad: " + str, null);
    }

    public /* synthetic */ InvalidBannerSizeError(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str);
    }
}
