package com.cloud.tmc.integration.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/cloud/tmc/integration/utils/EnvironmentUtil;", "", "()V", "Companion", "Package", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class EnvironmentUtil {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String PKG_CHROME = "com.android.chrome";
    private static final String TAG = "EnvironmentUtil";

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;", "", "()V", "PKG_CHROME", "", "TAG", "openByBrowser", "", "context", "Landroid/content/Context;", "url", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final boolean openByBrowser(Context context, String url) {
            Intrinsics.h(context, "context");
            if (url != null) {
                try {
                    if (url.length() != 0) {
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.VIEW");
                        intent.addCategory("android.intent.category.DEFAULT");
                        intent.setData(Uri.parse(url));
                        intent.addFlags(ASTNode.DEOP);
                        if (Package.INSTANCE.isAppInstalled(context, EnvironmentUtil.PKG_CHROME)) {
                            intent.setPackage(EnvironmentUtil.PKG_CHROME);
                        }
                        context.startActivity(intent);
                        return true;
                    }
                } catch (Throwable th2) {
                    TmcLogger.e(EnvironmentUtil.TAG, "openByBrowser: ", th2);
                }
            }
            return false;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b¨\u0006\t"}, d2 = {"Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Package;", "", "()V", "isAppInstalled", "", "context", "Landroid/content/Context;", "packageName", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Package {
        public static final Package INSTANCE = new Package();

        private Package() {
        }

        public final boolean isAppInstalled(Context context, String packageName) {
            ApplicationInfo applicationInfo;
            Intrinsics.h(context, "context");
            if (packageName != null && packageName.length() != 0) {
                try {
                    PackageManager packageManager = context.getPackageManager();
                    if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(packageName, 0)) != null) {
                        return applicationInfo.enabled;
                    }
                    return false;
                } catch (Throwable unused) {
                    TmcLogger.e(EnvironmentUtil.TAG, "Name not found for " + packageName);
                }
            }
            return false;
        }
    }

    @JvmStatic
    public static final boolean openByBrowser(Context context, String str) {
        return INSTANCE.openByBrowser(context, str);
    }
}
