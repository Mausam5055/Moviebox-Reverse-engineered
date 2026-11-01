package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/model/CSMKBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "continueShow", "", "(Z)V", "getContinueShow", "()Z", "setContinueShow", "component1", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CSMKBean extends BaseBean {
    private boolean continueShow;

    public CSMKBean(boolean z10) {
        this.continueShow = z10;
    }

    public static /* synthetic */ CSMKBean copy$default(CSMKBean cSMKBean, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = cSMKBean.continueShow;
        }
        return cSMKBean.copy(z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getContinueShow() {
        return this.continueShow;
    }

    public final CSMKBean copy(boolean continueShow) {
        return new CSMKBean(continueShow);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CSMKBean) && this.continueShow == ((CSMKBean) other).continueShow;
    }

    public final boolean getContinueShow() {
        return this.continueShow;
    }

    public int hashCode() {
        boolean z10 = this.continueShow;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final void setContinueShow(boolean z10) {
        this.continueShow = z10;
    }

    public String toString() {
        return "CSMKBean(continueShow=" + this.continueShow + ")";
    }
}
