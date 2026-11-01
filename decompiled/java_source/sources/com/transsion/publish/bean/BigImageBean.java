package com.transsion.publish.bean;

import androidx.annotation.Keep;
import com.transsion.publish.api.PhotoEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/transsion/publish/bean/BigImageBean;", "Ljava/io/Serializable;", "<init>", "()V", "from", "", "getFrom", "()Ljava/lang/Integer;", "setFrom", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "operator", "getOperator", "setOperator", "select", "", "Lcom/transsion/publish/api/PhotoEntity;", "getSelect", "()Ljava/util/List;", "setSelect", "(Ljava/util/List;)V", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BigImageBean implements Serializable {
    private Integer from = 0;
    private Integer operator = 0;
    private List<PhotoEntity> select;

    public final Integer getFrom() {
        return this.from;
    }

    public final Integer getOperator() {
        return this.operator;
    }

    public final List<PhotoEntity> getSelect() {
        return this.select;
    }

    public final void setFrom(Integer num) {
        this.from = num;
    }

    public final void setOperator(Integer num) {
        this.operator = num;
    }

    public final void setSelect(List<PhotoEntity> list) {
        this.select = list;
    }
}
