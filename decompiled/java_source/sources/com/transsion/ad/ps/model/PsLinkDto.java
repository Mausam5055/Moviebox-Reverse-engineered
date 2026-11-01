package com.transsion.ad.ps.model;

import androidx.core.app.NotificationCompat;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR&\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/transsion/ad/ps/model/PsLinkDto;", "Ljava/io/Serializable;", "<init>", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", NotificationCompat.CATEGORY_MESSAGE, "", "getMsg", "()Ljava/lang/String;", "setMsg", "(Ljava/lang/String;)V", "data", "", "Lcom/transsion/ad/ps/model/RecommendInfo;", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PsLinkDto implements Serializable {

    @SerializedName("code")
    private int code;

    @SerializedName("data")
    private List<RecommendInfo> data;

    @SerializedName("message")
    private String msg = "";

    public final int getCode() {
        return this.code;
    }

    public final List<RecommendInfo> getData() {
        return this.data;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final void setCode(int i11) {
        this.code = i11;
    }

    public final void setData(List<RecommendInfo> list) {
        this.data = list;
    }

    public final void setMsg(String str) {
        Intrinsics.h(str, "<set-?>");
        this.msg = str;
    }
}
