package com.cloud.tmc.kernel.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.cloud.tmc.kernel.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/kernel/utils/UrlLauncher;", "", "()V", "TAG", "", "launchApp", "", "context", "Landroid/content/Context;", "url", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UrlLauncher {
    public static final UrlLauncher INSTANCE = new UrlLauncher();
    public static final String TAG = "UrlLauncher";

    private UrlLauncher() {
    }

    @JvmStatic
    public static final boolean launchApp(Context context, String url) {
        if (context != null && url != null) {
            try {
                if (url.length() != 0) {
                    Uri uri = Uri.parse(url);
                    Intent intent = new Intent();
                    intent.setData(uri);
                    intent.setAction("android.intent.action.VIEW");
                    intent.setFlags(ASTNode.DEOP);
                    context.startActivity(intent);
                    return true;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, "", th2);
            }
        }
        return false;
    }
}
