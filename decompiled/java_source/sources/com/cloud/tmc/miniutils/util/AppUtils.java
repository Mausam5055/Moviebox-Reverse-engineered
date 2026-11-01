package com.cloud.tmc.miniutils.util;

import Abdullah.hook;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public final class AppUtils {

    public static class AppInfo {
        private Drawable icon;
        private boolean isSystem;
        private String name;
        private String packageName;
        private String packagePath;
        private int versionCode;
        private String versionName;

        public AppInfo(String str, String str2, Drawable drawable, String str3, String str4, int i11, boolean z10) {
            setName(str2);
            setIcon(drawable);
            setPackageName(str);
            setPackagePath(str3);
            setVersionName(str4);
            setVersionCode(i11);
            setSystem(z10);
        }

        public Drawable getIcon() {
            return this.icon;
        }

        public String getName() {
            return this.name;
        }

        public String getPackageName() {
            return this.packageName;
        }

        public String getPackagePath() {
            return this.packagePath;
        }

        public int getVersionCode() {
            return this.versionCode;
        }

        public String getVersionName() {
            return this.versionName;
        }

        public boolean isSystem() {
            return this.isSystem;
        }

        public void setIcon(Drawable drawable) {
            this.icon = drawable;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public void setPackagePath(String str) {
            this.packagePath = str;
        }

        public void setSystem(boolean z10) {
            this.isSystem = z10;
        }

        public void setVersionCode(int i11) {
            this.versionCode = i11;
        }

        public void setVersionName(String str) {
            this.versionName = str;
        }

        @NonNull
        public String toString() {
            return "{\n    pkg name: " + getPackageName() + "\n    app icon: " + getIcon() + "\n    app name: " + getName() + "\n    app path: " + getPackagePath() + "\n    app v name: " + getVersionName() + "\n    app v code: " + getVersionCode() + "\n    is system: " + isSystem() + "\n}";
        }
    }

    private AppUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void exitApp() {
        UtilsBridge.finishAllActivities();
        System.exit(0);
    }

    @Nullable
    public static AppInfo getApkInfo(File file) {
        if (file != null && file.isFile() && file.exists()) {
            return getApkInfo(file.getAbsolutePath());
        }
        return null;
    }

    @Nullable
    public static AppInfo getApkInfo(String str) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        if (UtilsBridge.isSpace(str) || (packageManager = Utils.getApp().getPackageManager()) == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 0)) == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        return getBean(packageManager, packageArchiveInfo);
    }

    @Nullable
    public static Drawable getAppIcon() {
        return getAppIcon(Utils.getApp().getPackageName());
    }

    @Nullable
    public static Drawable getAppIcon(String str) {
        if (UtilsBridge.isSpace(str)) {
            return null;
        }
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.applicationInfo.loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static int getAppIconId() {
        return getAppIconId(Utils.getApp().getPackageName());
    }

    public static int getAppIconId(String str) {
        if (UtilsBridge.isSpace(str)) {
            return 0;
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return 0;
            }
            return packageInfo.applicationInfo.icon;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    @Nullable
    public static AppInfo getAppInfo() {
        return getAppInfo(Utils.getApp().getPackageName());
    }

    @Nullable
    public static AppInfo getAppInfo(String str) {
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return getBean(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @NonNull
    public static String getAppName() {
        return getAppName(Utils.getApp().getPackageName());
    }

    @NonNull
    public static String getAppName(String str) {
        if (UtilsBridge.isSpace(str)) {
            return "";
        }
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.applicationInfo.loadLabel(packageManager).toString();
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    @NonNull
    public static String getAppPackageName() {
        return Utils.getApp().getPackageName();
    }

    @NonNull
    public static String getAppPath() {
        return getAppPath(Utils.getApp().getPackageName());
    }

    @NonNull
    public static String getAppPath(String str) {
        if (UtilsBridge.isSpace(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.applicationInfo.sourceDir;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    @Nullable
    public static Signature[] getAppSignatures() {
        return getAppSignatures(Utils.getApp().getPackageName());
    }

    @Nullable
    public static Signature[] getAppSignatures(File file) {
        if (file == null) {
            return null;
        }
        PackageManager packageManager = Utils.getApp().getPackageManager();
        if (Build.VERSION.SDK_INT < 28) {
            PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(file.getAbsolutePath(), 64);
            if (packageArchiveInfo == null) {
                return null;
            }
            return packageArchiveInfo.signatures;
        }
        PackageInfo packageArchiveInfo2 = packageManager.getPackageArchiveInfo(file.getAbsolutePath(), ASTNode.NOJIT);
        if (packageArchiveInfo2 == null) {
            return null;
        }
        SigningInfo signingInfo = packageArchiveInfo2.signingInfo;
        return signingInfo.hasMultipleSigners() ? hook.a.getApkContentsSigners(signingInfo) : hook.a.getSigningCertificateHistory(signingInfo);
    }

    @Nullable
    public static Signature[] getAppSignatures(String str) {
        if (UtilsBridge.isSpace(str)) {
            return null;
        }
        try {
            PackageManager packageManager = Utils.getApp().getPackageManager();
            if (Build.VERSION.SDK_INT < 28) {
                PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
                if (packageInfo == null) {
                    return null;
                }
                return packageInfo.signatures;
            }
            PackageInfo packageInfo2 = packageManager.getPackageInfo(str, ASTNode.NOJIT);
            if (packageInfo2 == null) {
                return null;
            }
            SigningInfo signingInfo = packageInfo2.signingInfo;
            return signingInfo.hasMultipleSigners() ? hook.a.getApkContentsSigners(signingInfo) : hook.a.getSigningCertificateHistory(signingInfo);
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static int getAppVersionCode() {
        return getAppVersionCode(Utils.getApp().getPackageName());
    }

    public static int getAppVersionCode(String str) {
        if (UtilsBridge.isSpace(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    @NonNull
    public static String getAppVersionName() {
        return getAppVersionName(Utils.getApp().getPackageName());
    }

    @NonNull
    public static String getAppVersionName(String str) {
        if (UtilsBridge.isSpace(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.getApp().getPackageManager().getPackageInfo(str, 0);
            return packageInfo == null ? "" : packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return "";
        }
    }

    @NonNull
    public static List<AppInfo> getAppsInfo() {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = Utils.getApp().getPackageManager();
        if (packageManager == null) {
            return arrayList;
        }
        Iterator<PackageInfo> it = packageManager.getInstalledPackages(0).iterator();
        while (it.hasNext()) {
            AppInfo bean = getBean(packageManager, it.next());
            if (bean != null) {
                arrayList.add(bean);
            }
        }
        return arrayList;
    }

    private static AppInfo getBean(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        String str = packageInfo.versionName;
        int i11 = packageInfo.versionCode;
        String str2 = packageInfo.packageName;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (applicationInfo == null) {
            return new AppInfo(str2, "", null, "", str, i11, false);
        }
        return new AppInfo(str2, applicationInfo.loadLabel(packageManager).toString(), applicationInfo.loadIcon(packageManager), applicationInfo.sourceDir, str, i11, (applicationInfo.flags & 1) != 0);
    }

    public static void installApp(Uri uri) {
        Intent installAppIntent = UtilsBridge.getInstallAppIntent(uri);
        if (installAppIntent == null) {
            return;
        }
        Utils.getApp().startActivity(installAppIntent);
    }

    public static void installApp(File file) {
        Intent installAppIntent = UtilsBridge.getInstallAppIntent(file);
        if (installAppIntent == null) {
            return;
        }
        Utils.getApp().startActivity(installAppIntent);
    }

    public static boolean isAppDebug() {
        return isAppDebug(Utils.getApp().getPackageName());
    }

    public static boolean isAppDebug(String str) {
        if (UtilsBridge.isSpace(str)) {
            return false;
        }
        try {
            return (Utils.getApp().getPackageManager().getApplicationInfo(str, 0).flags & 2) != 0;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static boolean isAppInstalled(String str) {
        if (UtilsBridge.isSpace(str)) {
            return false;
        }
        try {
            return Utils.getApp().getPackageManager().getApplicationInfo(str, 0).enabled;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean isAppSystem() {
        return isAppSystem(Utils.getApp().getPackageName());
    }

    public static boolean isAppSystem(String str) {
        if (UtilsBridge.isSpace(str)) {
            return false;
        }
        try {
            return (Utils.getApp().getPackageManager().getApplicationInfo(str, 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public static void launchApp(String str) {
        if (UtilsBridge.isSpace(str)) {
            return;
        }
        Intent launchAppIntent = UtilsBridge.getLaunchAppIntent(str);
        if (launchAppIntent == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
        } else {
            Utils.getApp().startActivity(launchAppIntent);
        }
    }

    public static void launchAppDetailsSettings() {
        launchAppDetailsSettings(Utils.getApp().getPackageName());
    }

    public static void launchAppDetailsSettings(Activity activity, int i11) {
        launchAppDetailsSettings(activity, i11, Utils.getApp().getPackageName());
    }

    public static void launchAppDetailsSettings(Activity activity, int i11, String str) {
        if (activity == null || UtilsBridge.isSpace(str)) {
            return;
        }
        Intent launchAppDetailsSettingsIntent = UtilsBridge.getLaunchAppDetailsSettingsIntent(str, false);
        if (UtilsBridge.isIntentAvailable(launchAppDetailsSettingsIntent)) {
            activity.startActivityForResult(launchAppDetailsSettingsIntent, i11);
        }
    }

    public static void launchAppDetailsSettings(String str) {
        if (UtilsBridge.isSpace(str)) {
            return;
        }
        Intent launchAppDetailsSettingsIntent = UtilsBridge.getLaunchAppDetailsSettingsIntent(str, true);
        if (UtilsBridge.isIntentAvailable(launchAppDetailsSettingsIntent)) {
            Utils.getApp().startActivity(launchAppDetailsSettingsIntent);
        }
    }

    public static void registerAppStatusChangedListener(@NonNull Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        UtilsBridge.addOnAppStatusChangedListener(onAppStatusChangedListener);
    }

    public static void relaunchApp() {
        relaunchApp(false);
    }

    public static void relaunchApp(boolean z10) {
        Intent launchAppIntent = UtilsBridge.getLaunchAppIntent(Utils.getApp().getPackageName());
        if (launchAppIntent == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
            return;
        }
        launchAppIntent.addFlags(335577088);
        Utils.getApp().startActivity(launchAppIntent);
        if (z10) {
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }

    public static void uninstallApp(String str) {
        if (UtilsBridge.isSpace(str)) {
            return;
        }
        Utils.getApp().startActivity(UtilsBridge.getUninstallAppIntent(str));
    }

    public static void unregisterAppStatusChangedListener(@NonNull Utils.OnAppStatusChangedListener onAppStatusChangedListener) {
        UtilsBridge.removeOnAppStatusChangedListener(onAppStatusChangedListener);
    }
}
