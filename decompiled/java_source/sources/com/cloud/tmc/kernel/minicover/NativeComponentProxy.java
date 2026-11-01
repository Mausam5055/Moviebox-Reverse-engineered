package com.cloud.tmc.kernel.minicover;

import android.content.Context;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.minicover.base.BaseNativeComponent;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IRender;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.defaultimpl.NativeComponentProxyImp")
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J(\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J(\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&¨\u0006\u0010"}, d2 = {"Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "checkResumedStatus", "", "appId", "", "getComponentNativeImgInstance", "Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;", "context", "Landroid/content/Context;", "renderId", NativeComponentConstants.KEY_COMPONENT_VIEW_ID, EventConstants.ADDRESS_RENDER, "Lcom/cloud/tmc/kernel/render/IRender;", "getComponentNativeTabInstance", "getComponentNativeWebViewInstance", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface NativeComponentProxy extends Proxiable {
    boolean checkResumedStatus(String appId);

    BaseNativeComponent getComponentNativeImgInstance(Context context, String renderId, String viewId, IRender render);

    BaseNativeComponent getComponentNativeTabInstance(Context context, String renderId, String viewId, IRender render);

    BaseNativeComponent getComponentNativeWebViewInstance(Context context, String renderId, String viewId, IRender render);
}
