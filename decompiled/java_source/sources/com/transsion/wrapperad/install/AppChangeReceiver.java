package com.transsion.wrapperad.install;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.wrapperad.install.open.ChangeType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/transsion/wrapperad/install/AppChangeReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "", "c", "()Ljava/lang/String;", "Landroid/content/Context;", "context", "packageName", "Lcom/transsion/wrapperad/install/open/ChangeType;", "changeType", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/wrapperad/install/open/ChangeType;)V", "Landroid/content/Intent;", "intent", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppChangeReceiver extends BroadcastReceiver {
    private final void b(Context context, String packageName, ChangeType changeType) {
        k.d(o0.a(y0.b()), null, null, new AppChangeReceiver$doWork$1(context, packageName, changeType, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c() {
        String simpleName = AppChangeReceiver.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data;
        String schemeSpecificPart;
        ChangeType changeType;
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        String action = intent.getAction();
        if (action == null || (data = intent.getData()) == null || (schemeSpecificPart = data.getSchemeSpecificPart()) == null) {
            return;
        }
        if (Intrinsics.c(schemeSpecificPart, context.getPackageName())) {
            a.f58174a.a("AppChangeReceiver --> " + schemeSpecificPart + " -- " + action + " 事件被忽略");
            return;
        }
        a.f58174a.a("AppChangeReceiver --> " + schemeSpecificPart + " -- " + action + " 事件被捕获");
        int iHashCode = action.hashCode();
        if (iHashCode != -810471698) {
            if (iHashCode != 525384130) {
                if (iHashCode != 1544582882 || !action.equals("android.intent.action.PACKAGE_ADDED") || intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                    return;
                } else {
                    changeType = ChangeType.INSTALLED;
                }
            } else if (!action.equals("android.intent.action.PACKAGE_REMOVED") || intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                return;
            } else {
                changeType = ChangeType.UNINSTALLED;
            }
        } else if (!action.equals("android.intent.action.PACKAGE_REPLACED")) {
            return;
        } else {
            changeType = ChangeType.UPDATED;
        }
        b(context, schemeSpecificPart, changeType);
    }
}
