package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.VastClick;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastIcon;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.hisavana.sdk.e4;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.tmc.ad.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f22148a = new b();

    private b() {
    }

    public final String a(AdsDTO adsDTO) {
        String adImgUrl;
        VastMedia mainAd;
        if (adsDTO == null || !adsDTO.isVastTypeAd()) {
            adImgUrl = adsDTO != null ? adsDTO.getAdImgUrl() : null;
        } else {
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo == null || (mainAd = videoInfo.getMainAd()) == null || (adImgUrl = mainAd.getMediaResource()) == null) {
                adImgUrl = "";
            }
        }
        e4.b().d("AdMediaUtil", "getAdMainUrl ---->  " + adImgUrl);
        return adImgUrl;
    }

    public final int b(AdsDTO adsDTO) {
        String type;
        VastMedia mainAd;
        int i11 = 0;
        if (adsDTO != null && adsDTO.isVastTypeAd()) {
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo == null || (mainAd = videoInfo.getMainAd()) == null || (type = mainAd.getType()) == null) {
                type = "";
            }
            if (StringsKt.W(type, "video/", false, 2, null)) {
                i11 = 1;
            } else {
                i11 = StringsKt.W(type, "image/", false, 2, null) ? 2 : -1;
            }
        }
        e4.b().d("AdMediaUtil", "getAdMediaType ---->  " + i11);
        return i11;
    }

    public final List c(AdsDTO adsDTO, int i11) {
        VastData videoInfo;
        VastClick vastClick;
        List<String> clickTrack;
        VastData videoInfo2;
        VastIcon icon;
        List<String> iconClickTracking;
        if (i11 == 1) {
            return (adsDTO == null || (videoInfo2 = adsDTO.getVideoInfo()) == null || (icon = videoInfo2.getIcon()) == null || (iconClickTracking = icon.getIconClickTracking()) == null) ? new ArrayList() : iconClickTracking;
        }
        return (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (vastClick = videoInfo.getVastClick()) == null || (clickTrack = vastClick.getClickTrack()) == null) ? new ArrayList() : clickTrack;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0035 A[PHI: r3
  0x0035: PHI (r3v5 java.lang.String) = (r3v3 java.lang.String), (r3v8 java.lang.String) binds: [B:30:0x004b, B:20:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    public final String d(AdsDTO adsDTO, int i11) {
        VastData videoInfo;
        VastClick vastClick;
        String videoClick;
        String iconClick;
        VastData videoInfo2;
        VastClick vastClick2;
        VastData videoInfo3;
        VastIcon icon;
        String str = "";
        if (i11 == 1) {
            if (adsDTO == null || (videoInfo3 = adsDTO.getVideoInfo()) == null || (icon = videoInfo3.getIcon()) == null || (iconClick = icon.getIconClick()) == null) {
                iconClick = "";
            }
            if (!TextUtils.isEmpty(iconClick)) {
                str = iconClick;
            } else if (adsDTO != null && (videoInfo2 = adsDTO.getVideoInfo()) != null && (vastClick2 = videoInfo2.getVastClick()) != null && (videoClick = vastClick2.getVideoClick()) != null) {
                str = videoClick;
            }
        } else if (adsDTO != null && (videoInfo = adsDTO.getVideoInfo()) != null && (vastClick = videoInfo.getVastClick()) != null && (videoClick = vastClick.getVideoClick()) != null) {
            str = videoClick;
        }
        e4.b().d("AdMediaUtil", "getClickUrl is ---> getClickUrl = " + str);
        return str;
    }

    public final String e(AdsDTO ad2, int i11) {
        int i12;
        Intrinsics.h(ad2, "ad");
        if (ad2.getSource() == 4) {
            i12 = 2;
        } else {
            i12 = ad2.isOfflineAd() ? 1 : 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("s_");
        String strO = DeviceUtil.o();
        Intrinsics.g(strO, "getUUID(...)");
        sb2.append(new Regex("-").replace(strO, ""));
        sb2.append(",n_");
        sb2.append(i11);
        sb2.append(",t_");
        sb2.append(i12);
        return sb2.toString();
    }

    public final boolean f(AdsDTO adsDTO) {
        String psPackageName;
        String packageName;
        ViewJson.DialogJson dialogJson;
        String formPath;
        String url;
        ViewJson viewJsonData = adsDTO != null ? adsDTO.getViewJsonData() : null;
        Integer dialogType = viewJsonData != null ? viewJsonData.getDialogType() : null;
        if (dialogType != null && dialogType.intValue() == 1 && (!((dialogJson = viewJsonData.getDialogJson()) == null || (url = dialogJson.getUrl()) == null || url.length() <= 0) || ((formPath = viewJsonData.getFormPath()) != null && formPath.length() > 0))) {
            e4.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: from ad");
            return false;
        }
        ArrayList<String> storeDeeplink = adsDTO != null ? adsDTO.getStoreDeeplink() : null;
        if (storeDeeplink != null && (!storeDeeplink.isEmpty())) {
            e4.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: storedeeplink page");
            return false;
        }
        String deepLinkUrl = adsDTO != null ? adsDTO.getDeepLinkUrl() : null;
        if (deepLinkUrl != null && deepLinkUrl.length() > 0) {
            e4.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: deepLinkUrl page");
            return false;
        }
        if ((adsDTO == null || (packageName = adsDTO.getPackageName()) == null || packageName.length() <= 0) && (adsDTO == null || (psPackageName = adsDTO.getPsPackageName()) == null || psPackageName.length() <= 0)) {
            return true;
        }
        e4.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: packageName or psPackageName");
        return false;
    }

    public final boolean g(AdsDTO adsDTO) {
        Integer dspType;
        String realLandUrl;
        if (adsDTO != null) {
            Boolean preloadEnable = adsDTO.getPreloadEnable();
            Intrinsics.g(preloadEnable, "getPreloadEnable(...)");
            if (preloadEnable.booleanValue() && !adsDTO.isOfflineAd() && adsDTO.getSource() != 4 && (dspType = adsDTO.getDspType()) != null && dspType.intValue() == 1 && (realLandUrl = adsDTO.getRealLandUrl()) != null && realLandUrl.length() != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean h(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return (StringsKt.W(str, "http://", false, 2, null) || StringsKt.W(str, "https://", false, 2, null)) && !StringsKt.c0(str, Constants.GP_DEEPLINK, false, 2, null);
    }
}
