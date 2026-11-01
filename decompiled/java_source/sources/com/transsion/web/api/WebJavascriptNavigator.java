package com.transsion.web.api;

import android.webkit.JavascriptInterface;
import androidx.annotation.Keep;
import com.google.gson.JsonObject;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, d2 = {"Lcom/transsion/web/api/WebJavascriptNavigator;", "", "<init>", "()V", "hostInfo", "", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebJavascriptNavigator {
    @JavascriptInterface
    public final String hostInfo() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(TrackingKey.PLATFORM, "Android");
        jsonObject.addProperty("version", "2.0.40");
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }
}
