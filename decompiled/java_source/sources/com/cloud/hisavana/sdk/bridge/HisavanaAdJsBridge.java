package com.cloud.hisavana.sdk.bridge;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.MimeTypeMap;
import android.webkit.ValueCallback;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.P;
import com.cloud.hisavana.sdk.Z;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.c0;
import com.cloud.hisavana.sdk.c1;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.i0;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.request.DeviceDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.j3;
import com.cloud.hisavana.sdk.q3;
import com.cloud.hisavana.sdk.r2;
import com.cloud.hisavana.sdk.s3;
import com.cloud.hisavana.sdk.u0;
import com.cloud.hisavana.sdk.y;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import i7.c;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class HisavanaAdJsBridge {
    public static final String INTERFACE_NAME = "HisavanaAdJsBridge";
    public static final String PS_CLICKTRACKING_URL = "PsClickTrackingUrl";
    public static final String PS_CLICK_CURRENT_TIMEMILLIS = "ClickCurrentTimeMillis";
    public static final String PS_TRACKTYPE = "PsTrackType";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Pattern f21698f = Pattern.compile("^[0-9a-zA-Z]+$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f21699a = INTERFACE_NAME;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f21700b = EventConstants.KEY_SOURCE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f21701c = "http://";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f21702d = "https://";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference f21703e;

    public static class a extends AdCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s3 f21704a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference f21705b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final AdsDTO f21706c;

        public a(s3 s3Var, HisavanaAdJsBridge hisavanaAdJsBridge, AdsDTO adsDTO) {
            this.f21704a = s3Var;
            this.f21705b = new WeakReference(hisavanaAdJsBridge);
            this.f21706c = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public d d() {
            return null;
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public String e() {
            return "";
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public String g() {
            return "";
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void m() {
            e4.b().d("JsAdmAdListener", "adm from js : onAdClicked");
            AthenaTracker.B(this.f21706c, 3, 0);
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21705b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21706c.getUuid(), 3, 0), null);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void p(AdsDTO adsDTO) {
            AthenaTracker.e0(this.f21706c);
            e4.b().d("JsAdmAdListener", "adm from js : onAdClosed");
            AthenaTracker.B(this.f21706c, 4, 0);
            this.f21704a.m();
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21705b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21706c.getUuid(), 4, 0), null);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void s() {
            e4.b().d("JsAdmAdListener", "adm from js : onAdShow");
            AthenaTracker.B(this.f21706c, 2, 0);
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21705b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21706c.getUuid(), 2, 0), null);
            }
        }

        @Override // com.cloud.hisavana.sdk.api.listener.AdCallback
        public void t(TaErrorCode taErrorCode, G g11) {
            if (this.f21706c != null) {
                SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
                sSPTrackingHelper.M(Integer.valueOf(taErrorCode.getErrorCode()), this.f21706c.getTriggerId(), this.f21706c.getCodeSeatId(), sSPTrackingHelper.m(g11));
            }
            int errorCode = taErrorCode == null ? -1 : taErrorCode.getErrorCode();
            e4.b().d("JsAdmAdListener", "adm from js : onAdShowError");
            AthenaTracker.B(this.f21706c, 2, errorCode);
            this.f21704a.m();
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21705b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21706c.getUuid(), 2, errorCode), null);
            }
        }
    }

    public HisavanaAdJsBridge() {
    }

    public HisavanaAdJsBridge(WebView webView) {
        this.f21703e = new WeakReference(webView);
        Context context = webView == null ? null : webView.getContext();
        if (e.a() != null || context == null) {
            return;
        }
        e.i(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str, int i11, int i12) {
        return "javascript:hisavanaToJsForAdmCallBack('" + str + "'," + i11 + "," + i12 + ")";
    }

    private void f(AdsDTO adsDTO, String str, boolean z10) {
        if (adsDTO == null) {
            return;
        }
        AthenaTracker.E(adsDTO, adsDTO.getUuid(), str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final String str, final ValueCallback valueCallback) {
        e4.b().d(INTERFACE_NAME, "[jsbridge]callBackToJS: " + str);
        Preconditions.d(new Preconditions.a() { // from class: d7.d
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                this.f61239a.m(str, valueCallback);
            }
        });
    }

    private boolean h(Context context, AdsDTO adsDTO) {
        if (context != null && adsDTO != null) {
            e4.b().d(INTERFACE_NAME, "start openWithClickUrls, clickUrls: " + adsDTO.getStoreDeeplink());
            ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
            if (storeDeeplink != null && !storeDeeplink.isEmpty()) {
                for (String str : storeDeeplink) {
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str)) {
                        if (!str.startsWith("palmplay://")) {
                            if (str.startsWith("aha://") && N0.t(context, adsDTO, str)) {
                                e4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is ahaLink: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                            if (j(str) && N0.J(context, str, "com.android.vending")) {
                                e4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is GP link: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                            if (N0.J(context, str, null)) {
                                e4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is other link: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                        } else if (N0.T(adsDTO) || !adsDTO.getPslinkInfoStatus() || !N0.y(context, adsDTO.getPackageName(), adsDTO.getPackageName())) {
                            if (N0.v(context, adsDTO, str, false)) {
                                e4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is psLink: " + str);
                                f(adsDTO, str, true);
                                k(adsDTO);
                                return true;
                            }
                        }
                    }
                }
                f(adsDTO, null, false);
                return false;
            }
            e4.b().w(INTERFACE_NAME, "openWithClickUrls failed, clickUrls is empty.");
            f(adsDTO, null, false);
        }
        return false;
    }

    private boolean i(AdsDTO adsDTO) {
        Context contextA = e.a();
        if (contextA == null || adsDTO == null) {
            return false;
        }
        adsDTO.setClickid(j3.a());
        Integer trackType = adsDTO.getTrackType();
        if (N0.u(contextA, adsDTO, adsDTO.getDeepLinkUrl(), null)) {
            if (trackType.intValue() == 0) {
                N0.U(adsDTO);
            }
            f(adsDTO, null, true);
            return true;
        }
        if (N0.T(adsDTO) && N0.V(contextA, adsDTO.getPackageName())) {
            if (trackType.intValue() == 0) {
                N0.U(adsDTO);
            }
            f(adsDTO, null, true);
            return true;
        }
        if (!N0.T(adsDTO) || !N0.V(contextA, adsDTO.getPsPackageName())) {
            return h(contextA, adsDTO);
        }
        if (trackType.intValue() == 0) {
            N0.U(adsDTO);
        }
        f(adsDTO, null, true);
        return true;
    }

    public static boolean isAlphaNumeric(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return f21698f.matcher(str).matches();
    }

    private boolean j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("market://") || str.contains(Constants.GP_DEEPLINK);
    }

    private void k(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        boolean zH = i0.h(e.a());
        if (adsDTO.getTrackType().intValue() == 0) {
            if (zH) {
                AthenaTracker.D(adsDTO, true);
            } else {
                N0.U(adsDTO);
                AthenaTracker.D(adsDTO, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(String str) {
        try {
            if (e.a() == null) {
                e4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, HSCoreUtil is not init.");
                return;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str, AdsDTO.class);
            if (adsDTO == null) {
                e4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, adsDTO is null.");
                return;
            }
            WebView webView = (WebView) this.f21703e.get();
            Context contextA = (webView == null || webView.getContext() == null) ? e.a() : webView.getContext();
            AthenaTracker.W(adsDTO);
            N0.b(contextA, adsDTO, new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, 0, 0), false);
        } catch (Throwable th2) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, error: " + th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(String str, ValueCallback valueCallback) {
        WebView webView;
        WeakReference weakReference = this.f21703e;
        if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
            return;
        }
        try {
            webView.evaluateJavascript(str, valueCallback);
        } catch (Exception unused) {
            e4.b().w(INTERFACE_NAME, "evaluate javascript failed:" + str);
        }
    }

    @JavascriptInterface
    public String getAppVersionCode() {
        if (e.a() == null) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]getAppVersionCode failed, HSCoreUtil is not init.");
            return "";
        }
        String strP = c.p();
        e4.b().d(INTERFACE_NAME, "[jsbridge]getAppVersionCode: " + strP);
        return strP;
    }

    @JavascriptInterface
    public String getAppVersionName() {
        if (e.a() == null) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]getAppVersionName failed, HSCoreUtil is not init.");
            return "";
        }
        String strQ = c.q();
        e4.b().d(INTERFACE_NAME, "[jsbridge]getAppVersionName: " + strQ);
        return strQ;
    }

    @JavascriptInterface
    public String getDeviceInfo() {
        if (e.a() == null) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]getDeviceInfo failed, HSCoreUtil is not init.");
            return "";
        }
        DeviceDTO deviceDTO = new DeviceDTO();
        deviceDTO.setBrand(c.a());
        deviceDTO.setModel(c.f());
        deviceDTO.setOsType(1);
        deviceDTO.setOsApiLevel(String.valueOf(c.g()));
        deviceDTO.setLanguage(Locale.getDefault().getLanguage());
        deviceDTO.setPsCountryCode(DeviceUtil.d());
        deviceDTO.setCpu(DeviceUtil.c());
        deviceDTO.setGaid(DeviceUtil.e());
        String strD = GsonUtil.d(deviceDTO);
        e4.b().d(INTERFACE_NAME, "[jsbridge]getDeviceInfo");
        return strD;
    }

    @JavascriptInterface
    public long getPsVersion() {
        if (e.a() == null) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]getPsVersion failed, HSCoreUtil is not init.");
            return 0L;
        }
        PackageInfo packageInfoC = i0.c(e.a());
        if (packageInfoC == null) {
            return 0L;
        }
        long longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfoC.getLongVersionCode() : packageInfoC.versionCode;
        e4.b().d(INTERFACE_NAME, "[jsbridge]getPsVersion: " + longVersionCode);
        return longVersionCode;
    }

    @JavascriptInterface
    public String getSdkVersionCode() {
        if (e.a() == null) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]getSdkVersionCode failed, HSCoreUtil is not init.");
            return "";
        }
        String strValueOf = String.valueOf(c.m());
        e4.b().d(INTERFACE_NAME, "[jsbridge]getSdkVersionCode: " + strValueOf);
        return strValueOf;
    }

    @JavascriptInterface
    public void handleAdClick(final String str) {
        Preconditions.d(new Preconditions.a() { // from class: d7.e
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                this.f61242a.l(str);
            }
        });
    }

    @JavascriptInterface
    public boolean isAppInstalled(String str) {
        try {
            if (e.a() != null) {
                return (TextUtils.isEmpty(str) || e.a().getPackageManager().getPackageInfo(str, 0) == null) ? false : true;
            }
            e4.b().w(INTERFACE_NAME, "[jsbridge]isAppInstalled failed, HSCoreUtil is not init.");
            return false;
        } catch (Exception unused) {
            e4.b().w(INTERFACE_NAME, "the package name is " + str + " is not installed");
        }
    }

    @JavascriptInterface
    public boolean isMaterialExist(String str, int i11, boolean z10) {
        if (e.a() == null) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]isMaterialExit, HSCoreUtil is not init.");
            return false;
        }
        e4.b().w(INTERFACE_NAME, "isMaterialExit: url is " + str + " source is " + i11 + ", isVastAd is " + z10);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.startsWith(this.f21701c) || str.startsWith(this.f21702d)) {
                int i12 = 4;
                if (i11 != 4) {
                    i12 = z10 ? 3 : 1;
                }
                str = DiskLruCacheUtil.e(str, i12);
            }
            File file = new File(str);
            e4.b().w(INTERFACE_NAME, "[jsbridge]isMaterialExit: file path is " + str);
            return file.exists() && file.isFile();
        } catch (Throwable th2) {
            e4.b().w(INTERFACE_NAME, "getMaterialPathByUrl, error:" + th2);
            return false;
        }
    }

    @JavascriptInterface
    public boolean openPsDetail(String str, String str2) {
        if (a7.c.p()) {
            e4.b().d(INTERFACE_NAME, "[jsbridge]start openPsDetail: showId = " + str + ", adInfo = " + str2);
        }
        try {
            if (!e.h()) {
                e4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, HSCoreUtil is not init.");
                return false;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str2, AdsDTO.class);
            if (adsDTO == null) {
                AthenaTracker.F(null, str, false);
                AthenaTracker.E(null, str, null, false);
                e4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, adsDTO is null.");
                return false;
            }
            adsDTO.setUuid(str);
            AdxImpBean adxImpBean = new AdxImpBean();
            adxImpBean.pmid = adsDTO.getJsCodeSeatId();
            adxImpBean.triggerId = adsDTO.getJsTriggerId();
            adxImpBean.requestId = adsDTO.getJsRequestId();
            adsDTO.setImpBeanRequest(adxImpBean);
            adsDTO.setPslinkInfo(N0.F(adsDTO));
            AthenaTracker.F(adsDTO.getJsTriggerId(), str, false);
            return i(adsDTO);
        } catch (Exception e11) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, error: " + Log.getStackTraceString(e11));
            AthenaTracker.F(null, str, false);
            AthenaTracker.E(null, str, null, false);
            return false;
        }
    }

    @Nullable
    public WebResourceResponse shouldInterceptRequest(String str) {
        File fileC;
        try {
            if (e.a() == null) {
                e4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, HSCoreUtil is not init.");
                return null;
            }
            if (!TextUtils.isEmpty(str) && str.startsWith(AgentPageJsBridge.AGENT_PAGE_START_URL)) {
                e4.b().d(INTERFACE_NAME, "shouldInterceptRequest-----> url = " + str);
                Uri uri = Uri.parse(str);
                String queryParameter = uri.getQueryParameter(this.f21700b);
                e4.b().e(INTERFACE_NAME, "shouldInterceptRequest----> sourceValue = " + queryParameter);
                if (TextUtils.isEmpty(queryParameter)) {
                    return null;
                }
                String path = uri.getPath();
                if (TextUtils.isEmpty(path)) {
                    return null;
                }
                if (path.startsWith("/")) {
                    path = path.substring(1);
                }
                e4.b().e(INTERFACE_NAME, "shouldInterceptRequest----> path = " + path);
                String str2 = new String(Base64.decode(path, 0));
                e4.b().e(INTERFACE_NAME, "shouldInterceptRequest----> realUrl = " + str2);
                if (str2.startsWith(this.f21701c) || str2.startsWith(this.f21702d)) {
                    IDiskCache iDiskCacheG = TextUtils.equals(queryParameter, String.valueOf(4)) ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                    fileC = iDiskCacheG != null ? iDiskCacheG.c(new ImageCacheURL(str2)) : null;
                } else {
                    fileC = new File(str2);
                }
                if (fileC != null && fileC.exists() && fileC.length() > 0) {
                    String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
                    return Build.VERSION.SDK_INT >= 26 ? new WebResourceResponse(mimeTypeFromExtension, "UTF-8", Files.newInputStream(fileC.toPath(), new OpenOption[0])) : new WebResourceResponse(mimeTypeFromExtension, "UTF-8", new FileInputStream(fileC));
                }
                return null;
            }
            return null;
        } catch (Throwable th2) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]shouldInterceptRequest failed, error: " + th2);
        }
    }

    @JavascriptInterface
    public void showAdmAdFromJs(String str, String str2, String str3, String str4, String str5) {
        AdsDTO adsDTO;
        if (!isAlphaNumeric(str4)) {
            e4.b().d(INTERFACE_NAME, "[jsbridge] showId is invalid，showId =null");
            str4 = "";
        }
        if (!e.h()) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, HSCoreUtil is not init.");
            g(d(str4, 2, TaErrorCode.CODE_UNINIT), null);
            return;
        }
        try {
            adsDTO = (AdsDTO) GsonUtil.a(str5, AdsDTO.class);
        } catch (Exception unused) {
            e4.b().w(INTERFACE_NAME, "showAdmAdFromJs: adInfo is not available");
            adsDTO = null;
        }
        if (adsDTO == null) {
            g(d(str4, 2, 6000), null);
            return;
        }
        adsDTO.setUuid(str4);
        AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.pmid = str;
        adxImpBean.triggerId = str2;
        adxImpBean.requestId = str3;
        adsDTO.setImpBeanRequest(adxImpBean);
        adsDTO.setFromJs(true);
        adsDTO.setPslinkInfo(N0.F(adsDTO));
        AthenaTracker.B(adsDTO, 1, 0);
        s3 s3Var = new s3(new q3.b().e(adsDTO.getCodeSeatId()).g());
        s3Var.g(new a(s3Var, this, adsDTO));
        g(d(str4, 1, 0), null);
        s3Var.H(adsDTO);
    }

    @JavascriptInterface
    public void trackAdShow(String str) {
        try {
            if (e.a() == null) {
                e4.b().w(INTERFACE_NAME, "[jsbridge]trackAdShow failed, HSCoreUtil is not init.");
                return;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str, AdsDTO.class);
            if (adsDTO == null) {
                e4.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, adsDTO is null.");
                return;
            }
            adsDTO.setShowReportTimeType(1);
            r2.a(adsDTO);
            DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adsDTO.getImageWidth().intValue(), adsDTO.getImageHeight().intValue());
            adsDTO.setClickid(j3.a());
            c1.o(adsDTO.getShowTrackingUrls(), adsDTO, downUpPointBean);
            y yVar = y.f23090a;
            yVar.C(adsDTO);
            yVar.Q();
            if (adsDTO.getImpBeanRequest() != null) {
                P.g().k(adsDTO.getImpBeanRequest().pmid);
                if (adsDTO.getSource() == 4) {
                    Z.f21541a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
                } else if (adsDTO.isOfflineAd()) {
                    adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                    c0.F().q(adsDTO);
                } else {
                    u0.f22991a.a(adsDTO);
                }
            }
            AdsDTO adsDTOM232clone = adsDTO.m232clone();
            adsDTOM232clone.setShowReportTimeType(2);
            r2.b(adsDTOM232clone);
        } catch (Throwable th2) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, error: " + th2);
        }
    }

    @JavascriptInterface
    public void trackJSEvent(String str, int i11, String str2) {
        try {
            if (e.a() == null) {
                e4.b().w(INTERFACE_NAME, "[jsbridge]trackJSEvent failed, HSCoreUtil is not init.");
                return;
            }
            if (!TextUtils.isEmpty(str) && i11 > 0 && !TextUtils.isEmpty(str2)) {
                AthenaTracker.P(null, str, str2, i11);
                return;
            }
            e4.b().w(INTERFACE_NAME, "[jsbridge]trackJSEvent failed, info is empty.");
        } catch (Throwable th2) {
            e4.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, error: " + th2);
        }
    }

    public void updateWebViewReference(WebView webView) {
        this.f21703e = new WeakReference(webView);
        Context context = webView == null ? null : webView.getContext();
        if (e.a() != null || context == null) {
            return;
        }
        e.i(context);
    }
}
