package com.cloud.tmc.render;

import android.app.Activity;
import android.os.Bundle;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.engine.IEngine;
import com.cloud.tmc.kernel.model.CreateParams;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.kernel.render.IRender;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.defaultImpl.RenderFactory")
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0016JX\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&¨\u0006\u0017"}, d2 = {"Lcom/cloud/tmc/render/IRenderFactory;", "Lcom/cloud/tmc/kernel/proxy/Proxiable;", "getRender", "", "activity", "Landroid/app/Activity;", "engineProxy", "Lcom/cloud/tmc/kernel/engine/IEngine;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "createParams", "Lcom/cloud/tmc/kernel/model/CreateParams;", "pageId", "", "context", "", "data", "Landroid/os/Bundle;", "isFirstLaunch", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;", "IRenderListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IRenderFactory extends Proxiable {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;", "", "createSuccess", "", EventConstants.ADDRESS_RENDER, "Lcom/cloud/tmc/kernel/render/IRender;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface IRenderListener {
        void createSuccess(IRender render);
    }

    void getRender(Activity activity, IEngine engineProxy, Node node, CreateParams createParams, String pageId, Object context, Bundle data, boolean isFirstLaunch, IRenderListener listener);
}
