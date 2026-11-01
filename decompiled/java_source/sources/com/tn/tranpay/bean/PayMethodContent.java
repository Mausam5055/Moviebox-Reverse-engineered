package com.tn.tranpay.bean;

import com.tn.tranpay.network.BaseContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/tn/tranpay/bean/PayMethodContent;", "Lcom/tn/tranpay/network/BaseContent;", "()V", "methodInfo", "", "Lcom/tn/tranpay/bean/MethodInfo;", "getMethodInfo", "()Ljava/util/List;", "setMethodInfo", "(Ljava/util/List;)V", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PayMethodContent extends BaseContent {
    private List<MethodInfo> methodInfo;

    public final List<MethodInfo> getMethodInfo() {
        return this.methodInfo;
    }

    public final void setMethodInfo(List<MethodInfo> list) {
        this.methodInfo = list;
    }
}
