package com.hisavana.common.launcher;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.interfacz.AdShowListener;
import com.hisavana.common.utils.AdLogUtil;
import h7.a;
import java.util.List;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes4.dex */
public class SelfRenderUtil {
    public static String getIconMaterialPath(TAdNativeInfo tAdNativeInfo) {
        if (tAdNativeInfo == null) {
            return null;
        }
        String url = tAdNativeInfo.getIcon() == null ? "" : tAdNativeInfo.getIcon().getUrl();
        if (TextUtils.isEmpty(url) || (tAdNativeInfo.isInternalAd() && tAdNativeInfo.isFromLocal())) {
            return url;
        }
        return DiskLruCacheUtil.e(url, tAdNativeInfo.isInternalAd() ? 4 : 1);
    }

    public static void handleClick(TAdNativeInfo tAdNativeInfo) {
        NativeAdWrapper nativeAdWrapper;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null) {
            return;
        }
        nativeAdWrapper.handleClick();
    }

    public static void handleClick(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a.d(str);
    }

    public static void handleShow(TAdNativeInfo tAdNativeInfo) {
        NativeAdWrapper nativeAdWrapper;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null) {
            return;
        }
        nativeAdWrapper.handleShow();
    }

    public static boolean launchApp(Context context, String str, String str2) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(ASTNode.DEOP);
            intent.setData(Uri.parse(str));
            intent.setPackage(str2);
            context.startActivity(intent);
            return true;
        } catch (Throwable th2) {
            AdLogUtil.Log().w("SelfRenderUtil", "launchApp by deeplink error:" + th2.getMessage() + ", deeplink is " + str);
            try {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str2);
                if (launchIntentForPackage == null) {
                    return false;
                }
                launchIntentForPackage.addFlags(ASTNode.DEOP);
                context.startActivity(launchIntentForPackage);
                return true;
            } catch (Throwable th3) {
                AdLogUtil.Log().w("SelfRenderUtil", "launchApp by package name error:" + th3.getMessage());
                return false;
            }
        }
    }

    public static void registerViewForInteraction(TAdNativeInfo tAdNativeInfo, View view, AdShowListener adShowListener) {
        NativeAdWrapper nativeAdWrapper;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null) {
            return;
        }
        nativeAdWrapper.registerViewForInteraction(view, adShowListener);
    }

    public static void trackRecommendClick(TAdNativeInfo tAdNativeInfo, String str, String str2) {
        NativeAdWrapper nativeAdWrapper;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null) {
            return;
        }
        nativeAdWrapper.trackRecommendClick(str, str2);
    }

    public static void trackRecommendShow(TAdNativeInfo tAdNativeInfo, List<SSPWebRecommendInfo> list) {
        NativeAdWrapper nativeAdWrapper;
        if (tAdNativeInfo == null || (nativeAdWrapper = tAdNativeInfo.getNativeAdWrapper()) == null) {
            return;
        }
        nativeAdWrapper.trackRecommendShow(list);
    }
}
