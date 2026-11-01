package com.cloud.tmc.integration.performance.innerwebview;

import android.app.Activity;
import android.app.Application;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IRender;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.performance.innerwebview.InnerH5WebviewPool")
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u001c\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0003H&¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "createWebview", "", PushConstants.PROVIDER_FIELD_DESTROY, "", "getWebview", "Lcom/cloud/tmc/kernel/render/IRender;", "context", "Landroid/app/Activity;", "init", "Landroid/app/Application;", "registerListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewListener;", "removeWebview", EventConstants.ADDRESS_RENDER, "needDestroy", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IInnerH5WebviewPool extends Proxiable {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ void removeWebview$default(IInnerH5WebviewPool iInnerH5WebviewPool, IRender iRender, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeWebview");
            }
            if ((i11 & 2) != 0) {
                z10 = true;
            }
            iInnerH5WebviewPool.removeWebview(iRender, z10);
        }
    }

    boolean createWebview();

    void destroy();

    IRender getWebview(Activity context);

    void init(Application context);

    void registerListener(InnerH5WebviewListener listener);

    void removeWebview(IRender render, boolean needDestroy);
}
