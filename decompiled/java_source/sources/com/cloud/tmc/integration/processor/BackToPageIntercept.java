package com.cloud.tmc.integration.processor;

import android.os.Bundle;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.callback.IAsyncStartLoadingCallback;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/cloud/tmc/integration/processor/BackToPageIntercept;", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;", "()V", "backToPagePath", "", "getBackToPagePath", "()Ljava/lang/String;", "setBackToPagePath", "(Ljava/lang/String;)V", "getInterceptName", "getPriority", "", "intercept", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "chain", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BackToPageIntercept implements IBackPressedIntercept {
    public static final String TAG = "BackToPageIntercept";
    private String backToPagePath = "";

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result backResult(App app, boolean z10, IBackPressedIntercept iBackPressedIntercept, boolean z11) {
        return IBackPressedIntercept.DefaultImpls.backResult(this, app, z10, iBackPressedIntercept, z11);
    }

    public final String getBackToPagePath() {
        return this.backToPagePath;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public String getInterceptName() {
        return TAG;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public int getPriority() {
        return 10;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result intercept(IBackPressedIntercept.Chain chain) {
        Intrinsics.h(chain, "chain");
        TmcLogger.i(TAG, "BackToPageIntercept: " + chain.getParams());
        if (chain.getParams().getFromType() == 2) {
            return chain.proceed(chain.getParams());
        }
        AppNode app = chain.getParams().getApp();
        if (app != null) {
            if (this.backToPagePath.length() == 0) {
                return IBackPressedIntercept.DefaultImpls.backResult$default(this, app, false, this, false, 8, null);
            }
            if (app.getStartParams().getBoolean(TmcConstants.EXTRA_APP_ENABLE_QUICK_MODE) && !app.isAsyncLaunchStatus()) {
                app.setBackToPagePath(this.backToPagePath);
                IAsyncStartLoadingCallback asyncStartLoadingCallback = app.getAsyncStartLoadingCallback();
                if (asyncStartLoadingCallback != null) {
                    asyncStartLoadingCallback.showAsyncStatusLoading();
                }
                return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), true, this, false, 8, null);
            }
            app.putRouteType(this.backToPagePath, "reLaunch");
            String str = this.backToPagePath;
            Bundle startParams = app.getStartParams();
            Bundle sceneParams = app.getSceneParams();
            sceneParams.putString("navigationType", TmcConstants.NAVIGATION_BACK_TO_PAGE_INTERCEPT);
            Unit unit = Unit.f67061a;
            app.relaunchToUrl(str, startParams, sceneParams);
        }
        return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), true, this, false, 8, null);
    }

    public final void setBackToPagePath(String str) {
        Intrinsics.h(str, "<set-?>");
        this.backToPagePath = str;
    }
}
