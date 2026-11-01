package com.cloud.tmc.integration.processor;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/integration/processor/BackExitIntercept;", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;", "()V", "mCallback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "getMCallback", "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "setMCallback", "(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V", "checkInterceptorCount", "", "context", "Landroid/content/Context;", "appId", "", "checkNSecondsRules", "getInterceptName", "getPriority", "", "intercept", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "chain", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;", "refreshBackTimes", "", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BackExitIntercept implements IBackPressedIntercept {
    private static final long ONE_DAYS = 86400000;
    public static final String TAG = "BackExitIntercept";
    private BridgeCallback mCallback;

    private final boolean checkInterceptorCount(Context context, String appId) {
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_TIME);
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_NUM);
        int configTargetInt = 5;
        try {
            configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_BACK_INTERCEPTOR_NUM, 5);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        TmcLogger.d(TAG, "checkInterceptorCount: currentTimeMillis: " + jCurrentTimeMillis + " lastCheckTime: " + j11 + " num: " + i11 + " showNum: " + configTargetInt);
        return j11 == 0 || jCurrentTimeMillis - j11 > 86400000 || i11 < configTargetInt;
    }

    private final boolean checkNSecondsRules(Context context, String appId) {
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_TIME_INTERVAL);
        long jCurrentTimeMillis = System.currentTimeMillis();
        int configTargetInt = 60000;
        try {
            configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_BACK_INTERCEPTOR_SHOW_TIME, 60000);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        TmcLogger.d(TAG, "checkNSecondsRules: currentTimeMillis: " + jCurrentTimeMillis + " lastCheckTimeInterval: " + j11 + " showTime: " + configTargetInt);
        return jCurrentTimeMillis - j11 > ((long) configTargetInt);
    }

    private final void refreshBackTimes(Context context, String appId) {
        long j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_TIME);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j11 == 0 || jCurrentTimeMillis - j11 > 86400000) {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_NUM, 1);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_TIME, jCurrentTimeMillis);
        } else {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_NUM, ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_NUM) + 1);
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, appId, TmcConstants.KEY_LATEST_CHECK_BACK_INTERCEPTOR_TIME_INTERVAL, jCurrentTimeMillis);
    }

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
        return 20;
    }

    @Override // com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept
    public IBackPressedIntercept.Result intercept(IBackPressedIntercept.Chain chain) {
        long configTargetInt;
        Intrinsics.h(chain, "chain");
        TmcLogger.i(TAG, "BackExitIntercept: " + chain.getParams());
        AppNode app = chain.getParams().getApp();
        long startTime = app != null ? app.getStartTime() : 0L;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            configTargetInt = MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_BACK_INTERCEPTOR_TIME, 10000);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            configTargetInt = 10000;
        }
        if (jCurrentTimeMillis - startTime > configTargetInt) {
            String appId = chain.getParams().getAppId();
            if (appId == null) {
                return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
            }
            Context context = chain.getParams().getContext();
            if (context != null) {
                if (!checkInterceptorCount(context, appId)) {
                    TmcLogger.d(TAG, "back intercept count overrun");
                    return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
                }
                if (!checkNSecondsRules(context, appId)) {
                    TmcLogger.d(TAG, "back intercept time interval not allowed");
                    return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
                }
                BridgeCallback bridgeCallback = this.mCallback;
                if (bridgeCallback != null) {
                    bridgeCallback.sendSuccessResponse();
                    refreshBackTimes(context, appId);
                }
                TmcLogger.d(TAG, "back intercept, " + (this.mCallback != null));
                return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), this.mCallback != null, this, false, 8, null);
            }
        }
        TmcLogger.d(TAG, "back intercept, " + (configTargetInt / ((long) 1000)) + "s 内不生效拦截器");
        return IBackPressedIntercept.DefaultImpls.backResult$default(this, chain.getParams().getApp(), false, this, false, 8, null);
    }

    public final void setMCallback(BridgeCallback bridgeCallback) {
        this.mCallback = bridgeCallback;
    }
}
