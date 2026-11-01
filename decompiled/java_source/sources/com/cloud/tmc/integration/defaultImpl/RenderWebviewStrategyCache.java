package com.cloud.tmc.integration.defaultImpl;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.render.IRenderWebivewStrategyCache;
import com.cloud.tmc.render.bean.WebviewCacheStrategyBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"Lcom/cloud/tmc/integration/defaultImpl/RenderWebviewStrategyCache;", "Lcom/cloud/tmc/render/IRenderWebivewStrategyCache;", "()V", "getData", "Lcom/cloud/tmc/render/bean/WebviewCacheStrategyBean;", "getShellWebviewCacheStrategy", "", "getSystemWebviewCacheStrategy", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RenderWebviewStrategyCache implements IRenderWebivewStrategyCache {
    private final WebviewCacheStrategyBean getData() {
        try {
            return (WebviewCacheStrategyBean) GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_WEBVIEW_CACHE_STRATEGY, MiniAppConfigHelper.DEFAULT_WEBVIEW_CACHE_STRATEGY), WebviewCacheStrategyBean.class);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.cloud.tmc.render.IRenderWebivewStrategyCache
    public boolean getShellWebviewCacheStrategy() {
        WebviewCacheStrategyBean data = getData();
        if (data != null) {
            return data.getShellWebView();
        }
        return true;
    }

    @Override // com.cloud.tmc.render.IRenderWebivewStrategyCache
    public boolean getSystemWebviewCacheStrategy() {
        WebviewCacheStrategyBean data = getData();
        if (data != null) {
            return data.getSystemWebView();
        }
        return true;
    }
}
