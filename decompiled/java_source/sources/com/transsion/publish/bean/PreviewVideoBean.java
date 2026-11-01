package com.transsion.publish.bean;

import androidx.annotation.Keep;
import com.transsion.publish.api.VsMediaInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/transsion/publish/bean/PreviewVideoBean;", "Ljava/io/Serializable;", "<init>", "()V", "from", "", "getFrom", "()Ljava/lang/Integer;", "setFrom", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "operator", "getOperator", "setOperator", "select", "Lcom/transsion/publish/api/VsMediaInfo;", "getSelect", "()Lcom/transsion/publish/api/VsMediaInfo;", "setSelect", "(Lcom/transsion/publish/api/VsMediaInfo;)V", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PreviewVideoBean implements Serializable {
    private Integer from = 0;
    private Integer operator = 0;
    private VsMediaInfo select;

    public final Integer getFrom() {
        return this.from;
    }

    public final Integer getOperator() {
        return this.operator;
    }

    public final VsMediaInfo getSelect() {
        return this.select;
    }

    public final void setFrom(Integer num) {
        this.from = num;
    }

    public final void setOperator(Integer num) {
        this.operator = num;
    }

    public final void setSelect(VsMediaInfo vsMediaInfo) {
        this.select = vsMediaInfo;
    }
}
