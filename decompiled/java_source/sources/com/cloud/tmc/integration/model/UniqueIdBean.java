package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/model/UniqueIdBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "uniqueId", "", "(Ljava/lang/String;)V", "getUniqueId", "()Ljava/lang/String;", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UniqueIdBean extends BaseBean implements Serializable {
    private final String uniqueId;

    public UniqueIdBean(String uniqueId) {
        Intrinsics.h(uniqueId, "uniqueId");
        this.uniqueId = uniqueId;
    }

    public static /* synthetic */ UniqueIdBean copy$default(UniqueIdBean uniqueIdBean, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uniqueIdBean.uniqueId;
        }
        return uniqueIdBean.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUniqueId() {
        return this.uniqueId;
    }

    public final UniqueIdBean copy(String uniqueId) {
        Intrinsics.h(uniqueId, "uniqueId");
        return new UniqueIdBean(uniqueId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UniqueIdBean) && Intrinsics.c(this.uniqueId, ((UniqueIdBean) other).uniqueId);
    }

    public final String getUniqueId() {
        return this.uniqueId;
    }

    public int hashCode() {
        return this.uniqueId.hashCode();
    }

    public String toString() {
        return "UniqueIdBean(uniqueId=" + this.uniqueId + ")";
    }
}
