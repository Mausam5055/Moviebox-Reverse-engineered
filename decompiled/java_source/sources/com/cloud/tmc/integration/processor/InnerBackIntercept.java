package com.cloud.tmc.integration.processor;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/integration/processor/InnerBackIntercept;", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;", "()V", "mCallback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "getMCallback", "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "setMCallback", "(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "getInterceptName", "", "getPriority", "", "intercept", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "chain", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class InnerBackIntercept implements IBackPressedIntercept {
    public static final String TAG = "InnerBackIntercept";
    private BridgeCallback mCallback;

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result backResult(App app, boolean z10, IBackPressedIntercept iBackPressedIntercept, boolean z11) {
        return IBackPressedIntercept.DefaultImpls.backResult(this, app, z10, iBackPressedIntercept, z11);
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public String getInterceptName() {
        return TAG;
    }

    public final BridgeCallback getMCallback() {
        return this.mCallback;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public int getPriority() {
        return 8;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result intercept(IBackPressedIntercept.Chain chain) {
        Intrinsics.h(chain, "chain");
        TmcLogger.i(TAG, "InnerBackIntercept: " + chain.getParams());
        if (chain.getParams().getContext() == null) {
            return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
        }
        BridgeCallback bridgeCallback = this.mCallback;
        if (bridgeCallback != null) {
            bridgeCallback.sendSuccessResponse();
        }
        return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), this.mCallback != null, this, false, 8, null);
    }

    public final void setMCallback(BridgeCallback bridgeCallback) {
        this.mCallback = bridgeCallback;
    }
}
