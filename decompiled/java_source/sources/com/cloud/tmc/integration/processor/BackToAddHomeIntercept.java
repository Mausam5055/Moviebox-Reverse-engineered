package com.cloud.tmc.integration.processor;

import android.content.Context;
import android.os.Build;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.CreateShortCutUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/integration/processor/BackToAddHomeIntercept;", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;", "()V", "checkAddHomeRules", "", "context", "Landroid/content/Context;", "appId", "", "getInterceptName", "getPriority", "", "intercept", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "chain", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;", "refreshAddHomeTimes", "", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BackToAddHomeIntercept implements IBackPressedIntercept {
    public static final String TAG = "BackToAddHomeIntercept";

    private final boolean checkAddHomeRules(Context context, String appId) {
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, appId, TmcConstants.KEY_LATEST_SHOW_ADD_HOME_TIME);
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(context, appId, TmcConstants.KEY_LATEST_SHOW_ADD_HOME_NUM);
        int configTargetInt = 5;
        try {
            configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_ADD_HOME_NUM, 5);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        return j11 == 0 || jCurrentTimeMillis - j11 > 86400000 || i11 <= configTargetInt;
    }

    private final void refreshAddHomeTimes(Context context, String appId) {
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, appId, TmcConstants.KEY_LATEST_SHOW_ADD_HOME_TIME);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j11 == 0 || jCurrentTimeMillis - j11 > 86400000) {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, appId, TmcConstants.KEY_LATEST_SHOW_ADD_HOME_NUM, 1);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, appId, TmcConstants.KEY_LATEST_SHOW_ADD_HOME_TIME, jCurrentTimeMillis);
        } else {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, appId, TmcConstants.KEY_LATEST_SHOW_ADD_HOME_NUM, ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(context, appId, TmcConstants.KEY_LATEST_SHOW_ADD_HOME_NUM) + 1);
        }
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result backResult(App app, boolean z10, IBackPressedIntercept iBackPressedIntercept, boolean z11) {
        return IBackPressedIntercept.DefaultImpls.backResult(this, app, z10, iBackPressedIntercept, z11);
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public String getInterceptName() {
        return TAG;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public int getPriority() {
        return 30;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result intercept(IBackPressedIntercept.Chain chain) {
        long configTargetInt;
        AppNode app;
        Intrinsics.h(chain, "chain");
        TmcLogger.i(TAG, "BackToAddHomeIntercept: " + chain.getParams());
        AppNode app2 = chain.getParams().getApp();
        long startTime = app2 != null ? app2.getStartTime() : 0L;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_ADD_HOME_TIME, 10000);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            configTargetInt = 10000;
        }
        if (jCurrentTimeMillis - startTime > configTargetInt) {
            String appId = chain.getParams().getAppId();
            if (appId != null && (app = chain.getParams().getApp()) != null) {
                Context context = chain.getParams().getContext();
                if (context != null) {
                    if (Build.VERSION.SDK_INT < 26) {
                        return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
                    }
                    AppUtils appUtils = AppUtils.INSTANCE;
                    if (appUtils.queryShortcutExist(context, appId)) {
                        return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
                    }
                    if (!checkAddHomeRules(context, appId)) {
                        return new IBackPressedIntercept.Result(false);
                    }
                    Class<?> launcherShortCutActivity = ((StartActivityProxy) TmcProxy.get(StartActivityProxy.class)).getLauncherShortCutActivity();
                    Intrinsics.g(launcherShortCutActivity, "get(StartActivityProxy::….launcherShortCutActivity");
                    CreateShortCutUtils.createShortcut$default(context, launcherShortCutActivity, app, "2", chain.getParams().getFromType(), true, false, 64, null);
                    refreshAddHomeTimes(context, appId);
                    return !appUtils.isLauncher(chain.getParams().getContext()) ? IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null) : IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), true, this, false, 8, null);
                }
            }
            return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
        }
        return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
    }
}
