package com.cloud.tmc.miniutils.util;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import java.io.File;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public final class IntentUtils {
    private IntentUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Intent getCaptureIntent(Uri uri) {
        return getCaptureIntent(uri, false);
    }

    public static Intent getCaptureIntent(Uri uri, boolean z10) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", uri);
        intent.addFlags(1);
        return getIntent(intent, z10);
    }

    public static Intent getComponentIntent(String str, String str2) {
        return getComponentIntent(str, str2, null, false);
    }

    public static Intent getComponentIntent(String str, String str2, Bundle bundle) {
        return getComponentIntent(str, str2, bundle, false);
    }

    public static Intent getComponentIntent(String str, String str2, Bundle bundle, boolean z10) {
        Intent intent = new Intent();
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setComponent(new ComponentName(str, str2));
        return getIntent(intent, z10);
    }

    public static Intent getComponentIntent(String str, String str2, boolean z10) {
        return getComponentIntent(str, str2, null, z10);
    }

    public static Intent getDialIntent(@NonNull String str) {
        return getIntent(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str))), true);
    }

    public static Intent getInstallAppIntent(Uri uri) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, "application/vnd.android.package-archive");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(1);
        }
        return intent.addFlags(ASTNode.DEOP);
    }

    public static Intent getInstallAppIntent(File file) {
        Uri uriForFile;
        if (!UtilsBridge.isFileExists(file)) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 24) {
            uriForFile = Uri.fromFile(file);
        } else {
            uriForFile = FileProvider.getUriForFile(Utils.getApp(), Utils.getApp().getPackageName() + ".utilcode.provider", file);
        }
        return getInstallAppIntent(uriForFile);
    }

    private static Intent getIntent(Intent intent, boolean z10) {
        return z10 ? intent.addFlags(ASTNode.DEOP) : intent;
    }

    public static Intent getLaunchAppDetailsSettingsIntent(String str) {
        return getLaunchAppDetailsSettingsIntent(str, false);
    }

    public static Intent getLaunchAppDetailsSettingsIntent(String str, boolean z10) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + str));
        return getIntent(intent, z10);
    }

    public static Intent getLaunchAppIntent(String str) {
        String launcherActivity = UtilsBridge.getLauncherActivity(str);
        if (UtilsBridge.isSpace(launcherActivity)) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setClassName(str, launcherActivity);
        return intent.addFlags(ASTNode.DEOP);
    }

    public static Intent getSendSmsIntent(@NonNull String str, String str2) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(Constants.SMSTO + Uri.encode(str)));
        intent.putExtra(Constants.SMS_BODY, str2);
        return getIntent(intent, true);
    }

    public static Intent getShareImageIntent(Uri uri) {
        return getShareTextImageIntent("", uri);
    }

    public static Intent getShareTextImageIntent(@Nullable String str, Uri uri) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.setType(ShareConstant.SHARE_TYPE_IMAGE);
        return getIntent(Intent.createChooser(intent, ""), true);
    }

    public static Intent getShareTextIntent(String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(ShareConstant.SHARE_TYPE_TEXT);
        intent.putExtra("android.intent.extra.TEXT", str);
        return getIntent(Intent.createChooser(intent, ""), true);
    }

    public static Intent getShutdownIntent() {
        Intent intent = Build.VERSION.SDK_INT >= 26 ? new Intent("com.android.internal.intent.action.REQUEST_SHUTDOWN") : new Intent("android.intent.action.ACTION_REQUEST_SHUTDOWN");
        intent.putExtra("android.intent.extra.KEY_CONFIRM", false);
        return intent.addFlags(ASTNode.DEOP);
    }

    public static Intent getUninstallAppIntent(String str) {
        Intent intent = new Intent("android.intent.action.DELETE");
        intent.setData(Uri.parse("package:" + str));
        return intent.addFlags(ASTNode.DEOP);
    }

    public static boolean isIntentAvailable(Intent intent) {
        return Utils.getApp().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }
}
