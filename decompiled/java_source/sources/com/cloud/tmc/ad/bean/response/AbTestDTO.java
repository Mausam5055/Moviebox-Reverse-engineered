package com.cloud.tmc.ad.bean.response;

import com.cloud.tmc.kernel.model.BaseBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/ad/bean/response/AbTestDTO;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "()V", "expId", "", "Ljava/lang/Integer;", "layerId", "varId", "getExpId", "getLayerId", "getVarId", "toString", "", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AbTestDTO extends BaseBean {
    private final Integer expId;
    private final Integer layerId;
    private final Integer varId;

    public final int getExpId() {
        Integer num = this.expId;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final int getLayerId() {
        Integer num = this.layerId;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final int getVarId() {
        Integer num = this.varId;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public String toString() {
        return "AbTestDTO{varId=" + this.varId + ", expId=" + this.expId + ", layerId=" + this.layerId + "}";
    }
}
