package com.transsion.wrapperad.install;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/wrapperad/install/AppLaunchProxyActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Context;", "context", "", "packageName", "R", "(Landroid/content/Context;Ljava/lang/String;)V", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AppLaunchProxyActivity extends AppCompatActivity {
    public final void R(Context context, String packageName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(packageName, "packageName");
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(packageName);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(ASTNode.DEOP);
                context.startActivity(launchIntentForPackage);
            } else {
                a.f58174a.a("AppLaunchProxyActivity --> 应用未安装 --> packageName = " + packageName);
            }
        } catch (Exception e11) {
            a.f58174a.a("AppLaunchProxyActivity --> e = " + e11);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String packageName;
        super.onCreate(savedInstanceState);
        AppChangeInfo appChangeInfo = Build.VERSION.SDK_INT >= 33 ? (AppChangeInfo) getIntent().getParcelableExtra(TmcConstants.EXTRA_APPINFO, AppChangeInfo.class) : (AppChangeInfo) getIntent().getParcelableExtra(TmcConstants.EXTRA_APPINFO);
        a.f58174a.a("AppLaunchProxyActivity --> onCreate() --> appInfo = " + appChangeInfo);
        if (appChangeInfo == null || (packageName = appChangeInfo.getPackageName()) == null) {
            packageName = "";
        }
        R(this, packageName);
        finish();
    }
}
