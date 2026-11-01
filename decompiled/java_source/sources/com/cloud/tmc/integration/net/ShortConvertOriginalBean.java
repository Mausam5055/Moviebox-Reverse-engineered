package com.cloud.tmc.integration.net;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/integration/net/ShortConvertOriginalBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "originalUrl", "", "(Ljava/lang/String;)V", "getOriginalUrl", "()Ljava/lang/String;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortConvertOriginalBean extends BaseBean {
    private final String originalUrl;

    public ShortConvertOriginalBean(String str) {
        this.originalUrl = str;
    }

    public static /* synthetic */ ShortConvertOriginalBean copy$default(ShortConvertOriginalBean shortConvertOriginalBean, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = shortConvertOriginalBean.originalUrl;
        }
        return shortConvertOriginalBean.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOriginalUrl() {
        return this.originalUrl;
    }

    public final ShortConvertOriginalBean copy(String originalUrl) {
        return new ShortConvertOriginalBean(originalUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ShortConvertOriginalBean) && Intrinsics.c(this.originalUrl, ((ShortConvertOriginalBean) other).originalUrl);
    }

    public final String getOriginalUrl() {
        return this.originalUrl;
    }

    public int hashCode() {
        String str = this.originalUrl;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "ShortConvertOriginalBean(originalUrl=" + this.originalUrl + ")";
    }
}
