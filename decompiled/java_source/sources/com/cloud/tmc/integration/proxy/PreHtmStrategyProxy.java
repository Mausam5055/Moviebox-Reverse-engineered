package com.cloud.tmc.integration.proxy;

import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.meituan.android.walle.ChannelReader;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.prestrategy.strategy.PreHtmlStrategy")
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003H&J(\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H&J0\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00072\u0016\b\u0002\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0012H&J\u0012\u0010\u0013\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "checkPreHtmlCache", "", "context", "Landroid/content/Context;", "urlMd5", "", "isRemove", "getPreHtmlCache", "md5", ChannelReader.CHANNEL_KEY, "", "needCheck", "requestHtml", "", "contentUrl", "block", "Lkotlin/Function1;", "trackPreStrategyFailPoint", "bundle", "Landroid/os/Bundle;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface PreHtmStrategyProxy extends Proxiable {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ boolean checkPreHtmlCache$default(PreHtmStrategyProxy preHtmStrategyProxy, Context context, String str, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkPreHtmlCache");
            }
            if ((i11 & 4) != 0) {
                z10 = true;
            }
            return preHtmStrategyProxy.checkPreHtmlCache(context, str, z10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void requestHtml$default(PreHtmStrategyProxy preHtmStrategyProxy, Context context, String str, Function1 function1, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: requestHtml");
            }
            if ((i11 & 4) != 0) {
                function1 = null;
            }
            preHtmStrategyProxy.requestHtml(context, str, function1);
        }
    }

    boolean checkPreHtmlCache(Context context, String urlMd5, boolean isRemove);

    String getPreHtmlCache(Context context, String md5, int channel, boolean needCheck);

    void requestHtml(Context context, String contentUrl, Function1<? super Boolean, Unit> block);

    void trackPreStrategyFailPoint(Bundle bundle);
}
