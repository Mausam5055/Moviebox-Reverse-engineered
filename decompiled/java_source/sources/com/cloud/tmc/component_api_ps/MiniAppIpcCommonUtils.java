package com.cloud.tmc.component_api_ps;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/component_api_ps/MiniAppIpcCommonUtils;", "", "()V", "TAG", "", "getBundleParamsLoggerFormat", "bundle", "Landroid/os/Bundle;", "getIPCPkgName", "context", "Landroid/content/Context;", "getIntentLoggerFormat", "intent", "Landroid/content/Intent;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MiniAppIpcCommonUtils {
    public static final MiniAppIpcCommonUtils INSTANCE = new MiniAppIpcCommonUtils();
    public static final String TAG = "CommonUtils";

    private MiniAppIpcCommonUtils() {
    }

    public final String getBundleParamsLoggerFormat(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        try {
            Set<String> setKeySet = bundle.keySet();
            Set<String> set = setKeySet;
            if (set != null && !set.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                for (String str : setKeySet) {
                    sb2.append("key:" + str + ",value:" + bundle.getString(str) + " | ");
                }
                String string = sb2.toString();
                Intrinsics.g(string, "result.toString()");
                return string;
            }
            return "";
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
            return "";
        }
    }

    public final String getIPCPkgName(Context context) {
        Intrinsics.h(context, "context");
        try {
            String packageName = context.getPackageName();
            return packageName == null ? MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME : packageName;
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
            return "";
        }
    }

    public final String getIntentLoggerFormat(Intent intent) {
        if (intent == null) {
            return "";
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            if (intent.getComponent() != null) {
                ComponentName component = intent.getComponent();
                String packageName = component != null ? component.getPackageName() : null;
                ComponentName component2 = intent.getComponent();
                sb2.append("componentName:" + packageName + "|" + (component2 != null ? component2.getClassName() : null) + " | ");
            }
            if (intent.getExtras() != null) {
                sb2.append("extras:" + getBundleParamsLoggerFormat(intent.getExtras()));
            }
            String string = sb2.toString();
            Intrinsics.g(string, "result.toString()");
            return string;
        } catch (Throwable th2) {
            MiniAppProtocolModuleLogger.e(TAG, "", th2);
            return "";
        }
    }
}
