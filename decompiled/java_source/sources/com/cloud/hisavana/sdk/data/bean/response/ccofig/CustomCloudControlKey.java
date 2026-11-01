package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¨\u0006\u0006"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomCloudControlKey;", "", "()V", "getCustomRequestKeys", "", "", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomCloudControlKey {
    public static final CustomCloudControlKey INSTANCE = new CustomCloudControlKey();

    private CustomCloudControlKey() {
    }

    @JvmStatic
    public static final List<String> getCustomRequestKeys() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(CustomConfigsKt.AB_TEST);
        arrayList.add(CustomConfigsKt.CUSTOM_TAB);
        arrayList.add(CustomConfigsKt.COMMON_CONFIG);
        arrayList.add(CustomConfigsKt.DCDN_URL);
        return arrayList;
    }
}
