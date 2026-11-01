package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR:\u0010\n\u001a\"\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bj\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f\u0018\u0001`\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u0016¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/model/RequestData;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "()V", "data", "", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "header", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getHeader", "()Ljava/util/HashMap;", "setHeader", "(Ljava/util/HashMap;)V", "id", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "method", "getMethod", "setMethod", "url", "getUrl", "setUrl", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestData extends BaseBean implements Serializable {
    private Object data;
    private HashMap<String, String> header;
    private String id = "";
    private String method = "GET";
    private String url;

    public final Object getData() {
        return this.data;
    }

    public final HashMap<String, String> getHeader() {
        return this.header;
    }

    public final String getId() {
        return this.id;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setData(Object obj) {
        this.data = obj;
    }

    public final void setHeader(HashMap<String, String> map) {
        this.header = map;
    }

    public final void setId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.id = str;
    }

    public final void setMethod(String str) {
        Intrinsics.h(str, "<set-?>");
        this.method = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }
}
