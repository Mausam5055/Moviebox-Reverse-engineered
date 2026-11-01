package gy;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import com.transsion.wrapperad.install.open.ChangeType;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f64035a = new c();

    private c() {
    }

    public final AppChangeInfo a(Context context, String packageName, ChangeType type) {
        Object objM454constructorimpl;
        Long lValueOf;
        Object objM454constructorimpl2;
        String installerPackageName;
        Drawable drawableLoadIcon;
        Object objM454constructorimpl3;
        ApplicationInfo applicationInfo;
        CharSequence charSequenceLoadLabel;
        Intrinsics.h(context, "context");
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(type, "type");
        PackageManager packageManager = context.getPackageManager();
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(packageManager.getPackageInfo(packageName, 0));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        PackageInfo packageInfo = (PackageInfo) objM454constructorimpl;
        ApplicationInfo applicationInfo2 = packageInfo != null ? packageInfo.applicationInfo : null;
        String string = (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (charSequenceLoadLabel = applicationInfo.loadLabel(packageManager)) == null) ? null : charSequenceLoadLabel.toString();
        String str = packageInfo != null ? packageInfo.versionName : null;
        if (packageInfo == null) {
            lValueOf = null;
        } else {
            lValueOf = Build.VERSION.SDK_INT >= 28 ? Long.valueOf(packageInfo.getLongVersionCode()) : Long.valueOf(packageInfo.versionCode);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                objM454constructorimpl2 = Result.m454constructorimpl(packageManager.getInstallSourceInfo(packageName).getInstallingPackageName());
            } catch (Throwable th3) {
                Result.Companion companion3 = Result.INSTANCE;
                objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th3));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl2)) {
                objM454constructorimpl2 = null;
            }
            installerPackageName = (String) objM454constructorimpl2;
        } else {
            installerPackageName = packageManager.getInstallerPackageName(packageName);
        }
        String str2 = installerPackageName;
        if (applicationInfo2 != null) {
            try {
                drawableLoadIcon = applicationInfo2.loadIcon(packageManager);
            } catch (Throwable th4) {
                Result.Companion companion4 = Result.INSTANCE;
                objM454constructorimpl3 = Result.m454constructorimpl(ResultKt.a(th4));
            }
        } else {
            drawableLoadIcon = null;
        }
        objM454constructorimpl3 = Result.m454constructorimpl(drawableLoadIcon);
        return new AppChangeInfo(packageName, string, str, lValueOf, str2, type, (Drawable) (Result.m460isFailureimpl(objM454constructorimpl3) ? null : objM454constructorimpl3));
    }
}
