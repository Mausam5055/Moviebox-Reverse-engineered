package com.cloud.tmc.integration.utils;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.bridge.FrameworkStorageBridge;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/utils/PrivacyUtils;", "", "()V", "openAppSuccessWaitChangUserStatus", "Ljava/util/concurrent/atomic/AtomicBoolean;", "tryUpdateNewUserToOldUser", "", "context", "Landroid/content/Context;", "updateNewUserStatus", "appId", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrivacyUtils {
    public static final PrivacyUtils INSTANCE = new PrivacyUtils();
    private static final AtomicBoolean openAppSuccessWaitChangUserStatus = new AtomicBoolean(false);

    private PrivacyUtils() {
    }

    public final void tryUpdateNewUserToOldUser(Context context) {
        Intrinsics.h(context, "context");
        if (openAppSuccessWaitChangUserStatus.compareAndSet(true, false)) {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, "100000", TmcConstants.KEY_IS_NEW_USER, false);
        }
    }

    public final void updateNewUserStatus(Context context, String appId) {
        Intrinsics.h(context, "context");
        boolean z10 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, "100000", TmcConstants.KEY_PRIVACY_AGREEMENT, false);
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, FrameworkStorageBridge.FRAMEWORK_STORAGE_KEY, TmcConstants.KEY_FW_PACKAGE_PRIVACY_AGREEMENT);
        boolean z11 = string != null && StringsKt.H(string, "true", true);
        boolean zCheckMiniAppPrivacyAgreementDialogWhiteList = AppUtils.INSTANCE.checkMiniAppPrivacyAgreementDialogWhiteList(appId);
        TmcLogger.d("privacy", "updateNewUserStatus -> inPrivacyWhiteList:" + zCheckMiniAppPrivacyAgreementDialogWhiteList + ", fwPackageAgree:" + string + ", agree:" + z10);
        if (!zCheckMiniAppPrivacyAgreementDialogWhiteList && !z11 && !z10) {
            openAppSuccessWaitChangUserStatus.set(true);
            return;
        }
        if (zCheckMiniAppPrivacyAgreementDialogWhiteList && MiniForceAddHomeManager.INSTANCE.checkInterectMFAH(appId)) {
            TmcLogger.d("privacy", "mfah is true,return");
            return;
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, "100000", TmcConstants.KEY_IS_NEW_USER, false);
        try {
            Boolean bool = MiniForceAddHomeManager.INSTANCE.getInterceptRealMFAHMap().get(appId);
            if (!(bool != null ? bool.booleanValue() : false)) {
                DeviceUtil.INSTANCE.updateIsNewUserStatus("");
            }
        } catch (Throwable unused) {
        }
    }
}
