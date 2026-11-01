package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.content.FileProvider;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.hisavana.sdk.common.activity.AgentPageLandingActivity;
import com.cloud.hisavana.sdk.common.activity.EWOfficialActivity;
import com.cloud.hisavana.sdk.common.activity.OfflineLandingActivity;
import com.cloud.hisavana.sdk.common.activity.OnlineLandingActivity;
import com.cloud.hisavana.sdk.common.activity.OnlinePreloadLandingPageActivity;
import com.cloud.hisavana.sdk.common.activity.TAdWebFormsActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.ImgListDTO;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.hisavana.common.tracking.TrackingKey;
import java.io.File;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public abstract class N0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static File f21512a;

    class a extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewJson f21513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21514c;

        a(ViewJson viewJson, AdsDTO adsDTO) {
            this.f21513b = viewJson;
            this.f21514c = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().e("ssp", "onRequestError " + taErrorCode);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            this.f21513b.setFormPath(adImage == null ? "" : adImage.getFilePath());
            this.f21514c.setViewJson(GsonUtil.d(this.f21513b));
            e4.b().d("ssp", "download form url successfully & file path=" + this.f21513b.getFormPath());
        }
    }

    class b extends StringCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f21515c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f21516d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z10, int i11, String str) {
            super(z10);
            this.f21515c = i11;
            this.f21516d = str;
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void x(int i11, String str, Throwable th2) {
            e4.b().d("ssp", "sumbit form failure----->code: " + i11 + "  message: " + str);
            int i12 = this.f21515c + 1;
            if (i12 < 3) {
                N0.Q(this.f21516d, i12);
            }
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void y(int i11, String str) {
            e4.b().d("ssp", "sumbit form success----->" + i11);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdsDTO f21517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.cloud.hisavana.sdk.api.listener.d f21518b;

        c(AdsDTO adsDTO, com.cloud.hisavana.sdk.api.listener.d dVar) {
            this.f21517a = adsDTO;
            this.f21518b = dVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.cloud.hisavana.sdk.api.listener.d dVar;
            N0.k(com.cloud.sdk.commonutil.util.e.a(), this.f21517a);
            AdsDTO adsDTO = this.f21517a;
            if (adsDTO == null || adsDTO.isOfflineAd() || (dVar = this.f21518b) == null) {
                return;
            }
            dVar.onAdClicked();
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f21519a;

        static {
            int[] iArr = new int[e.values().length];
            f21519a = iArr;
            try {
                iArr[e.OPEN_PS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21519a[e.OPEN_GP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21519a[e.OPEN_AHA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21519a[e.OPEN_URLSCHEMA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21519a[e.OPEN_FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    enum e {
        OPEN_PS,
        OPEN_AHA,
        OPEN_GP,
        OPEN_URLSCHEMA,
        OPEN_OTHER,
        OPEN_FAILED
    }

    public static boolean A(Context context, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return true;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        return r(context, options);
    }

    public static boolean B(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getAdType() == 6) {
            return false;
        }
        return adsDTO.getAdImageWidth().intValue() > 2500 || adsDTO.getAdImageHeight().intValue() > 2000;
    }

    public static boolean C(String str) {
        return O(str, 1);
    }

    private static boolean D(boolean z10, Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Bundle bundle, ArrayList arrayList) {
        if (arrayList != null) {
            arrayList.add(24);
        }
        if (z10 || com.cloud.hisavana.sdk.manager.a.f22653a.c0()) {
            int iE = com.cloud.hisavana.sdk.manager.a.f22653a.E(context, adsDTO, downUpPointBean);
            if (iE == 0) {
                if (bundle == null || arrayList == null) {
                    return true;
                }
                bundle.putInt("s_click_open_page_result", 24);
                SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                return true;
            }
            if (bundle != null) {
                bundle.putInt("s_click_d_b_f_r", iE);
            }
        } else if (bundle != null) {
            bundle.putInt("s_click_d_b_f_r", TaErrorCode.CLICK_ERROR_CODE_CONFIG_NOT_ENABLE_DEFAULT_BROWSER);
        }
        return false;
    }

    public static Uri E(String str, int i11) {
        try {
            if (TextUtils.isEmpty(str) || g() == null) {
                return null;
            }
            String strE = DiskLruCacheUtil.e(str, i11);
            if (TextUtils.isEmpty(strE)) {
                return null;
            }
            File file = new File(strE);
            if (!file.exists()) {
                return null;
            }
            if (Build.VERSION.SDK_INT <= 24) {
                return Uri.fromFile(file);
            }
            return FileProvider.getUriForFile(com.cloud.sdk.commonutil.util.e.a(), com.cloud.sdk.commonutil.util.e.a().getApplicationContext().getPackageName() + ".HisavanaFileProvider", file);
        } catch (Exception e11) {
            e4.b().e("ssp", Log.getStackTraceString(e11));
            return null;
        }
    }

    public static PslinkInfo F(AdsDTO adsDTO) {
        PslinkInfo pslinkInfo = null;
        if (adsDTO != null && !TextUtils.isEmpty(adsDTO.getAppInfo())) {
            try {
                pslinkInfo = (PslinkInfo) GsonUtil.a(adsDTO.getAppInfo(), PslinkInfo.class);
            } catch (Exception unused) {
            }
            if (pslinkInfo != null) {
                pslinkInfo.setGaid(DeviceUtil.e());
                pslinkInfo.setShowId(adsDTO.getUuid());
                pslinkInfo.setAppPackageName(com.cloud.sdk.commonutil.util.e.d());
                pslinkInfo.setOfflineAd(adsDTO.isOfflineAd());
                pslinkInfo.setShowTrackingSecretKey(adsDTO.getShowTrackingSecretKey());
            }
        }
        return pslinkInfo;
    }

    public static List G(List list) {
        TaNativeInfo taNativeInfoP;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null && (taNativeInfoP = P(adsDTO)) != null && !com.cloud.hisavana.sdk.common.util.h0.b(taNativeInfoP)) {
                arrayList.add(taNativeInfoP);
            }
        }
        return arrayList;
    }

    private static boolean H(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Bundle bundle, ArrayList arrayList) {
        if (adsDTO.getStoreDeeplink() != null && !adsDTO.getStoreDeeplink().isEmpty()) {
            Intent intent = new Intent();
            for (String str : adsDTO.getStoreDeeplink()) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        if (str.startsWith(Constants.f22042b) && str.split(":").length > 2) {
                            String strSubstring = str.substring(0, str.indexOf(":") + 1);
                            String strSubstring2 = str.substring(str.indexOf(":") + 1);
                            int iIndexOf = strSubstring2.indexOf(":");
                            String strSubstring3 = strSubstring2.substring(0, iIndexOf);
                            String strDecode = URLDecoder.decode(strSubstring2.substring(iIndexOf + 1), "UTF-8");
                            String str2 = strSubstring + strSubstring3;
                            intent.putExtra(Constants.f22043c, strDecode);
                            e4.b().d("ssp", "linkUrl:" + str2 + ",sms_body:" + strDecode);
                            intent.setData(Uri.parse(str2));
                            intent.setAction("android.intent.action.VIEW");
                            intent.setFlags(ASTNode.DEOP);
                            try {
                                context.startActivity(intent);
                                try {
                                    c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
                                    if (!adsDTO.judgeOptimizeTracking()) {
                                        U(adsDTO);
                                    }
                                    bundle.putInt("s_click_open_page_result", 2);
                                    arrayList.add(2);
                                    SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                                    return true;
                                } catch (Exception unused) {
                                }
                            } catch (Exception unused2) {
                            }
                        }
                    } catch (Exception unused3) {
                    }
                    bundle.putInt("s_click_sms_f_r", 3);
                    arrayList.add(2);
                    e4.b().d("ssp", "deeplink SMSTO process error");
                }
            }
        }
        return false;
    }

    public static boolean I(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith("http://") || str.startsWith("https://")) {
            if (str.contains(com.cloud.tmc.ad.Constants.GP_DEEPLINK) && J(context, str, "com.android.vending")) {
                return true;
            }
            return N(context, str);
        }
        if (str.startsWith("market://") && J(context, str, "com.android.vending")) {
            return true;
        }
        return J(context, str, null);
    }

    public static boolean J(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                if (!TextUtils.isEmpty(str2)) {
                    intent.setPackage(str2);
                }
                intent.setFlags(ASTNode.DEOP);
                context.startActivity(intent);
                return true;
            } catch (Exception unused) {
                e4.b().w("PlatformUtil", "openAppWithDeepLink error : " + str);
            }
        }
        return false;
    }

    private static boolean K(Context context, String str, boolean z10) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setPackage("com.android.chrome");
            if (z10) {
                intent.setFlags(ASTNode.DEOP);
            }
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean L(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("market://") || str.contains(com.cloud.tmc.ad.Constants.GP_DEEPLINK);
    }

    public static void M(AdsDTO adsDTO) {
        ViewJson.DialogJson dialogJson;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getViewJson())) {
            return;
        }
        try {
            ViewJson viewJsonData = adsDTO.getViewJsonData();
            if (viewJsonData != null && !TextUtils.isEmpty(viewJsonData.getFormPath())) {
                File file = new File(viewJsonData.getFormPath());
                if (file.isFile() && file.exists()) {
                    return;
                }
            }
            if (viewJsonData == null || viewJsonData.getDialogType().intValue() != 1 || (dialogJson = viewJsonData.getDialogJson()) == null || TextUtils.isEmpty(dialogJson.getUrl())) {
                return;
            }
            DownLoadRequest.k(dialogJson.getUrl(), adsDTO, 5, true, new a(viewJsonData, adsDTO));
        } catch (Exception e11) {
            e4.b().e("ssp", Log.getStackTraceString(e11));
        }
    }

    public static boolean N(Context context, String str) {
        ResolveInfo resolveInfo;
        ActivityInfo activityInfo;
        ApplicationInfo applicationInfo;
        if (context != null && !TextUtils.isEmpty(str)) {
            int i11 = Build.VERSION.SDK_INT;
            if (i7.a.n0()) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent.setFlags(ASTNode.DEOP);
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.addCategory("android.intent.category.BROWSABLE");
                    PackageManager packageManager = context.getPackageManager();
                    List<ResolveInfo> listQueryIntentActivities = i11 >= 33 ? packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) : packageManager.queryIntentActivities(intent, 131072);
                    if (listQueryIntentActivities != null && listQueryIntentActivities.size() == 1 && (resolveInfo = listQueryIntentActivities.get(0)) != null && (activityInfo = resolveInfo.activityInfo) != null && (applicationInfo = activityInfo.applicationInfo) != null) {
                        int i12 = applicationInfo.flags;
                        if ((i12 & 1) == 0 && (i12 & 128) == 0) {
                            context.startActivity(intent);
                            return true;
                        }
                        e4.b().w("PlatformUtil", "current link not support app link: " + resolveInfo.activityInfo.packageName);
                    }
                    return false;
                } catch (Exception unused) {
                    e4.b().w("PlatformUtil", "openWithAppLink error:" + str);
                }
            }
        }
        return false;
    }

    public static boolean O(String str, int i11) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return DiskLruCacheUtil.g(i11).f(str);
        } catch (Exception e11) {
            e4.b().e("ssp", Log.getStackTraceString(e11));
            return false;
        }
    }

    public static TaNativeInfo P(AdsDTO adsDTO) {
        TaNativeInfo taNativeInfo = new TaNativeInfo();
        taNativeInfo.setAdItem(adsDTO);
        if (adsDTO == null || adsDTO.getNativeObject() == null) {
            return null;
        }
        try {
            taNativeInfo.setUuid(adsDTO.getUuid());
            taNativeInfo.setCodeSeatType(adsDTO.getCodeSeatType().intValue());
            taNativeInfo.setSequenceId(String.valueOf(adsDTO.getId()));
            taNativeInfo.setVer(adsDTO.getNativeObject().getVersion());
            taNativeInfo.setCtatext(adsDTO.getNativeObject().getButtonTxt(adsDTO.getInstallApk()));
            taNativeInfo.setDescription(adsDTO.getNativeObject().getDescriptionTxt());
            taNativeInfo.setTitle(adsDTO.getNativeObject().getTitleTxt());
            taNativeInfo.setHisavanaSource(adsDTO.getDspType().intValue());
            taNativeInfo.setPrice(String.valueOf(adsDTO.getFirstPrice()));
            taNativeInfo.setBidPrice(adsDTO.getFirstPrice().doubleValue());
            taNativeInfo.setOfflineAd(adsDTO.isOfflineAd());
            taNativeInfo.setRating(String.valueOf(adsDTO.getNativeObject().getRating()));
            taNativeInfo.setRequestId(adsDTO.getRid());
            taNativeInfo.setACReady(adsDTO.getACReady().booleanValue());
            AdImage adImage = new AdImage();
            String adChoiceClickUrl = "";
            int iIntValue = 0;
            if (adsDTO.getNativeObject().getMainImages() == null || adsDTO.getNativeObject().getMainImages().size() <= 0 || adsDTO.getNativeObject().getMainImages().get(0) == null) {
                adImage.setH(0);
                adImage.setW(0);
                adImage.setImgUrl("");
            } else {
                adImage.setH(adsDTO.getNativeObject().getMainImages().get(0).getHeight().intValue());
                adImage.setW(adsDTO.getNativeObject().getMainImages().get(0).getWidth().intValue());
                adImage.setImgUrl(adsDTO.getAdImgUrl());
            }
            taNativeInfo.setImage(adImage);
            AdImage adImage2 = new AdImage();
            adImage2.setH(adsDTO.getNativeObject().getLogo() == null ? 0 : adsDTO.getNativeObject().getLogo().getHeight().intValue());
            if (adsDTO.getNativeObject().getLogo() != null) {
                iIntValue = adsDTO.getNativeObject().getLogo().getWidth().intValue();
            }
            adImage2.setW(iIntValue);
            adImage2.setImgUrl(adsDTO.getNativeObject().getLogo() == null ? "" : adsDTO.getNativeObject().getLogo().getUrl());
            taNativeInfo.setIconImage(adImage2);
            taNativeInfo.setStore(new AdImage());
            taNativeInfo.setAcImageUrl(adsDTO.getAdChoiceImageUrl() == null ? "" : adsDTO.getAdChoiceImageUrl());
            if (adsDTO.getAdChoiceClickUrl() != null) {
                adChoiceClickUrl = adsDTO.getAdChoiceClickUrl();
            }
            taNativeInfo.setAcClickUrl(adChoiceClickUrl);
            taNativeInfo.setAdvSeatType(adsDTO.getAdvSeatType());
            taNativeInfo.setMaterialStyle(adsDTO.getMaterialStyle());
            taNativeInfo.setAdType(adsDTO.getImpBeanRequest() == null ? 1 : adsDTO.getImpBeanRequest().adt);
            taNativeInfo.setAppInfo(adsDTO.getAppInfo());
            if (adsDTO.getPslinkInfo() != null) {
                taNativeInfo.setSourceSize(adsDTO.getPslinkInfo().getSourceSize());
            }
            taNativeInfo.setDeeplinkUrl(adsDTO.getDeepLinkUrl());
            return taNativeInfo;
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
            return null;
        }
    }

    public static void Q(String str, int i11) {
        try {
            RequestParams requestParams = new RequestParams();
            requestParams.i("Accept-Timezone", "UTC");
            requestParams.i("x-tr-devtype", "h5");
            requestParams.i("x-tr-region", "CN");
            com.cloud.sdk.commonutil.util.c.netLog("submitForm -> formParams = " + str);
            requestParams.n(str);
            HttpRequest.j(g7.a.h() + "/eagllwin/clue/consumer-not-login/clue/cmd/submitClue", requestParams, new b(false, i11, str));
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.netLog("submitForm --> " + Log.getStackTraceString(e11));
        }
    }

    public static boolean R(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Uri uri = Uri.parse(str);
                Intent intent = new Intent();
                intent.setData(uri);
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(ASTNode.DEOP);
                context.startActivity(intent);
                e4.b().d("PlatformUtil", "startOpenDeepLink succeed, deepLinkUrl: " + str);
                return true;
            } catch (Exception e11) {
                e4.b().w("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl: " + str + "\n error: " + e11.getMessage());
            }
        }
        return false;
    }

    public static boolean S(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent uri = Intent.parseUri(str, 1);
                uri.setAction("android.intent.action.VIEW");
                uri.addCategory("android.intent.category.DEFAULT");
                uri.setFlags(ASTNode.DEOP);
                uri.setComponent(null);
                uri.setSelector(null);
                context.startActivity(uri);
                e4.b().d("PlatformUtil", "openIntentSchema succeed, url: " + str);
                return true;
            } catch (Exception e11) {
                e4.b().w("PlatformUtil", "openIntentSchema failed, e: " + e11.getMessage());
            }
        }
        return false;
    }

    public static boolean T(AdsDTO adsDTO) {
        return adsDTO == null || adsDTO.getDspType().intValue() == 1 || adsDTO.getExt() == null || adsDTO.getExt().getLinkWake().intValue() == 1;
    }

    public static void U(AdsDTO adsDTO) {
        e4.b().d("PlatformUtil", "start reportAttributionUrls.");
        if (adsDTO == null) {
            return;
        }
        List<String> clickTrackingUrls = adsDTO.getClickTrackingUrls();
        if (clickTrackingUrls != null && !clickTrackingUrls.isEmpty()) {
            e4.b().d("PlatformUtil", "report clickTrackingUrls: " + clickTrackingUrls);
            c1.n(clickTrackingUrls, adsDTO);
            return;
        }
        ArrayList<String> psClickTrackingUrls = adsDTO.getPsClickTrackingUrls();
        if (psClickTrackingUrls == null || psClickTrackingUrls.isEmpty() || adsDTO.isPsAd()) {
            e4.b().w("PlatformUtil", "report attribition urls failed, urls is empty.");
            return;
        }
        c1.n(psClickTrackingUrls, adsDTO);
        e4.b().d("PlatformUtil", "report psClickTrackingUrls: " + psClickTrackingUrls);
    }

    public static boolean V(Context context, String str) {
        return x(context, str, 0, null);
    }

    public static boolean W(Context context, String str) {
        if (K(context, str, true)) {
            return true;
        }
        e4.b().d("ssp", "Start page with Chrome Browser failed,Start default Browser.");
        return z(context, str, true);
    }

    public static int b(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, boolean z10) {
        return c(context, adsDTO, downUpPointBean, z10, false);
    }

    public static int c(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, boolean z10, boolean z11) {
        boolean zX;
        boolean zX2;
        boolean z12;
        int i11;
        Bundle bundle = new Bundle();
        if (z11) {
            bundle.putInt("s_confirm_dialog", 1);
        }
        String strA = j3.a();
        ArrayList arrayList = new ArrayList();
        if (context == null) {
            e4.b().d("ssp", "context is null");
            SSPTrackingHelper.f21953a.K(Integer.valueOf(TaErrorCode.CLICK_ERROR_CODE_CONTEXT_NULL), null, bundle, arrayList);
            return 0;
        }
        boolean z13 = !(context instanceof Activity);
        e4.b().d("ssp", "newTask -------------------------------->" + z13);
        if (adsDTO == null) {
            e4.b().d("ssp", "adItem is null");
            SSPTrackingHelper.f21953a.K(Integer.valueOf(TaErrorCode.CLICK_ERROR_CODE_ADITEM_NULL), null, bundle, arrayList);
            return 0;
        }
        adsDTO.setClick_link("");
        bundle.putString("s_click_tracking_id", strA);
        adsDTO.setClickid(strA);
        String clickUrl = adsDTO.getClickUrl();
        e4.b().d("ssp", "landing url is : " + clickUrl);
        if (s(context, adsDTO, downUpPointBean, bundle, arrayList)) {
            return 1;
        }
        if (H(context, adsDTO, downUpPointBean, bundle, arrayList)) {
            return 2;
        }
        y.I(adsDTO);
        arrayList.add(3);
        if (u(context, adsDTO, adsDTO.getDeepLinkUrl(), bundle)) {
            String deepLinkUrl = adsDTO.getDeepLinkUrl();
            adsDTO.setClick_link(deepLinkUrl);
            AthenaTracker.K(adsDTO, deepLinkUrl, AthenaTracker.ClickJumpType.PULL_LIVE);
            c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            if (!adsDTO.judgeOptimizeTracking()) {
                U(adsDTO);
            }
            bundle.putInt("s_click_open_page_result", 3);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 3;
        }
        boolean zT = T(adsDTO);
        if (zT) {
            zX = x(context, adsDTO.getPackageName(), 1, bundle);
        } else {
            bundle.putInt("s_click_pkg_f_r", 4);
            zX = false;
        }
        arrayList.add(4);
        if (zT && zX) {
            e4.b().d("PlatformUtil", "startLandingPage start App with packageName");
            c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            AthenaTracker.K(adsDTO, adsDTO.getPackageName(), AthenaTracker.ClickJumpType.PULL_LIVE);
            if (!adsDTO.judgeOptimizeTracking()) {
                U(adsDTO);
            }
            bundle.putInt("s_click_open_page_result", 4);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 4;
        }
        boolean zT2 = T(adsDTO);
        if (zT2) {
            zX2 = x(context, adsDTO.getPsPackageName(), 2, bundle);
        } else {
            bundle.putInt("s_click_ps_f_r", 4);
            zX2 = false;
        }
        arrayList.add(7);
        if (zT2 && zX2) {
            e4.b().d("PlatformUtil", "startLandingPage start App with psPackageName");
            c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            AthenaTracker.K(adsDTO, adsDTO.getPsPackageName(), AthenaTracker.ClickJumpType.PULL_LIVE);
            if (!adsDTO.judgeOptimizeTracking()) {
                U(adsDTO);
            }
            bundle.putInt("s_click_open_page_result", 7);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 4;
        }
        e eVarD = d(context, adsDTO, downUpPointBean, z10, bundle);
        arrayList.add(11);
        int i12 = d.f21519a[eVarD.ordinal()];
        if (i12 == 1) {
            e4.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            if (z11) {
                e4.b().d("PlatformUtil", "not allow report click");
            } else {
                boolean z14 = adsDTO.getTrackType().intValue() == 0;
                boolean zH = com.cloud.hisavana.sdk.common.util.i0.h(com.cloud.sdk.commonutil.util.e.a());
                if (z14 && zH) {
                    z12 = true;
                } else {
                    U(adsDTO);
                    z12 = false;
                }
                c1.h(downUpPointBean, adsDTO, Boolean.valueOf(z12));
            }
            bundle.putInt("s_click_open_page_result", 5);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 5;
        }
        if (i12 == 2) {
            e4.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            U(adsDTO);
            c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            bundle.putInt("s_click_open_page_result", 9);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 6;
        }
        if (i12 == 3) {
            e4.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            U(adsDTO);
            c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            bundle.putInt("s_click_open_page_result", 8);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 6;
        }
        if (i12 == 4) {
            e4.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            U(adsDTO);
            c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            bundle.putInt("s_click_open_page_result", 10);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 6;
        }
        U(adsDTO);
        arrayList.add(12);
        if (adsDTO.isOfflineAd() && TextUtils.isEmpty(adsDTO.getOfflineH5Url())) {
            bundle.putInt("s_click_open_page_result", 12);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 0;
        }
        if (TextUtils.isEmpty(clickUrl)) {
            e4.b().d("ssp", "Both deepLinkUrl and landing page is null");
            bundle.putInt("s_click_open_page_result", 17);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            return 0;
        }
        arrayList.add(13);
        if (!g7.a.k()) {
            if (I(context, clickUrl)) {
                c1.h(downUpPointBean, adsDTO, Boolean.FALSE);
                bundle.putInt("s_click_open_page_result", 15);
                SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            } else {
                i11 = 7;
                n(context, adsDTO, z13, true, downUpPointBean, bundle, arrayList);
            }
            adsDTO.setClick_link(clickUrl);
            return i11;
        }
        if (W(context, clickUrl)) {
            bundle.putInt("s_click_open_page_result", 14);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
        } else {
            bundle.putInt("s_click_open_page_result", 6);
            SSPTrackingHelper.f21953a.K(Integer.valueOf(TaErrorCode.CLICK_ERROR_CODE_OPEN_BROWSER_FAILED), adsDTO, bundle, arrayList);
        }
        i11 = 7;
        adsDTO.setClick_link(clickUrl);
        return i11;
    }

    private static e d(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, boolean z10, Bundle bundle) {
        if (adsDTO == null || context == null) {
            return e.OPEN_FAILED;
        }
        ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
        if (storeDeeplink == null || storeDeeplink.isEmpty()) {
            return e.OPEN_FAILED;
        }
        e eVar = e.OPEN_FAILED;
        ArrayList arrayList = new ArrayList();
        for (String str : storeDeeplink) {
            if (!TextUtils.isEmpty(str)) {
                if (str.startsWith("palmplay://")) {
                    AdsProtocolBean.Ext ext = adsDTO.getExt();
                    if (ext != null && ext.getStoreFlag().intValue() != 1 && adsDTO.getAdType() != 6) {
                        arrayList.add(11);
                    } else if (!T(adsDTO) && adsDTO.getPslinkInfoStatus() && y(context, adsDTO.getPackageName(), adsDTO.getPsPackageName())) {
                        arrayList.add(12);
                    } else {
                        if (v(context, adsDTO, str, z10)) {
                            e4.b().d("PlatformUtil", "startOpenAcquisitionLink,url is psLink: " + str);
                            AthenaTracker.ClickJumpType clickJumpType = adsDTO.isJumpToHalfscreen() ? AthenaTracker.ClickJumpType.PS_HALF_SCREEN : AthenaTracker.ClickJumpType.PS_FULL_SCREEN;
                            adsDTO.setClick_link(str);
                            AthenaTracker.K(adsDTO, str, clickJumpType);
                            p(bundle, arrayList);
                            return e.OPEN_PS;
                        }
                        arrayList.add(13);
                    }
                } else if (str.startsWith("aha://")) {
                    if (t(context, adsDTO, str)) {
                        e4.b().d("PlatformUtil", "startOpenAcquisitionLink,url is ahaLink: " + str);
                        adsDTO.setClick_link(str);
                        AthenaTracker.K(adsDTO, str, AthenaTracker.ClickJumpType.OTHER);
                        p(bundle, arrayList);
                        return e.OPEN_AHA;
                    }
                    arrayList.add(15);
                } else if (L(str)) {
                    if (J(context, str, "com.android.vending")) {
                        e4.b().d("PlatformUtil", "startOpenAcquisitionLink,url is GP link: " + str);
                        adsDTO.setClick_link(str);
                        AthenaTracker.K(adsDTO, str, AthenaTracker.ClickJumpType.GP);
                        p(bundle, arrayList);
                        return e.OPEN_GP;
                    }
                    arrayList.add(16);
                } else {
                    if (J(context, str, null)) {
                        e4.b().d("PlatformUtil", "startOpenAcquisitionLink,url is other link: " + str);
                        adsDTO.setClick_link(str);
                        AthenaTracker.K(adsDTO, str, AthenaTracker.ClickJumpType.OTHER);
                        p(bundle, arrayList);
                        return e.OPEN_URLSCHEMA;
                    }
                    arrayList.add(17);
                }
            }
        }
        p(bundle, arrayList);
        return eVar;
    }

    public static AdChoicesView e(Context context, AdsDTO adsDTO, com.cloud.hisavana.sdk.api.listener.d dVar) {
        if (adsDTO == null) {
            return null;
        }
        if (adsDTO.getSource() != 4 && !adsDTO.getACReady().booleanValue()) {
            return null;
        }
        AdChoicesView adChoicesView = new AdChoicesView(context);
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.ad_badge_height);
        adChoicesView.setLayoutParams(new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset));
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getAdChoiceImageUrl(), adsDTO, null, adChoicesView);
        } else {
            DownLoadRequest.o(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new c(adsDTO, dVar));
        return adChoicesView;
    }

    public static AdsDTO f(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return null;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        if (adItem != null) {
            adItem.setACReady(Boolean.valueOf(taNativeInfo.isACReady()));
        }
        return adItem;
    }

    private static File g() {
        if (f21512a == null) {
            f21512a = StorageUtils.b(com.cloud.sdk.commonutil.util.e.a(), true);
        }
        return f21512a;
    }

    private static String h(AdsDTO adsDTO, String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder(str.replace("HalfScreenType=Z", "HalfScreenType=B"));
        if (adsDTO.getPslinkInfoStatus()) {
            sb2.append("&isHalfScreen=1");
        }
        sb2.append("&isCurrActivityFullscreen=");
        sb2.append(z10);
        sb2.append("&sceneCode=");
        sb2.append(adsDTO.getCodeSeatId());
        return sb2.toString();
    }

    public static String i(String str, int i11) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        File file = new File(DiskLruCacheUtil.e(str, i11));
        return file.exists() ? file.getAbsolutePath() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Unit j(Bundle bundle, ArrayList arrayList, AdsDTO adsDTO, Context context, DownUpPointBean downUpPointBean, Bundle bundle2, boolean z10, Integer num) {
        if (num.intValue() == 0) {
            if (bundle != null && arrayList != null) {
                bundle.putInt("s_click_open_page_result", 19);
                SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            }
            e4.b().d("PlatformUtil", "Start online page with custom tabs");
            return null;
        }
        com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.f22653a;
        aVar.M(num);
        aVar.o(num.intValue(), false);
        if (bundle != null) {
            bundle.putInt("s_click_ct_f_r", num.intValue());
        }
        if (num.intValue() == 7009 || num.intValue() == 7008) {
            if (D(false, context, adsDTO, downUpPointBean, bundle, arrayList)) {
                return null;
            }
        } else if (num.intValue() != 7010 && num.intValue() != 7011 && num.intValue() != 7012 && num.intValue() != 7014 && num.intValue() != 7023) {
            if (arrayList != null) {
                arrayList.add(23);
            }
            int iB = aVar.b(context, adsDTO, downUpPointBean);
            if (iB == 0) {
                if (bundle != null && arrayList != null) {
                    bundle.putInt("s_click_open_page_result", 23);
                    SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                }
                e4.b().d("PlatformUtil", "Start online page with custom tabs");
                return null;
            }
            if (bundle != null) {
                bundle.putInt("s_click_ct_ns_f_r", iB);
            }
            if (D(false, context, adsDTO, downUpPointBean, bundle, arrayList)) {
                return null;
            }
        }
        Intent intent = com.cloud.hisavana.sdk.common.util.b.f22148a.g(adsDTO) ? new Intent(context, (Class<?>) OnlinePreloadLandingPageActivity.class) : new Intent(context, (Class<?>) OnlineLandingActivity.class);
        if (bundle != null && arrayList != null) {
            arrayList.add(20);
            bundle.putInt("s_click_open_page_result", 20);
            SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
        }
        intent.putExtra("ab_Test_Data", aVar.f0());
        intent.putExtras(bundle2);
        if (z10) {
            intent.setFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
        return null;
    }

    public static void k(Context context, AdsDTO adsDTO) {
        e4.b().d("ssp", "PlatformUtil startPageByWebView for adchoice");
        if (adsDTO == null || adsDTO.getSource() != 4) {
            if (NetStateManager.checkNetworkState(false)) {
                m(context, adsDTO, true, false, null);
            } else {
                HSToastUtil.e(R$string.net_error_please_open_netwprk);
            }
        }
    }

    public static void l(Context context, AdsDTO adsDTO, Intent intent) {
        if (context == null || adsDTO == null || intent == null) {
            return;
        }
        if (adsDTO.getPslinkInfoStatus()) {
            e4.b().d("PlatformUtil", "startOpenPslink HalfAppDetail,adsDTO.getPslinkInfoStatus():true");
            PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
            if (pslinkInfo != null) {
                Bundle bundle = new Bundle();
                if (com.cloud.hisavana.sdk.common.util.r.f22193a.c(adsDTO)) {
                    pslinkInfo.setClickType(2);
                    e4.b().d("PlatformUtil", "pslink half setClickType, click_install");
                }
                pslinkInfo.setTriggerId(adsDTO.getTriggerId());
                pslinkInfo.setAdCreativeId(adsDTO.getAdCreativeId());
                bundle.putParcelable("PslinkInfo", pslinkInfo);
                intent.putExtras(bundle);
                if (pslinkInfo.getIconUri() != null) {
                    context.grantUriPermission(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, pslinkInfo.getIconUri(), 1);
                }
                if (pslinkInfo.getImgList() != null && !pslinkInfo.getImgList().isEmpty()) {
                    for (ImgListDTO imgListDTO : pslinkInfo.getImgList()) {
                        if (imgListDTO != null && imgListDTO.getUri() != null) {
                            context.grantUriPermission(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, imgListDTO.getUri(), 1);
                        }
                    }
                }
                e4.b().d("PlatformUtil", "startOpenPslink HalfAppDetail,pslinkInfo.getIconUri():" + pslinkInfo.getIconUri());
                adsDTO.setJumpToHalfscreen(true);
                String extJson = pslinkInfo.getExtJson();
                if (!TextUtils.isEmpty(extJson)) {
                    String strReplace = extJson.replace("\"developer2\":", "\"developer\":");
                    try {
                        JsonObject asJsonObject = JsonParser.parseString(strReplace).getAsJsonObject();
                        asJsonObject.addProperty("countryCode", DeviceUtil.d());
                        strReplace = asJsonObject.toString();
                    } catch (Exception e11) {
                        e4.b().e("PlatformUtil", "extJson parseString exception: " + e11.getMessage());
                    }
                    intent.putExtra("psExtendFields", strReplace);
                    if (e4.c()) {
                        e4.b().d("PlatformUtil", "Pslink psExtendFields :" + strReplace);
                    }
                }
            }
        }
        Integer trackType = adsDTO.getTrackType();
        if (trackType.intValue() != -1) {
            e4.b().d("PlatformUtil", "startOpenAcquisitionLink trackType " + trackType);
            intent.putStringArrayListExtra(HisavanaAdJsBridge.PS_CLICKTRACKING_URL, com.cloud.sdk.commonutil.util.o.c(c1.q(adsDTO.getPsClickTrackingUrls(), adsDTO)));
            intent.putExtra(HisavanaAdJsBridge.PS_CLICK_CURRENT_TIMEMILLIS, com.cloud.sdk.commonutil.util.o.b(System.currentTimeMillis() + ""));
            intent.putExtra(HisavanaAdJsBridge.PS_TRACKTYPE, com.cloud.sdk.commonutil.util.o.b(String.valueOf(trackType)));
        }
    }

    public static void m(Context context, AdsDTO adsDTO, boolean z10, boolean z11, DownUpPointBean downUpPointBean) {
        n(context, adsDTO, z10, z11, downUpPointBean, null, null);
    }

    public static void n(final Context context, final AdsDTO adsDTO, final boolean z10, boolean z11, final DownUpPointBean downUpPointBean, final Bundle bundle, final ArrayList arrayList) {
        Intent intent;
        if (adsDTO == null) {
            if (bundle != null && arrayList != null) {
                SSPTrackingHelper.f21953a.K(Integer.valueOf(TaErrorCode.CLICK_ERROR_CODE_ADITEM_NULL), adsDTO, bundle, arrayList);
            }
            e4.b().e("PlatformUtil", "startPageByWebView,adItem is null");
            return;
        }
        final Bundle bundle2 = new Bundle();
        bundle2.putParcelable("tag_ad_bean", adsDTO);
        if (z11) {
            bundle2.putParcelable("pointBean", downUpPointBean);
            adsDTO.setClickUrlTs(System.currentTimeMillis());
            String clickUrl = adsDTO.getClickUrl();
            if (!TextUtils.isEmpty(clickUrl) && clickUrl.contains(AgentPageJsBridge.AGENT_PAGE_INFO)) {
                e4.b().d("PlatformUtil", "Start page with WebView.agentpage ad");
                intent = new Intent(context, (Class<?>) AgentPageLandingActivity.class);
                if (bundle != null && arrayList != null) {
                    bundle.putInt("s_click_open_page_result", 18);
                    SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                }
            } else {
                if (!adsDTO.isOfflineAd() || NetStateManager.checkNetworkState(false)) {
                    e4.b().d("PlatformUtil", "Start page with WebView.online ad");
                    if (!adsDTO.isOfflineAd() && !NetStateManager.checkNetworkState(false)) {
                        HSToastUtil.e(R$string.toast_no_network);
                    }
                    if (arrayList != null) {
                        arrayList.add(19);
                    }
                    com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.f22653a;
                    aVar.i0();
                    int iB0 = aVar.b0();
                    if (iB0 == 7018 || iB0 == 7019) {
                        try {
                            bundle.putAll(aVar.f0());
                        } catch (Throwable unused) {
                        }
                        com.cloud.hisavana.sdk.manager.a aVar2 = com.cloud.hisavana.sdk.manager.a.f22653a;
                        if (aVar2.c(adsDTO) == 7016) {
                            if (bundle != null) {
                                bundle.putInt("s_click_ct_f_r", TaErrorCode.CLICK_ERROR_CODE_CONFIG_CREATIVE_ID_OPEN_DEFAULT);
                            }
                            if (D(true, context, adsDTO, downUpPointBean, bundle, arrayList)) {
                                return;
                            }
                        }
                        aVar2.r(context, adsDTO, downUpPointBean, new Function1() { // from class: com.cloud.hisavana.sdk.h1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return N0.j(bundle, arrayList, adsDTO, context, downUpPointBean, bundle2, z10, (Integer) obj);
                            }
                        });
                        return;
                    }
                    try {
                        bundle.putAll(aVar.f0());
                    } catch (Throwable unused2) {
                    }
                    Intent intent2 = com.cloud.hisavana.sdk.common.util.b.f22148a.g(adsDTO) ? new Intent(context, (Class<?>) OnlinePreloadLandingPageActivity.class) : new Intent(context, (Class<?>) OnlineLandingActivity.class);
                    if (bundle != null && arrayList != null) {
                        arrayList.add(20);
                        bundle.putInt("s_click_open_page_result", 20);
                        bundle.putInt("s_click_ct_f_r", iB0);
                        SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                    }
                    intent2.putExtra("ab_Test_Data", com.cloud.hisavana.sdk.manager.a.f22653a.f0());
                    intent2.putExtras(bundle2);
                    if (z10) {
                        intent2.setFlags(ASTNode.DEOP);
                    }
                    context.startActivity(intent2);
                    return;
                }
                e4.b().d("PlatformUtil", "Start page with WebView.offline ad");
                intent = new Intent(context, (Class<?>) OfflineLandingActivity.class);
                if (bundle != null && arrayList != null) {
                    arrayList.add(21);
                    bundle.putInt("s_click_open_page_result", 21);
                    SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                }
            }
        } else {
            e4.b().d("PlatformUtil", "Start page with WebView.ew");
            intent = new Intent(context, (Class<?>) EWOfficialActivity.class);
            if (bundle != null && arrayList != null) {
                arrayList.add(22);
                bundle.putInt("s_click_open_page_result", 22);
                SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
            }
        }
        intent.putExtras(bundle2);
        if (z10) {
            intent.setFlags(ASTNode.DEOP);
        }
        context.startActivity(intent);
    }

    private static void o(Context context, String str, String str2, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) TAdWebFormsActivity.class);
        intent.setFlags(268500992);
        intent.putExtra("ad_web_form_url", str);
        intent.putExtra("ad_web_form_file_path", str2);
        intent.putExtra("ad_web_form_dto", adsDTO);
        intent.putExtra("ad_web_form_point", downUpPointBean);
        context.startActivity(intent);
    }

    private static void p(Bundle bundle, ArrayList arrayList) {
        if (arrayList != null) {
            try {
                if (arrayList.isEmpty() || bundle == null) {
                    return;
                }
                bundle.putString("s_click_acq_f_r", GsonUtil.d(arrayList));
            } catch (Throwable unused) {
            }
        }
    }

    public static void q(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TaNativeInfo taNativeInfo = (TaNativeInfo) it.next();
            if (taNativeInfo != null && taNativeInfo.getAdItem() != null) {
                M(taNativeInfo.getAdItem());
            }
        }
    }

    private static boolean r(Context context, BitmapFactory.Options options) {
        if (context == null) {
            return true;
        }
        int i11 = options.outWidth;
        int i12 = options.outHeight;
        if (i11 > 2500 || i12 > 2000) {
            return true;
        }
        long j11 = ((long) (i11 * i12)) * 4;
        if (j11 > 104857600) {
            return true;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return j11 > (memoryInfo.availMem * 2) / 3;
    }

    private static boolean s(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Bundle bundle, ArrayList arrayList) {
        ViewJson viewJsonData = adsDTO.getViewJsonData();
        if (viewJsonData != null && viewJsonData.getDialogType().intValue() == 1) {
            ViewJson.DialogJson dialogJson = viewJsonData.getDialogJson();
            if (adsDTO.isOfflineAd() && dialogJson != null && !TextUtils.isEmpty(dialogJson.getUrl())) {
                o(context, dialogJson.getUrl(), "", adsDTO, downUpPointBean);
                if (!adsDTO.judgeOptimizeTracking()) {
                    U(adsDTO);
                }
                bundle.putInt("s_click_open_page_result", 1);
                bundle.putInt(TrackingKey.IS_OFFLINE_AD, 1);
                arrayList.add(1);
                SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                return true;
            }
            if (viewJsonData.getFormPath() != null) {
                File file = new File(viewJsonData.getFormPath());
                if (dialogJson != null && !TextUtils.isEmpty(dialogJson.getUrl()) && file.exists()) {
                    o(context, dialogJson.getUrl(), file.getPath(), adsDTO, downUpPointBean);
                    if (!adsDTO.judgeOptimizeTracking()) {
                        U(adsDTO);
                    }
                    bundle.putInt("s_click_open_page_result", 1);
                    bundle.putInt(TrackingKey.IS_OFFLINE_AD, 0);
                    arrayList.add(1);
                    SSPTrackingHelper.f21953a.K(0, adsDTO, bundle, arrayList);
                    return true;
                }
                arrayList.add(1);
                bundle.putInt(TrackingKey.IS_OFFLINE_AD, 0);
                bundle.putInt("s_click_form_f_r", 14);
            }
        }
        return false;
    }

    public static boolean t(Context context, AdsDTO adsDTO, String str) {
        if (context != null && adsDTO != null && !TextUtils.isEmpty(str)) {
            String str2 = str + "&hsTrace=" + adsDTO.getUuid();
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                intent.setFlags(ASTNode.DEOP);
                context.startActivity(intent);
                return true;
            } catch (Exception unused) {
                e4.b().w("PlatformUtil", "openPageWithAhaLink error:" + str2);
            }
        }
        return false;
    }

    public static boolean u(Context context, AdsDTO adsDTO, String str, Bundle bundle) {
        if (context == null || adsDTO == null) {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            if (bundle != null) {
                bundle.putInt("s_click_dp_f_r", 1);
            }
            e4.b().w("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl is empty");
            return false;
        }
        if (x0.f23065a.e(str, context, adsDTO)) {
            e4.b().d("PlatformUtil", "startOpenActivationLink open mini app.");
            return true;
        }
        if (str.startsWith("intent://")) {
            if (str.startsWith("intent://play.google.com")) {
                if (bundle != null) {
                    bundle.putInt("s_click_dp_f_r", 2);
                }
                e4.b().d("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl url is gpLink: " + str);
                return false;
            }
            if (S(context, str)) {
                e4.b().d("PlatformUtil", "startOpenDeepLink succeed, deepLinkUrl: " + str);
                return true;
            }
        }
        if (!str.contains(com.cloud.tmc.ad.Constants.GP_DEEPLINK)) {
            boolean zR = R(context, str);
            if (!zR && bundle != null) {
                bundle.putInt("s_click_dp_f_r", 3);
            }
            return zR;
        }
        if (bundle != null) {
            bundle.putInt("s_click_dp_f_r", 2);
        }
        e4.b().d("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl url is gpLink: " + str);
        return false;
    }

    public static boolean v(Context context, AdsDTO adsDTO, String str, boolean z10) {
        if (context != null && adsDTO != null && !TextUtils.isEmpty(str)) {
            String strH = h(adsDTO, str, z10);
            if (e4.c()) {
                e4.b().d("PlatformUtil", "openPageWithPsLink,link is " + strH);
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strH));
                intent.setPackage(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME);
                l(context, adsDTO, intent);
                intent.setFlags(ASTNode.DEOP);
                context.startActivity(intent);
                return true;
            } catch (Exception unused) {
                e4.b().w("PlatformUtil", "openPageWithPsLink error:" + strH);
            }
        }
        return false;
    }

    public static boolean w(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return r(context, options);
    }

    public static boolean x(Context context, String str, int i11, Bundle bundle) {
        ActivityInfo activityInfo;
        if (context == null) {
            SSPTrackingHelper.f21953a.y(i11, bundle, 5);
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            SSPTrackingHelper.f21953a.y(i11, bundle, 6);
            e4.b().w("PlatformUtil", "startApplicationWithPackageName failed, packageName is empty.");
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                SSPTrackingHelper.f21953a.y(i11, bundle, 7);
                return false;
            }
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageInfo.packageName);
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (listQueryIntentActivities != null && listQueryIntentActivities.size() != 0) {
                ResolveInfo next = listQueryIntentActivities.iterator().next();
                if (next == null || (activityInfo = next.activityInfo) == null) {
                    SSPTrackingHelper.f21953a.y(i11, bundle, 9);
                    return false;
                }
                String str2 = activityInfo.packageName;
                String str3 = activityInfo.name;
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.addCategory("android.intent.category.LAUNCHER");
                    intent2.setFlags(ASTNode.DEOP);
                    intent2.setComponent(new ComponentName(str2, str3));
                    context.startActivity(intent2);
                    e4.b().d("PlatformUtil", "startApplicationWithPackageName succeed, packageName: " + str);
                    return true;
                }
                return false;
            }
            SSPTrackingHelper.f21953a.y(i11, bundle, 8);
            return false;
        } catch (Exception e11) {
            SSPTrackingHelper.f21953a.y(i11, bundle, 10);
            e4.b().w("PlatformUtil", "startApplicationWithPackageName failed, packageName: " + str + "\n error: " + Log.getStackTraceString(e11));
            return false;
        }
    }

    public static boolean y(Context context, String str, String str2) {
        String str3 = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                if (context.getPackageManager().getPackageInfo(TextUtils.isEmpty(str) ? "" : str, 0) != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
            e4.b().w("PlatformUtil", "the package name is " + str + " is not installed");
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                PackageManager packageManager = context.getPackageManager();
                if (!TextUtils.isEmpty(str2)) {
                    str3 = str2;
                }
                if (packageManager.getPackageInfo(str3, 0) != null) {
                    return true;
                }
            }
        } catch (Exception unused2) {
            e4.b().w("PlatformUtil", "the package name is " + str2 + " is not installed");
        }
        return false;
    }

    private static boolean z(Context context, String str, boolean z10) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            if (z10) {
                intent.setFlags(ASTNode.DEOP);
            }
            context.startActivity(intent);
            return true;
        } catch (Throwable th2) {
            e4.b().e(Log.getStackTraceString(th2));
            return false;
        }
    }
}
