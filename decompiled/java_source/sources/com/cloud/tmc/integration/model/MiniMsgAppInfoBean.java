package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniMsgAppInfoBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", TmcConstants.KEY_MINI_APPID, "", "miniappName", "(Ljava/lang/String;Ljava/lang/String;)V", "getMiniappId", "()Ljava/lang/String;", "getMiniappName", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniMsgAppInfoBean extends BaseBean {
    private final String miniappId;
    private final String miniappName;

    public MiniMsgAppInfoBean(String str, String str2) {
        this.miniappId = str;
        this.miniappName = str2;
    }

    public static /* synthetic */ MiniMsgAppInfoBean copy$default(MiniMsgAppInfoBean miniMsgAppInfoBean, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = miniMsgAppInfoBean.miniappId;
        }
        if ((i11 & 2) != 0) {
            str2 = miniMsgAppInfoBean.miniappName;
        }
        return miniMsgAppInfoBean.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMiniappId() {
        return this.miniappId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMiniappName() {
        return this.miniappName;
    }

    public final MiniMsgAppInfoBean copy(String miniappId, String miniappName) {
        return new MiniMsgAppInfoBean(miniappId, miniappName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniMsgAppInfoBean)) {
            return false;
        }
        MiniMsgAppInfoBean miniMsgAppInfoBean = (MiniMsgAppInfoBean) other;
        return Intrinsics.c(this.miniappId, miniMsgAppInfoBean.miniappId) && Intrinsics.c(this.miniappName, miniMsgAppInfoBean.miniappName);
    }

    public final String getMiniappId() {
        return this.miniappId;
    }

    public final String getMiniappName() {
        return this.miniappName;
    }

    public int hashCode() {
        String str = this.miniappId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.miniappName;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "MiniMsgAppInfoBean(miniappId=" + this.miniappId + ", miniappName=" + this.miniappName + ")";
    }
}
