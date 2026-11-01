package com.cloud.tmc.integration.performance.innerrender;

import android.app.Activity;
import android.app.Application;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IRender;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.performance.innerrender.InnerRenderPool")
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0006H&J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0006H&J\"\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\u0012\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\fH&J\u0012\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H&¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "createRender", "", TmcConstants.KEY_SYNC, PushConstants.PROVIDER_FIELD_DESTROY, "", "getRender", "Lcom/cloud/tmc/kernel/render/IRender;", "context", "Landroid/app/Activity;", "frameworkVersion", "", "init", "Landroid/app/Application;", "preWarmupRenderFail", "registerListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;", "homePage", "removeRender", "renderId", "warmupRender", "param", "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IInnerRenderPool extends Proxiable {
    boolean createRender(boolean sync);

    void destroy();

    IRender getRender(Activity context, String frameworkVersion);

    void init(Application context);

    void preWarmupRenderFail();

    void registerListener(InnerRenderListener listener, boolean homePage, String frameworkVersion);

    void removeRender(String renderId);

    void warmupRender(PrepareCallbackParam param);
}
