package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.data.bean.inapp.ApkInfo;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0 f21683a = new b0();

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/b0$a", "Lcom/google/gson/reflect/TypeToken;", "", "", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends TypeToken<List<? extends String>> {
        a() {
        }
    }

    private b0() {
    }

    private final int a(PsAppInfo psAppInfo) {
        List<ApkInfo> apkList;
        if (!i(i7.c.f(), psAppInfo.getModelWhite(), psAppInfo.getModelBlack(), true)) {
            return 1111;
        }
        List<ApkInfo> apkList2 = psAppInfo.getApkList();
        if (apkList2 != null && !apkList2.isEmpty() && (apkList = psAppInfo.getApkList()) != null) {
            for (ApkInfo apkInfo : apkList) {
                if (apkInfo != null) {
                    b0 b0Var = f21683a;
                    if (b0Var.i(DeviceUtil.d(), apkInfo.getCountryCodes(), null, false)) {
                        int iG = i7.c.g();
                        Integer sysVersionCode = apkInfo.getSysVersionCode();
                        Intrinsics.g(sysVersionCode, "getSysVersionCode(...)");
                        if (iG >= sysVersionCode.intValue() && b0Var.i(i7.c.h(), apkInfo.getAndroidSupportVersion(), null, false) && b0Var.i(i7.c.a(), apkInfo.getBrand(), null, true) && b0Var.i(i7.c.f(), apkInfo.getModel(), apkInfo.getNonModel(), true) && b0Var.l(i7.c.b(), apkInfo.getCpus())) {
                            return 0;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return 1112;
    }

    private final String f(String str) {
        String strE = str != null ? DiskLruCacheUtil.e(str, 4) : null;
        return strE == null ? "" : strE;
    }

    private final boolean h(String str, String str2, String str3) {
        if ((str2 == null || str2.length() == 0) && (str3 == null || str3.length() == 0)) {
            return true;
        }
        if (str == null || str.length() == 0) {
            return false;
        }
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (str2 != null && str2.length() != 0) {
            Locale locale2 = Locale.getDefault();
            Intrinsics.g(locale2, "getDefault(...)");
            String lowerCase2 = str2.toLowerCase(locale2);
            Intrinsics.g(lowerCase2, "toLowerCase(...)");
            return StringsKt.S0(lowerCase2, new String[]{","}, false, 0, 6, null).contains(lowerCase);
        }
        if (str3 != null && str3.length() != 0) {
            Locale locale3 = Locale.getDefault();
            Intrinsics.g(locale3, "getDefault(...)");
            String lowerCase3 = str3.toLowerCase(locale3);
            Intrinsics.g(lowerCase3, "toLowerCase(...)");
            if (!StringsKt.S0(lowerCase3, new String[]{","}, false, 0, 6, null).contains(lowerCase)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005f  */
    /* JADX WARN: Code duplicated, block: B:32:0x008c  */
    private final boolean i(String str, String str2, String str3, boolean z10) {
        boolean z11;
        boolean z12;
        if (((str2 == null || str2.length() == 0) && !z10) || str == null || str.length() == 0) {
            return false;
        }
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (str2 == null || str2.length() == 0 || StringsKt.H(str2, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, true)) {
            z11 = true;
        } else {
            Locale locale2 = Locale.getDefault();
            Intrinsics.g(locale2, "getDefault(...)");
            String lowerCase2 = str2.toLowerCase(locale2);
            Intrinsics.g(lowerCase2, "toLowerCase(...)");
            if (StringsKt.S0(lowerCase2, new String[]{","}, false, 0, 6, null).contains(lowerCase)) {
                z11 = true;
            } else {
                z11 = false;
            }
        }
        if (str3 == null || str3.length() == 0) {
            z12 = true;
        } else {
            Locale locale3 = Locale.getDefault();
            Intrinsics.g(locale3, "getDefault(...)");
            String lowerCase3 = str3.toLowerCase(locale3);
            Intrinsics.g(lowerCase3, "toLowerCase(...)");
            if (StringsKt.S0(lowerCase3, new String[]{","}, false, 0, 6, null).contains(lowerCase)) {
                z12 = false;
            } else {
                z12 = true;
            }
        }
        return z11 && z12;
    }

    private final boolean k(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        try {
            Date date = simpleDateFormat.parse(str);
            if (date == null) {
                date = new Date();
            }
            Date date2 = simpleDateFormat.parse(str2);
            if (date2 == null) {
                date2 = new Date();
            }
            return date.compareTo(date2) > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    private final boolean l(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        List listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(listS0, 10));
        Iterator it = listS0.iterator();
        while (it.hasNext()) {
            arrayList.add(StringsKt.n1((String) it.next()).toString());
        }
        Set setW0 = CollectionsKt.W0(arrayList);
        List listS1 = StringsKt.S0(str2, new String[]{","}, false, 0, 6, null);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(listS1, 10));
        Iterator it2 = listS1.iterator();
        while (it2.hasNext()) {
            arrayList2.add(StringsKt.n1((String) it2.next()).toString());
        }
        return !CollectionsKt.o0(setW0, CollectionsKt.W0(arrayList2)).isEmpty();
    }

    public final int b(String str, DefaultAdDTO ad2, String str2, PsAppInfo psAppInfo) {
        Intrinsics.h(ad2, "ad");
        try {
            if (!h(DeviceUtil.d(), ad2.getCountryWhite(), ad2.getCountryBlack())) {
                return 1107;
            }
            if (!h(i7.c.a(), ad2.getBrandWhite(), ad2.getBrandBlack())) {
                return 1108;
            }
            if (k(str, ad2.getEndDate())) {
                return 1101;
            }
            if (k(ad2.getStartDate(), str)) {
                return 1102;
            }
            if (ad2.getShowMaxOfDay() <= 0) {
                return 1109;
            }
            String displayedDate = ad2.getDisplayedDate();
            if (displayedDate != null && displayedDate.length() != 0 && TextUtils.equals(ad2.getDisplayedDate(), str) && ad2.getDisplayedTimes() >= ad2.getShowMaxOfDay()) {
                return 1103;
            }
            int iA = com.cloud.hisavana.sdk.common.util.d0.a(ad2.getPullNewestLive(), str2, null);
            if (iA != 0) {
                return iA == 1 ? 1105 : 1106;
            }
            if ((ad2.getPullNewestLive() == 1 || ad2.getPullNewestLive() == 2) && psAppInfo != null) {
                return f21683a.a(psAppInfo);
            }
            return 0;
        } catch (Exception e11) {
            e4.b().w("DefaultAdUtil", "check ad validity error: " + e11.getMessage());
            return Integer.MAX_VALUE;
        }
    }

    public final AdsDTO c(DefaultAdDTO ad2, boolean z10) {
        Intrinsics.h(ad2, "ad");
        AdsDTO adsDTO = new AdsDTO();
        AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.pmid = ad2.getCodeSeatId();
        adxImpBean.adt = ad2.getAdType();
        adsDTO.setImpBeanRequest(adxImpBean);
        adsDTO.setAdCreativeId(ad2.getAdCreativeId());
        adsDTO.setFirstPrice(ad2.getFirstPrice());
        adsDTO.setSettlementRatio(ad2.getSettlementRatio());
        adsDTO.setMaterialStyle(ad2.getMaterialStyle());
        NativeBean nativeBean = new NativeBean();
        NativeBean.TitleDTO titleDTO = new NativeBean.TitleDTO(ad2.getTitle());
        NativeBean.DescriptDTO descriptDTO = new NativeBean.DescriptDTO(ad2.getDescription());
        NativeBean.ButtonDTO buttonDTO = new NativeBean.ButtonDTO(ad2.getButton());
        NativeBean.LogoDTO logoDTO = z10 ? new NativeBean.LogoDTO(f(ad2.getLogoUrl())) : new NativeBean.LogoDTO(ad2.getLogoUrl());
        ArrayList arrayList = new ArrayList();
        arrayList.add(z10 ? new NativeBean.MainImagesDTO(f(ad2.getMainIngUrl())) : new NativeBean.MainImagesDTO(ad2.getMainIngUrl()));
        nativeBean.setTitle(titleDTO);
        nativeBean.setDescript(descriptDTO);
        nativeBean.setLogo(logoDTO);
        nativeBean.setButton(buttonDTO);
        nativeBean.setMainImages(arrayList);
        adsDTO.setAdChoiceImageUrl(z10 ? f(ad2.getAdChoiceImageUrl()) : ad2.getAdChoiceImageUrl());
        adsDTO.setNativeObject(nativeBean);
        adsDTO.setAdLaunchTypes(4);
        adsDTO.setExpiredDate(ad2.getEndDate());
        String pageUrl = ad2.getPageUrl();
        Intrinsics.g(pageUrl, "getPageUrl(...)");
        if (StringsKt.c0(pageUrl, AgentPageJsBridge.AGENT_PAGE_INFO, false, 2, null) && z10) {
            String pageUrl2 = ad2.getPageUrl();
            Intrinsics.g(pageUrl2, "getPageUrl(...)");
            if (StringsKt.c0(pageUrl2, UrlUtils.QUESTION_MARK, false, 2, null)) {
                ad2.setPageUrl(ad2.getPageUrl() + "&htmlfromlocal=true");
            } else {
                ad2.setPageUrl(ad2.getPageUrl() + "?htmlfromlocal=true");
            }
        }
        adsDTO.setClickUrl(ad2.getPageUrl());
        adsDTO.setCampaignname(ad2.getCampaignname());
        Integer materialType = ad2.getMaterialType();
        Intrinsics.g(materialType, "getMaterialType(...)");
        adsDTO.setDefaultMaterialType(materialType.intValue());
        adsDTO.setFromLocal(z10);
        adsDTO.setShowTime(ad2.getShowTime());
        adsDTO.setShowTrackingSecretKey(ad2.getShowTrackingSecretKey());
        if (ad2.getAppInfo() != null) {
            adsDTO.setAppInfo(ad2.getAppInfo());
            adsDTO.setPslinkInfo(N0.F(adsDTO));
        }
        adsDTO.setDeepLinkUrl(ad2.getDeepLinkUrl());
        if (ad2.getClickUrls() != null) {
            try {
                adsDTO.setStoreDeeplink((ArrayList) GsonUtil.b(ad2.getClickUrls(), new a().getType()));
            } catch (Exception unused) {
            }
        }
        adsDTO.setPullNewestLive(Integer.valueOf(ad2.getPullNewestLive()));
        AdsProtocolBean.Ext ext = new AdsProtocolBean.Ext();
        if (ad2.getPullNewestLive() == 1 || ad2.getPullNewestLive() == 2) {
            ext.setStoreFlag(1);
            ext.setStoreTitle(com.cloud.sdk.commonutil.util.e.a().getString(R$string.download_by_pamlstore));
        }
        ext.setDwellTime(ad2.getAdActivationRewardTime());
        adsDTO.setExt(ext);
        adsDTO.setMaterialWith(ad2.getMaterialWidth());
        adsDTO.setMaterialHeight(ad2.getMaterialHeight());
        adsDTO.setPackageName(ad2.getPackageName());
        adsDTO.setClickTrackingUrls(ad2.getClickTrackingUrls());
        adsDTO.setShowTrackingUrls(ad2.getShowTrackingUrls());
        adsDTO.setPsClickTrackingUrls(ad2.getPsClickTrackingUrls());
        adsDTO.setTrackType(Integer.valueOf(ad2.getTrackType()));
        NativeBean nativeObject = adsDTO.getNativeObject();
        if (nativeObject != null) {
            nativeObject.setRating(Integer.valueOf(ad2.getRating()));
        }
        adsDTO.setScale(ad2.getScale());
        adsDTO.setRewardDuration(Integer.valueOf(ad2.getRewardDuration()));
        adsDTO.setDefaultAdSupportNetType(ad2.getSupportNetType());
        adsDTO.setDownloadArea(ad2.getDownloadArea());
        adsDTO.setAutoRetentionTime(ad2.getAutoRetentionTime());
        return adsDTO;
    }

    public final String d() {
        try {
            String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(Calendar.getInstance().getTime());
            return str == null ? "" : str;
        } catch (Exception unused) {
            return "";
        }
    }

    public final String e(AdsDTO ad2) {
        Intrinsics.h(ad2, "ad");
        if (ad2.getAdType() == 6) {
            return null;
        }
        if (ad2.getAdType() == 2 && (TextUtils.equals(ad2.getMaterialStyle(), "B20301") || TextUtils.equals(ad2.getMaterialStyle(), "B20302") || TextUtils.equals(ad2.getMaterialStyle(), "B20303"))) {
            return null;
        }
        return ad2.getLogoUrl();
    }

    public final boolean g(String str, String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            Iterator it = (TextUtils.isEmpty(str2) ? CollectionsKt.l() : StringsKt.S0(str2, new String[]{","}, false, 0, 6, null)).iterator();
            while (it.hasNext()) {
                if (StringsKt.a0(str, (String) it.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String j(AdsDTO ad2) {
        Intrinsics.h(ad2, "ad");
        if (ad2.getAdType() == 6 || (ad2.getAdType() == 2 && (TextUtils.equals(ad2.getMaterialStyle(), "B20301") || TextUtils.equals(ad2.getMaterialStyle(), "B20302") || TextUtils.equals(ad2.getMaterialStyle(), "B20303")))) {
            String logoUrl = ad2.getLogoUrl();
            Intrinsics.e(logoUrl);
            return logoUrl;
        }
        String adImgUrl = ad2.getAdImgUrl();
        Intrinsics.e(adImgUrl);
        return adImgUrl;
    }
}
