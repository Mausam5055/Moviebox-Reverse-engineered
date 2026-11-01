package com.transsion.usercenter.message.model;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/transsion/usercenter/message/model/RequestMessageEntity;", "Ljava/io/Serializable;", "page", "", "perPage", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getPage", "()Ljava/lang/String;", "setPage", "(Ljava/lang/String;)V", "getPerPage", "()I", "setPerPage", "(I)V", "getType", "setType", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestMessageEntity implements Serializable {
    private String page;
    private int perPage;
    private String type;

    public RequestMessageEntity(String page, int i11, String type) {
        Intrinsics.h(page, "page");
        Intrinsics.h(type, "type");
        this.page = "";
        this.type = "";
        this.page = page.toString();
        this.perPage = i11;
        this.type = type;
    }

    public final String getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final String getType() {
        return this.type;
    }

    public final void setPage(String str) {
        Intrinsics.h(str, "<set-?>");
        this.page = str;
    }

    public final void setPerPage(int i11) {
        this.perPage = i11;
    }

    public final void setType(String str) {
        Intrinsics.h(str, "<set-?>");
        this.type = str;
    }
}
