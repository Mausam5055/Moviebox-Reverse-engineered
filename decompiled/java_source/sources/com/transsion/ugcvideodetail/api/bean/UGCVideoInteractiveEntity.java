package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveEntity;", "Ljava/io/Serializable;", "<init>", "()V", "ugcVideoId", "", "getUgcVideoId", "()Ljava/lang/String;", "setUgcVideoId", "(Ljava/lang/String;)V", "reqType", "", "getReqType", "()I", "setReqType", "(I)V", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCVideoInteractiveEntity implements Serializable {
    private int reqType;
    private String ugcVideoId;

    public final int getReqType() {
        return this.reqType;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final void setReqType(int i11) {
        this.reqType = i11;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }
}
