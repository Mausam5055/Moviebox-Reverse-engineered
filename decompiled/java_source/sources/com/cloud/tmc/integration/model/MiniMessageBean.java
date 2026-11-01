package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniMessageBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "miniAppInfo", "Lcom/cloud/tmc/integration/model/MiniMsgAppInfoBean;", "(Lcom/cloud/tmc/integration/model/MiniMsgAppInfoBean;)V", "getMiniAppInfo", "()Lcom/cloud/tmc/integration/model/MiniMsgAppInfoBean;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniMessageBean extends BaseBean {
    private final MiniMsgAppInfoBean miniAppInfo;

    public MiniMessageBean(MiniMsgAppInfoBean miniMsgAppInfoBean) {
        this.miniAppInfo = miniMsgAppInfoBean;
    }

    public static /* synthetic */ MiniMessageBean copy$default(MiniMessageBean miniMessageBean, MiniMsgAppInfoBean miniMsgAppInfoBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            miniMsgAppInfoBean = miniMessageBean.miniAppInfo;
        }
        return miniMessageBean.copy(miniMsgAppInfoBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MiniMsgAppInfoBean getMiniAppInfo() {
        return this.miniAppInfo;
    }

    public final MiniMessageBean copy(MiniMsgAppInfoBean miniAppInfo) {
        return new MiniMessageBean(miniAppInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MiniMessageBean) && Intrinsics.c(this.miniAppInfo, ((MiniMessageBean) other).miniAppInfo);
    }

    public final MiniMsgAppInfoBean getMiniAppInfo() {
        return this.miniAppInfo;
    }

    public int hashCode() {
        MiniMsgAppInfoBean miniMsgAppInfoBean = this.miniAppInfo;
        if (miniMsgAppInfoBean == null) {
            return 0;
        }
        return miniMsgAppInfoBean.hashCode();
    }

    public String toString() {
        return "MiniMessageBean(miniAppInfo=" + this.miniAppInfo + ")";
    }
}
