package com.cloud.tmc.integration.utils.share;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.integration.utils.share.config.IShareStrategy;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0002J)\u0010\f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u000f\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002JR\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u001a\u001a\u00020\r2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J0\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u001c2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/cloud/tmc/integration/utils/share/ShareUtils;", "", "()V", "TAG", "", "createShareIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "shareParams", "Lcom/cloud/tmc/integration/utils/share/ShareParams;", "getAppName", "isGranted", "", TmcConstants.MENU_KEY_PERMISSION, "", "(Landroid/content/Context;[Ljava/lang/String;)Z", "share", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/utils/share/OnShareListener;", "shareFile", "Ljava/io/File;", "shareType", MimeTypes.BASE_TYPE_TEXT, "targetPackageName", "isFileProvider", "shareText", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShareUtils {
    public static final ShareUtils INSTANCE = new ShareUtils();
    private static final String TAG = "ShareUtils";

    private ShareUtils() {
    }

    @JvmStatic
    public static final Intent createShareIntent(Context context, ShareParams shareParams) {
        Intrinsics.h(context, "context");
        Intrinsics.h(shareParams, "shareParams");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(shareParams.getShareType());
        CharSequence title = shareParams.getTitle();
        if (title != null) {
            intent.putExtra("android.intent.extra.TITLE", title);
        }
        if (shareParams.getContent().length() > 0) {
            intent.putExtra("android.intent.extra.TEXT", shareParams.getContent());
        }
        CharSequence subLine = shareParams.getSubLine();
        if (subLine != null) {
            intent.putExtra("android.intent.extra.SUBJECT", subLine);
        }
        Uri fileUri = shareParams.getFileUri();
        if (fileUri != null) {
            intent.putExtra("android.intent.extra.STREAM", fileUri);
        }
        ClipData thumbnail = shareParams.getThumbnail();
        if (thumbnail != null) {
            intent.setClipData(thumbnail);
            intent.setFlags(1);
        }
        String targetPackageName = shareParams.getTargetPackageName();
        if (targetPackageName != null) {
            intent.setPackage(targetPackageName);
        }
        Intent intentCreateChooser = Intent.createChooser(intent, INSTANCE.getAppName(context));
        Intrinsics.g(intentCreateChooser, "createChooser(Intent(Int…  }, getAppName(context))");
        return intentCreateChooser;
    }

    private final String getAppName(Context context) {
        ApplicationInfo applicationInfo;
        CharSequence charSequenceLoadLabel;
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            String string = (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (charSequenceLoadLabel = applicationInfo.loadLabel(packageManager)) == null) ? null : charSequenceLoadLabel.toString();
            return string == null ? "" : string;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "getAppName failed!", th2);
            return "";
        }
    }

    @JvmStatic
    public static final boolean isGranted(Context context, String... permission) {
        Intrinsics.h(context, "context");
        Intrinsics.h(permission, "permission");
        ArrayList arrayList = new ArrayList();
        int length = permission.length;
        int i11 = 0;
        while (true) {
            boolean z10 = true;
            if (i11 >= length) {
                break;
            }
            if (androidx.core.content.b.checkSelfPermission(context, permission[i11]) != 0) {
                z10 = false;
            }
            arrayList.add(Boolean.valueOf(z10));
            i11++;
        }
        return (arrayList.isEmpty() || arrayList.contains(Boolean.FALSE)) ? false : true;
    }

    private final void share(Context context, ShareParams shareParams, OnShareListener listener) {
        if (shareParams.getStrategy() == null) {
            shareParams.setStrategy(new ShareStrategy());
        }
        IShareStrategy strategy = shareParams.getStrategy();
        if (strategy != null) {
            strategy.doShare(context, shareParams, listener);
        }
    }

    @JvmStatic
    public static final void shareFile(Context context, File shareFile, String shareType, String text, String targetPackageName, boolean isFileProvider, OnShareListener listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(shareFile, "shareFile");
        INSTANCE.share(context, new ShareParams(text == null ? "" : text, shareType == null ? FileExtKt.getMimeType(shareFile) : shareType, shareFile, 0, null, null, null, targetPackageName, null, isFileProvider, null, 1400, null), listener);
    }

    @JvmStatic
    public static final void shareText(Context context, CharSequence text, String targetPackageName, OnShareListener listener) {
        Intrinsics.h(context, "context");
        Intrinsics.h(text, "text");
        INSTANCE.share(context, new ShareParams(text, ShareConstant.SHARE_TYPE_TEXT, null, 0, null, null, null, targetPackageName, null, false, null, 1916, null), listener);
    }

    public static /* synthetic */ void shareText$default(Context context, CharSequence charSequence, String str, OnShareListener onShareListener, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str = null;
        }
        if ((i11 & 8) != 0) {
            onShareListener = null;
        }
        shareText(context, charSequence, str, onShareListener);
    }
}
