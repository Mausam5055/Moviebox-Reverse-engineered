package com.transsion.ad.strategy;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.ad.Constants;
import com.transsion.ad.MBAd;
import com.transsion.ad.R$string;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.ad.db.pslink.AttributionPoint;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import com.transsion.ad.ps.attribution.AttributionProduceManager;
import com.transsion.ad.ps.installed.AppInstallManager;
import com.transsion.ad.ps.model.PSAdTypeEnum;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.ad.web.AdWebActivity;
import com.transsion.ad.web.cct.CustomTabsHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f42227a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f42228b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f42229c = "{\n            \"adSource\": \"ps_candidate\",\n            \"buttonText\": \"Go\",\n            \"categoryCode\": \"1896ff1657b2408daeb264ba6d370bf2\",\n            \"categoryName\": \"Finance\",\n            \"detail\": {\n                \"downloadCount\": \"27073080\",\n                \"iconUrl\": \"https://cdn2.palmplaystore.com/static/59/42d6df6edbe84bdd926fab309aa48261-V02222_512~512.webp?blurhash=LVRpFBkB%5E%23j%5BbHjaoLfQ%7ESa%7C9Jjt\",\n                \"img0\": \"https://cdn2.palmplaystore.com/static/889/0a4a8ed888f04551bcef55e4d31187ff-V02222_288~512.webp?blurhash=LWC%5D6r0f%2BYRO*JkWXos.5q%3FGNGXn\",\n                \"img1\": \"https://cdn2.palmplaystore.com/static/881/b88eab70ee8e445a836225f7fd7c7180-V02222_288~512.webp?blurhash=LqHM4j%7EpXnRj4oI%5Bxtx%5DNeM%7BShae\",\n                \"img2\": \"https://cdn2.palmplaystore.com/static/791/41db2f5cea9549f584c0bae3a7b1b1c9-V02222_288~512.webp?blurhash=LQFj%24.WU4mS7*woHMcRll.tQR%3BR-\",\n                \"img3\": \"https://cdn2.palmplaystore.com/static/181/e99237f24ede40f4a9fd56a08a1c30a5-V02222_288~512.webp?blurhash=LE9ums%7D5Uu9b4p9IPBxZm%25kryDvd\",\n                \"img4\": \"https://cdn2.palmplaystore.com/static/574/2bddbb51c7874e7a906ceb55a75b9124-V02222_288~512.webp?blurhash=LVGTa6n301RP3ERP_3n%23PXo%7DxBW%3D\",\n                \"isOffer\": 1,\n                \"itemID\": \"s_b7801ad36c0a0e4c7fc1f1e72bb04b2d\",\n                \"lan\": \"EN\",\n                \"name\": \"Moniepoint Personal Banking\",\n                \"packageName\": \"com.moniepoint.personal\",\n                \"safeTagList\": [\n                    {\n                        \"icon\": \"https://cdn2.palmplaystore.com/static/673/fa007ff1d5c14939b7d52a5d87247b5f.webp\",\n                        \"id\": 100033,\n                        \"isDeleted\": 0,\n                        \"name\": \"Free\",\n                        \"priority\": 90,\n                        \"type\": 4\n                    }\n                ],\n                \"safetyStyle\": 1,\n                \"score\": \"4.0\",\n                \"screenshotMode\": [\n                    0,\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"simpleDescription\": \"Send money & airtime, request a debit card & manage your savings from one place\",\n                \"sourceSize\": \"71526348\",\n                \"star\": \"4\",\n                \"tagList\": [],\n                \"versionCode\": \"2068\"\n            },\n            \"downloadCount\": 27061226,\n            \"exists\": null,\n            \"gpLink\": \"https://play.google.com/store/apps/details?id=com.moniepoint.personal&hl=en\",\n            \"iconUrl\": \"https://cdn2.palmplaystore.com/static/59/42d6df6edbe84bdd926fab309aa48261-V02222_512~512.webp?blurhash=LVRpFBkB%5E%23j%5BbHjaoLfQ%7ESa%7C9Jjt\",\n            \"id\": 580,\n            \"isOffer\": 1,\n            \"itemID\": \"s_b7801ad36c0a0e4c7fc1f1e72bb04b2d\",\n            \"name\": null,\n            \"offerDesc\": \"\",\n            \"packageName\": \"com.moniepoint.personal\",\n            \"planName\": \"Moniepoint上线测试20250313-MB信息流竖屏\",\n            \"showContent\": \"https://cdn2.palmplaystore.com/static/403/f2d43eb546cb4cd9ad61fe9adec150d4.webp?blurhash=LXE%7B%5EdOtxrR401rpIVtl%7EUtRkCaK\",\n            \"showType\": 9,\n            \"simpleDescription\": \"Send money & airtime, request a debit card & manage your savings from one place\",\n            \"size\": 71526348,\n            \"star\": \"4.0\",\n            \"verifyGoogle\": \"F\",\n            \"versionCode\": 2068,\n            \"versionName\": \"1.23.0\"\n        }";

    public interface a {
        void onAdClick(AdPlans adPlans);
    }

    private b() {
    }

    public static /* synthetic */ void b(b bVar, String str, String str2, AdPlans adPlans, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            adPlans = null;
        }
        bVar.a(str, str2, adPlans);
    }

    private final String d() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean e(AdPlans adPlans) {
        String psLink;
        AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(adPlans);
        if (!AdPlanSourceManager.f42166a.h(adPlans)) {
            return false;
        }
        if (adMaterialListA == null || (psLink = adMaterialListA.getPsLink()) == null) {
            psLink = "";
        }
        qi.b.f73634a.p((RecommendInfo) com.blankj.utilcode.util.o.d(psLink, RecommendInfo.class), true, String.valueOf(adPlans.getExtAdSlot()), adPlans.getBidEcpmCent());
        return true;
    }

    private final boolean f(AdPlans adPlans) {
        AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(adPlans);
        if (adMaterialListA != null) {
            adMaterialListA.getDeeplink();
        }
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if (!adPlanSourceManager.j(adPlans) && !adPlanSourceManager.l(adPlans)) {
            return false;
        }
        RecommendInfo psRecommendInfo = adMaterialListA != null ? adMaterialListA.getPsRecommendInfo() : null;
        String gpLink = psRecommendInfo != null ? psRecommendInfo.getGpLink() : null;
        String deepLink = psRecommendInfo != null ? psRecommendInfo.getDeepLink() : null;
        if (TextUtils.isEmpty(deepLink)) {
            deepLink = gpLink;
        }
        Integer adType = psRecommendInfo != null ? psRecommendInfo.getAdType() : null;
        int value = PSAdTypeEnum.PS_AD_TYPE_USER_RETENTION_1.getValue();
        if (adType == null || adType.intValue() != value) {
            int value2 = PSAdTypeEnum.PS_AD_TYPE_USER_ACQUISITION_0.getValue();
            if (adType != null && adType.intValue() == value2) {
                qi.b bVar = qi.b.f73634a;
                if (bVar.n()) {
                    bVar.p(psRecommendInfo, true, String.valueOf(adPlans.getExtAdSlot()), adPlans.getBidEcpmCent());
                } else {
                    g(gpLink);
                    AttributionProduceManager.f42180c.l(adPlans, AttributionPoint.AttributionType.GP_CLICK);
                    AppInstallManager appInstallManager = AppInstallManager.f42196a;
                    String packageName = psRecommendInfo.getPackageName();
                    if (packageName == null) {
                        packageName = "PS_GP没有获取到包名";
                    }
                    AppInstalledBean appInstalledBeanA = appInstallManager.a(packageName);
                    appInstalledBeanA.setSource(AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB);
                    Application applicationA = Utils.a();
                    Intrinsics.g(applicationA, "getApp(...)");
                    appInstallManager.e(applicationA, appInstalledBeanA);
                }
            }
        } else if (g(deepLink)) {
            AttributionProduceManager.f42180c.l(adPlans, TextUtils.isEmpty(deepLink) ? AttributionPoint.AttributionType.GP_CLICK : AttributionPoint.AttributionType.CLICK);
        } else {
            qi.b bVar2 = qi.b.f73634a;
            if (bVar2.n()) {
                bVar2.p(psRecommendInfo, true, String.valueOf(adPlans.getExtAdSlot()), adPlans.getBidEcpmCent());
            } else {
                g(gpLink);
                AttributionProduceManager.f42180c.l(adPlans, AttributionPoint.AttributionType.GP_CLICK);
            }
        }
        return true;
    }

    private final void h(String str, AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum adOverridePendingTransitionEnum, AdPlans adPlans, String str2) {
        hi.a aVarE;
        nh.m mVar = nh.m.f70474a;
        if (mVar.e()) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            if (mVar.j(applicationA)) {
                AdUrlParameterManager adUrlParameterManager = AdUrlParameterManager.f42213a;
                if (adUrlParameterManager.a(str)) {
                    Intent intent = new Intent("android.intent.action.VIEW", str != null ? Uri.parse(str) : null);
                    intent.addFlags(ASTNode.DEOP);
                    Utils.a().startActivity(intent);
                    return;
                }
                String strB = adUrlParameterManager.b(str == null ? "" : str, str2);
                oi.a.o(oi.a.f71022a, str2 == null ? "" : str2, d() + " --> jumpH5() --> h5LinkOpenByCCT = " + (adPlans != null ? Boolean.valueOf(adPlans.getH5LinkOpenByCct()) : null) + " --> newUrl = " + strB, 6, false, 8, null);
                if (adPlans != null && adPlans.getH5LinkOpenByCct()) {
                    if (str == null || str.length() == 0) {
                        return;
                    }
                    l(str);
                    return;
                }
                MBAd mBAd = MBAd.f41751a;
                MBAd.a aVarC = mBAd.c();
                if (aVarC == null || !aVarC.i()) {
                    AdWebActivity.INSTANCE.a(strB, adOverridePendingTransitionEnum, str2);
                    return;
                }
                MBAd.a aVarC2 = mBAd.c();
                if (aVarC2 == null || (aVarE = aVarC2.e()) == null) {
                    return;
                }
                aVarE.a(strB, adOverridePendingTransitionEnum);
                return;
            }
        }
        Activity activityB = com.blankj.utilcode.util.a.b();
        ToastUtils.s(activityB != null ? activityB.getString(R$string.ad_no_network) : null, new Object[0]);
    }

    static /* synthetic */ void i(b bVar, String str, AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum adOverridePendingTransitionEnum, AdPlans adPlans, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            adOverridePendingTransitionEnum = null;
        }
        if ((i11 & 8) != 0) {
            str2 = "";
        }
        bVar.h(str, adOverridePendingTransitionEnum, adPlans, str2);
    }

    private final boolean n(AdPlans adPlans) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!AdPlanSourceManager.f42166a.h(adPlans)) {
                return false;
            }
            List<AdMaterialList> adMaterialList = adPlans != null ? adPlans.getAdMaterialList() : null;
            List<AdMaterialList> list = adMaterialList;
            if (list != null && !list.isEmpty()) {
                String psLink = adMaterialList.get(0).getPsLink();
                if (TextUtils.isEmpty(psLink)) {
                    return false;
                }
                qi.b.f73634a.p((RecommendInfo) com.blankj.utilcode.util.o.d(psLink, RecommendInfo.class), true, String.valueOf(adPlans.getExtAdSlot()), adPlans.getBidEcpmCent());
                objM454constructorimpl = Result.m454constructorimpl(Boolean.TRUE);
            }
            return false;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final void a(String str, String str2, AdPlans adPlans) {
        List<AdMaterialList> adMaterialList;
        AdMaterialList adMaterialList2;
        List<AdMaterialList> adMaterialList3;
        AdMaterialList adMaterialList4;
        RecommendInfo psRecommendInfo;
        oi.a.g(oi.a.f71022a, null, "AdClickManager --> adClick() --> deeplink = " + str + " --> h5Url = " + str2, 0, false, 13, null);
        if (n(adPlans)) {
            return;
        }
        String gpLink = (adPlans == null || (adMaterialList3 = adPlans.getAdMaterialList()) == null || (adMaterialList4 = (AdMaterialList) CollectionsKt.k0(adMaterialList3)) == null || (psRecommendInfo = adMaterialList4.getPsRecommendInfo()) == null) ? null : psRecommendInfo.getGpLink();
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f42166a;
        if (!adPlanSourceManager.j(adPlans) && !adPlanSourceManager.l(adPlans)) {
            if (g(str)) {
                return;
            }
            i(this, str2, null, adPlans, null, 10, null);
            return;
        }
        qi.b bVar = qi.b.f73634a;
        if (bVar.n() || gpLink == null || !StringsKt.c0(gpLink, Constants.GP_DEEPLINK, false, 2, null)) {
            bVar.p((adPlans == null || (adMaterialList = adPlans.getAdMaterialList()) == null || (adMaterialList2 = (AdMaterialList) CollectionsKt.k0(adMaterialList)) == null) ? null : adMaterialList2.getPsRecommendInfo(), true, String.valueOf(adPlans != null ? adPlans.getExtAdSlot() : null), adPlans != null ? adPlans.getBidEcpmCent() : null);
        } else {
            g(gpLink);
        }
    }

    public final void c(a aVar) {
        if (aVar == null) {
            return;
        }
        List list = f42228b;
        if (list.contains(aVar)) {
            return;
        }
        list.add(aVar);
    }

    public final boolean g(String str) {
        Object objM454constructorimpl;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(str);
            Intent intent = new Intent();
            intent.setData(uri);
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(ASTNode.DEOP);
            Utils.a().startActivity(intent);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.TRUE);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            oi.a.g(oi.a.f71022a, null, f42227a.d() + " --> jumpDeeplink() --> e = " + thM457exceptionOrNullimpl, 0, false, 13, null);
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final void j(AdPlans adPlans, AdOverridePendingTransitionManager.AdOverridePendingTransitionEnum adOverridePendingTransitionEnum, String logTag, String sceneId) {
        Intrinsics.h(logTag, "logTag");
        Intrinsics.h(sceneId, "sceneId");
        if (adPlans == null) {
            oi.a.o(oi.a.f71022a, logTag, d() + " --> onBiddingAdClick() --> sceneId = " + sceneId + " --> adPlan == null", 6, false, 8, null);
            return;
        }
        AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(adPlans);
        if (adMaterialListA == null) {
            oi.a.o(oi.a.f71022a, logTag, d() + " --> onBiddingAdClick() --> sceneId = " + sceneId + " --> adMaterial == null", 6, false, 8, null);
            return;
        }
        k(adPlans);
        String deeplink = adMaterialListA.getDeeplink();
        String h5Link = adMaterialListA.getH5Link();
        String adSource = adPlans.getAdSource();
        oi.a.o(oi.a.f71022a, logTag, d() + " --> onBiddingAdClick() --> sceneId = " + sceneId + " --> name = " + adPlans.getName() + " --> adSource = " + adSource + " --> deeplink = " + deeplink + " --> h5Url = " + h5Link, 0, false, 12, null);
        if (e(adPlans) || f(adPlans) || g(deeplink)) {
            return;
        }
        h(h5Link, adOverridePendingTransitionEnum, adPlans, logTag);
    }

    public final void k(AdPlans adPlans) {
        Iterator it = f42228b.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onAdClick(adPlans);
        }
    }

    public final void l(String h5Url) {
        Object objM454constructorimpl;
        Unit unit;
        Intrinsics.h(h5Url, "h5Url");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (MBAd.f41751a.g()) {
                oi.a.e(oi.a.f71022a, d() + " --> openH5InCustomTab() --> h5Url = " + h5Url, 0, false, 6, null);
            }
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB != null) {
                CustomTabsHelper.Companion companion2 = CustomTabsHelper.f42458a;
                androidx.browser.customtabs.d dVarA = new androidx.browser.customtabs.d.b().a();
                Intrinsics.g(dVarA, "build(...)");
                CustomTabsHelper.Companion.f(companion2, activityB, dVarA, Uri.parse(h5Url), new xi.b(), null, 16, null);
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null && MBAd.f41751a.g()) {
            oi.a.e(oi.a.f71022a, f42227a.d() + " --> openH5InCustomTab() --> it = " + thM457exceptionOrNullimpl, 0, false, 6, null);
        }
    }

    public final void m(a aVar) {
        TypeIntrinsics.a(f42228b).remove(aVar);
    }
}
