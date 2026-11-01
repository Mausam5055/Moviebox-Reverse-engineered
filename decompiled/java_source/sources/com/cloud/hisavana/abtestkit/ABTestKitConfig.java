package com.cloud.hisavana.abtestkit;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\"B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006#"}, d2 = {"Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;", "", "useTestEnvironment", "", "httpRequestTimeInterval", "", "initCompleteListener", "Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;", "(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V", "getHttpRequestTimeInterval", "()Ljava/lang/Long;", "setHttpRequestTimeInterval", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getInitCompleteListener", "()Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;", "setInitCompleteListener", "(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V", "getUseTestEnvironment", "()Ljava/lang/Boolean;", "setUseTestEnvironment", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "copy", "(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", "Builder", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ABTestKitConfig {
    private Long httpRequestTimeInterval;
    private OnInitCompleteListener initCompleteListener;
    private Boolean useTestEnvironment;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0004J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;", "", "()V", "mHttpRequestTimeInterval", "", "mInitCompleteListener", "Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;", "mUseTestEnvironment", "", "build", "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;", "setHttpRequestTimeInterval", "httpRequestTimeInterval", "setInitCompleteListener", "initCompleteListener", "setUseTestEnvironment", "useTestEnvironment", "abtestkit_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Builder {
        private long mHttpRequestTimeInterval = 259200;
        private OnInitCompleteListener mInitCompleteListener;
        private boolean mUseTestEnvironment;

        public final ABTestKitConfig build() {
            ABTestKitConfig aBTestKitConfig = new ABTestKitConfig(null, null, null, 7, null);
            aBTestKitConfig.setUseTestEnvironment(Boolean.valueOf(this.mUseTestEnvironment));
            aBTestKitConfig.setHttpRequestTimeInterval(Long.valueOf(this.mHttpRequestTimeInterval));
            aBTestKitConfig.setInitCompleteListener(this.mInitCompleteListener);
            return aBTestKitConfig;
        }

        public final Builder setHttpRequestTimeInterval(long httpRequestTimeInterval) {
            this.mHttpRequestTimeInterval = httpRequestTimeInterval;
            return this;
        }

        public final Builder setInitCompleteListener(OnInitCompleteListener initCompleteListener) {
            this.mInitCompleteListener = initCompleteListener;
            return this;
        }

        public final Builder setUseTestEnvironment(boolean useTestEnvironment) {
            this.mUseTestEnvironment = useTestEnvironment;
            return this;
        }
    }

    public ABTestKitConfig() {
        this(null, null, null, 7, null);
    }

    public ABTestKitConfig(Boolean bool, Long l11, OnInitCompleteListener onInitCompleteListener) {
        this.useTestEnvironment = bool;
        this.httpRequestTimeInterval = l11;
        this.initCompleteListener = onInitCompleteListener;
    }

    public /* synthetic */ ABTestKitConfig(Boolean bool, Long l11, OnInitCompleteListener onInitCompleteListener, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : bool, (i11 & 2) != 0 ? null : l11, (i11 & 4) != 0 ? null : onInitCompleteListener);
    }

    public static /* synthetic */ ABTestKitConfig copy$default(ABTestKitConfig aBTestKitConfig, Boolean bool, Long l11, OnInitCompleteListener onInitCompleteListener, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = aBTestKitConfig.useTestEnvironment;
        }
        if ((i11 & 2) != 0) {
            l11 = aBTestKitConfig.httpRequestTimeInterval;
        }
        if ((i11 & 4) != 0) {
            onInitCompleteListener = aBTestKitConfig.initCompleteListener;
        }
        return aBTestKitConfig.copy(bool, l11, onInitCompleteListener);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getUseTestEnvironment() {
        return this.useTestEnvironment;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getHttpRequestTimeInterval() {
        return this.httpRequestTimeInterval;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OnInitCompleteListener getInitCompleteListener() {
        return this.initCompleteListener;
    }

    public final ABTestKitConfig copy(Boolean useTestEnvironment, Long httpRequestTimeInterval, OnInitCompleteListener initCompleteListener) {
        return new ABTestKitConfig(useTestEnvironment, httpRequestTimeInterval, initCompleteListener);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ABTestKitConfig)) {
            return false;
        }
        ABTestKitConfig aBTestKitConfig = (ABTestKitConfig) other;
        return Intrinsics.c(this.useTestEnvironment, aBTestKitConfig.useTestEnvironment) && Intrinsics.c(this.httpRequestTimeInterval, aBTestKitConfig.httpRequestTimeInterval) && Intrinsics.c(this.initCompleteListener, aBTestKitConfig.initCompleteListener);
    }

    public final Long getHttpRequestTimeInterval() {
        return this.httpRequestTimeInterval;
    }

    public final OnInitCompleteListener getInitCompleteListener() {
        return this.initCompleteListener;
    }

    public final Boolean getUseTestEnvironment() {
        return this.useTestEnvironment;
    }

    public int hashCode() {
        Boolean bool = this.useTestEnvironment;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Long l11 = this.httpRequestTimeInterval;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        OnInitCompleteListener onInitCompleteListener = this.initCompleteListener;
        return iHashCode2 + (onInitCompleteListener != null ? onInitCompleteListener.hashCode() : 0);
    }

    public final void setHttpRequestTimeInterval(Long l11) {
        this.httpRequestTimeInterval = l11;
    }

    public final void setInitCompleteListener(OnInitCompleteListener onInitCompleteListener) {
        this.initCompleteListener = onInitCompleteListener;
    }

    public final void setUseTestEnvironment(Boolean bool) {
        this.useTestEnvironment = bool;
    }

    public String toString() {
        return "ABTestKitConfig(useTestEnvironment=" + this.useTestEnvironment + ", httpRequestTimeInterval=" + this.httpRequestTimeInterval + ", initCompleteListener=" + this.initCompleteListener + ')';
    }
}
