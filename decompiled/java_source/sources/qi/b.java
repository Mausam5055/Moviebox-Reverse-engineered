package qi;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c;
import com.cloud.hisavana.sdk.common.bean.ImgListDTO;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.ad.ps.installed.AppInstallManager;
import com.transsion.ad.ps.model.ItemDetail;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f73634a = new b();

    private b() {
    }

    public static /* synthetic */ void b(b bVar, RecommendInfo recommendInfo, boolean z10, String str, Double d11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 8) != 0) {
            d11 = Double.valueOf(0.0d);
        }
        bVar.a(recommendInfo, z10, str, d11);
    }

    private final String e() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final String f(RecommendInfo recommendInfo, String str) {
        return "palmplay://thirdlauncher.com/?entryType=AppDetail&packageName=" + (recommendInfo != null ? recommendInfo.getPackageName() : null) + "&_source=Moviebox&HalfScreenType=B&isHalfScreen=1&sceneCode=" + str;
    }

    private final String g(RecommendInfo recommendInfo) {
        return "palmplay://thirdlauncher.com/?entryType=AppDetail&packageName=" + (recommendInfo != null ? recommendInfo.getPackageName() : null) + "&_source=Moviebox";
    }

    private final String h(RecommendInfo recommendInfo, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", recommendInfo != null ? Long.valueOf(recommendInfo.getId()) : null);
        jSONObject.put("isOffer", recommendInfo != null ? Integer.valueOf(recommendInfo.isOffer()) : null);
        jSONObject.put("showType", recommendInfo != null ? Integer.valueOf(recommendInfo.getShowType()) : null);
        jSONObject.put("planName", recommendInfo != null ? recommendInfo.getPlanName() : null);
        jSONObject.put("media", "MovieBox");
        jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, str);
        jSONObject.put("planId", recommendInfo != null ? Long.valueOf(recommendInfo.getId()) : null);
        jSONObject.put("c_source", "PS");
        jSONObject.put("adSource", recommendInfo != null ? recommendInfo.getAdSource() : null);
        jSONObject.put("mbVc", String.valueOf(c.f()));
        jSONObject.put("key", "MovieBox");
        String string = jSONObject.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    private final PslinkInfo j(RecommendInfo recommendInfo, boolean z10) {
        String name;
        ItemDetail detail;
        ItemDetail detail2;
        ItemDetail detail3;
        ItemDetail detail4;
        ItemDetail detail5;
        ItemDetail detail6;
        ItemDetail detail7;
        ItemDetail detail8;
        ItemDetail detail9;
        ItemDetail detail10;
        ItemDetail detail11;
        ItemDetail detail12;
        ItemDetail detail13;
        ItemDetail detail14;
        ItemDetail detail15;
        ItemDetail detail16;
        PslinkInfo pslinkInfo = new PslinkInfo();
        pslinkInfo.setClickType(z10 ? 2 : 1);
        pslinkInfo.setItemID(recommendInfo != null ? recommendInfo.getItemID() : null);
        pslinkInfo.setPackageName(recommendInfo != null ? recommendInfo.getPackageName() : null);
        pslinkInfo.setAppPackageName(Utils.a().getPackageName());
        if (recommendInfo == null || (name = recommendInfo.getName()) == null) {
            name = (recommendInfo == null || (detail = recommendInfo.getDetail()) == null) ? null : detail.getName();
        }
        pslinkInfo.setName(name);
        pslinkInfo.setStar(recommendInfo != null ? recommendInfo.getStar() : null);
        pslinkInfo.setDownloadCount(recommendInfo != null ? recommendInfo.getDownloadCount() : 0);
        pslinkInfo.setSourceSize(recommendInfo != null ? Long.valueOf(recommendInfo.getSize()).toString() : null);
        pslinkInfo.setIconUrl(recommendInfo != null ? recommendInfo.getIconUrl() : null);
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty((recommendInfo == null || (detail16 = recommendInfo.getDetail()) == null) ? null : detail16.getImg0())) {
            ImgListDTO imgListDTO = new ImgListDTO();
            imgListDTO.setUrl((recommendInfo == null || (detail15 = recommendInfo.getDetail()) == null) ? null : detail15.getImg0());
            arrayList.add(imgListDTO);
            imgListDTO.setHv(k((recommendInfo == null || (detail14 = recommendInfo.getDetail()) == null) ? null : detail14.getScreenshotMode(), arrayList.size() - 1));
        }
        if (!TextUtils.isEmpty((recommendInfo == null || (detail13 = recommendInfo.getDetail()) == null) ? null : detail13.getImg1())) {
            ImgListDTO imgListDTO2 = new ImgListDTO();
            imgListDTO2.setUrl((recommendInfo == null || (detail12 = recommendInfo.getDetail()) == null) ? null : detail12.getImg1());
            arrayList.add(imgListDTO2);
            imgListDTO2.setHv(k((recommendInfo == null || (detail11 = recommendInfo.getDetail()) == null) ? null : detail11.getScreenshotMode(), arrayList.size() - 1));
        }
        if (!TextUtils.isEmpty((recommendInfo == null || (detail10 = recommendInfo.getDetail()) == null) ? null : detail10.getImg2())) {
            ImgListDTO imgListDTO3 = new ImgListDTO();
            imgListDTO3.setUrl((recommendInfo == null || (detail9 = recommendInfo.getDetail()) == null) ? null : detail9.getImg2());
            arrayList.add(imgListDTO3);
            imgListDTO3.setHv(k((recommendInfo == null || (detail8 = recommendInfo.getDetail()) == null) ? null : detail8.getScreenshotMode(), arrayList.size() - 1));
        }
        if (!TextUtils.isEmpty((recommendInfo == null || (detail7 = recommendInfo.getDetail()) == null) ? null : detail7.getImg3())) {
            ImgListDTO imgListDTO4 = new ImgListDTO();
            imgListDTO4.setUrl((recommendInfo == null || (detail6 = recommendInfo.getDetail()) == null) ? null : detail6.getImg3());
            arrayList.add(imgListDTO4);
            imgListDTO4.setHv(k((recommendInfo == null || (detail5 = recommendInfo.getDetail()) == null) ? null : detail5.getScreenshotMode(), arrayList.size() - 1));
        }
        if (!TextUtils.isEmpty((recommendInfo == null || (detail4 = recommendInfo.getDetail()) == null) ? null : detail4.getImg4())) {
            ImgListDTO imgListDTO5 = new ImgListDTO();
            imgListDTO5.setUrl((recommendInfo == null || (detail3 = recommendInfo.getDetail()) == null) ? null : detail3.getImg4());
            arrayList.add(imgListDTO5);
            imgListDTO5.setHv(k((recommendInfo == null || (detail2 = recommendInfo.getDetail()) == null) ? null : detail2.getScreenshotMode(), arrayList.size() - 1));
        }
        pslinkInfo.setImgList(arrayList);
        pslinkInfo.setSimpleDescription(recommendInfo != null ? recommendInfo.getSimpleDescription() : null);
        return pslinkInfo;
    }

    private final int k(List list, int i11) {
        Integer num;
        List list2 = list;
        if (list2 == null || list2.isEmpty() || i11 < 0 || (num = (Integer) list.get(i11 % list.size())) == null) {
            return 0;
        }
        return num.intValue();
    }

    private final long l(Context context, String str) {
        long longVersionCode = 0;
        try {
            Result.Companion companion = Result.INSTANCE;
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return longVersionCode;
    }

    public final void a(RecommendInfo recommendInfo, boolean z10, String scene, Double d11) {
        Intrinsics.h(scene, "scene");
        String gpLink = recommendInfo != null ? recommendInfo.getGpLink() : null;
        if (!n() && gpLink != null && StringsKt.c0(gpLink, Constants.GP_DEEPLINK, false, 2, null)) {
            com.transsion.ad.strategy.b.f42227a.g(gpLink);
        } else if (n()) {
            p(recommendInfo, z10, scene, d11);
        } else {
            q(recommendInfo);
        }
    }

    public final boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        PackageInfo packageInfo = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            PackageManager packageManager = Utils.a().getPackageManager();
            if (str == null) {
                str = "";
            }
            packageInfo = packageManager.getPackageInfo(str, 0);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        return packageInfo != null;
    }

    public final boolean d() {
        if (c.m(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME)) {
            return true;
        }
        return c(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
    }

    public final long i() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return l(applicationA, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
    }

    public final boolean m() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public final boolean n() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return l(applicationA, MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME) >= 8403100;
    }

    public final boolean o(String str) {
        try {
            PackageManager packageManager = Utils.a().getPackageManager();
            if (str == null) {
                str = "";
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo == null) {
                return false;
            }
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageInfo.packageName);
            List<ResolveInfo> listQueryIntentActivities = Utils.a().getPackageManager().queryIntentActivities(intent, 0);
            Intrinsics.g(listQueryIntentActivities, "queryIntentActivities(...)");
            if (listQueryIntentActivities.isEmpty()) {
                return false;
            }
            ResolveInfo next = listQueryIntentActivities.iterator().next();
            if ((next != null ? next.activityInfo : null) != null) {
                ActivityInfo activityInfo = next.activityInfo;
                String str2 = activityInfo.packageName;
                String str3 = activityInfo.name;
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.addCategory("android.intent.category.LAUNCHER");
                    intent2.setFlags(ASTNode.DEOP);
                    intent2.setComponent(new ComponentName(str2, str3));
                    Utils.a().startActivity(intent2);
                    return true;
                }
                return false;
            }
        } catch (Exception e11) {
            oi.a.k(oi.a.f71022a, e() + " --> it = " + Log.getStackTraceString(e11), 6, false, 4, null);
        }
        return false;
    }

    public final boolean p(RecommendInfo recommendInfo, boolean z10, String scene, Double d11) {
        Object objM454constructorimpl;
        String packageName;
        ItemDetail detail;
        Intrinsics.h(scene, "scene");
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            b bVar = f73634a;
            String strF = bVar.f(recommendInfo, scene);
            oi.a.k(oi.a.f71022a, bVar.e() + " --> startPsActivity() --> isAutoDownload = " + z10 + " --> deeplink = " + strF, 0, false, 6, null);
            intent.setData(Uri.parse(strF));
            intent.putExtra("PslinkInfo", bVar.j(recommendInfo, z10));
            intent.putExtra("versionCode", recommendInfo != null ? Integer.valueOf(recommendInfo.getVersionCode()) : null);
            intent.addFlags(32768);
            intent.addFlags(ASTNode.DEOP);
            intent.putExtra("psExtendFields", bVar.h(recommendInfo, scene));
            Utils.a().startActivity(intent);
            AppInstallManager appInstallManager = AppInstallManager.f42196a;
            if (recommendInfo == null || (detail = recommendInfo.getDetail()) == null || (packageName = detail.getPackageName()) == null) {
                packageName = "ps没有传递过来";
            }
            AppInstalledBean appInstalledBeanA = appInstallManager.a(packageName);
            appInstalledBeanA.setSource(AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB);
            appInstalledBeanA.setECPM(d11);
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            appInstallManager.e(applicationA, appInstalledBeanA);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.TRUE);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            oi.a.k(oi.a.f71022a, f73634a.e() + " --> startPsActivity --> it = " + Log.getStackTraceString(thM457exceptionOrNullimpl), 6, false, 4, null);
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final boolean q(RecommendInfo recommendInfo) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(f73634a.g(recommendInfo)));
            intent.putExtra("versionCode", c.f());
            intent.addFlags(32768);
            intent.addFlags(ASTNode.DEOP);
            Utils.a().startActivity(intent);
            objM454constructorimpl = Result.m454constructorimpl(Boolean.TRUE);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            oi.a.k(oi.a.f71022a, f73634a.e() + " --> startPsActivity --> it = " + Log.getStackTraceString(thM457exceptionOrNullimpl), 6, false, 4, null);
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }
}
