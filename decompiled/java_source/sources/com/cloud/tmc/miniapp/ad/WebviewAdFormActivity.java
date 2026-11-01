package com.cloud.tmc.miniapp.ad;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.cloud.tmc.ad.TrackingManager;
import com.cloud.tmc.ad.bean.AdExtraBean;
import com.cloud.tmc.ad.bean.DownUpPointBean;
import com.cloud.tmc.ad.bean.FormBean;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.utils.BundleUtil;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.DimensionUtil;
import com.cloud.tmc.integration.utils.ObjectTypeAdapter;
import com.cloud.tmc.integration.utils.UrlUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEvent;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.AdAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.miniapp.ui.WebViewActivity;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.render.system.SystemWebView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.google.logging.type.LogSeverity;
import com.hisavana.common.tracking.TrackingKey;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class WebviewAdFormActivity extends WebViewActivity {
    public static final OooO00o OooOOo0 = new OooO00o();
    public int OooO;
    public String OooO0oo;
    public String OooOO0;
    public String OooOO0O;
    public String OooOO0o;
    public DownUpPointBean OooOOO;
    public AdsDTO OooOOOO;
    public final String OooO00o = "WebviewAdFormActivity";
    public final int OooO0O0 = 3;
    public int OooO0OO = 1;
    public final String OooO0Oo = "sspWebView";
    public final String OooO0o0 = "height";
    public final String OooO0o = "formId";
    public final int OooO0oO = LogSeverity.EMERGENCY_VALUE;
    public Bundle OooOOO0 = new Bundle();
    public long OooOOOo = System.currentTimeMillis();

    public static final class OooO00o {
    }

    public static final class SspWebWindow {
        public final WeakReference<Activity> OooO00o;

        public SspWebWindow(Activity activity, int i11) {
            this.OooO00o = new WeakReference<>(activity);
        }

        @JavascriptInterface
        public final void close() {
            Activity activity = this.OooO00o.get();
            if (activity != null) {
                activity.finish();
            }
        }

        @JavascriptInterface
        public final void submitForm(String str) {
            Activity activity = this.OooO00o.get();
            FormBean formBean = null;
            WebviewAdFormActivity webviewAdFormActivity = activity instanceof WebviewAdFormActivity ? (WebviewAdFormActivity) activity : null;
            if (webviewAdFormActivity != null) {
                try {
                    FormBean formBean2 = (FormBean) new Gson().fromJson(str, FormBean.class);
                    if (formBean2 != null) {
                        formBean2.setGaid(DeviceUtil.getGAId());
                        formBean2.setFormId(webviewAdFormActivity.OooO);
                        formBean2.setIpAddress(DeviceUtil.INSTANCE.getIp(webviewAdFormActivity));
                        formBean = formBean2;
                    }
                    webviewAdFormActivity.OooO00o(formBean);
                    webviewAdFormActivity.OooOOO0.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                    webviewAdFormActivity.OooOOO0.putString("form_info", String.valueOf(str));
                    ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(webviewAdFormActivity.OooOO0o, AdAnalyseType.form_infor_set, "", webviewAdFormActivity.OooOOO0);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public final void OooO00o() {
        this.OooOOO0.putLong("web_duration", System.currentTimeMillis() - this.OooOOOo);
        this.OooOOO0.putLong(TrackingKey.EVENT_TS, this.OooOOOo);
        this.OooOOO0.putString("web_url", this.OooO0oo);
        ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).record(this.OooOO0o, AdAnalyseType.ad_web_callback, "", this.OooOOO0);
    }

    public final void OooO00o(final FormBean formBean) {
        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(UrlKt.getURL_FORM(), MapsKt.j(TuplesKt.a("Accept-Timezone", "UTC")), new HashMap(), formBean, Boolean.FALSE, new TmcResponseCallback<String>() { // from class: com.cloud.tmc.miniapp.ad.WebviewAdFormActivity$realSubmitForm$1
            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public Type getType() {
                return new TypeToken<BaseResponse<? extends String>>() { // from class: com.cloud.tmc.miniapp.ad.WebviewAdFormActivity$realSubmitForm$1$getType$1
                }.getType();
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onFail(BaseResponse<? extends Object> fail, Map<String, String> map) {
                Intrinsics.h(fail, "fail");
                WebviewAdFormActivity webviewAdFormActivity = this.OooO00o;
                int i11 = webviewAdFormActivity.OooO0OO;
                if (i11 <= webviewAdFormActivity.OooO0O0) {
                    webviewAdFormActivity.OooO0OO = i11 + 1;
                    webviewAdFormActivity.OooO00o(formBean);
                }
            }

            @Override // com.cloud.tmc.integration.net.TmcResponseCallback
            public void onSuccess(BaseResponse<? extends String> bean, Map<String, String> map) {
                Intrinsics.h(bean, "bean");
                this.OooO00o.OooO0OO = 1;
            }
        });
    }

    public final void OooO00o(String str) {
        App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(this.OooOO0o);
        DefaultEvent defaultEvent = new DefaultEvent("formPage");
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        defaultEvent.setData(MapsKt.f(TuplesKt.a("ad_click", arrayList)));
        IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(appFindApp);
        if (eventCenterInstance != null) {
            eventCenterInstance.postEvent(EventConstants.EVENT_AD_FORM_PAGE, defaultEvent);
        }
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.miniapp.action.StatusAction
    public Integer getViewThemeMode() {
        return 1;
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.miniapp.base.BaseActivity
    public void initData() {
        AdsDTO adsDTO;
        String stringExtra = getIntent().getStringExtra("ad_web_form_url");
        this.OooO0oo = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            finish();
        }
        try {
            String stringExtra2 = getIntent().getStringExtra("ad_web_ad_info");
            this.OooOO0 = getIntent().getStringExtra("adsDTO");
            this.OooOO0O = getIntent().getStringExtra("pointData");
            this.OooOO0o = getIntent().getStringExtra("appId");
            Map<String, ? extends Object> _dataMap = (Map) new GsonBuilder().registerTypeAdapter(new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.miniapp.ad.WebviewAdFormActivity$initData$gson$1
            }.getType(), new ObjectTypeAdapter()).serializeNulls().create().fromJson(stringExtra2, new TypeToken<Map<String, ? extends Object>>() { // from class: com.cloud.tmc.miniapp.ad.WebviewAdFormActivity$initData$_dataMap$1
            }.getType());
            BundleUtil bundleUtil = BundleUtil.INSTANCE;
            Intrinsics.g(_dataMap, "_dataMap");
            bundleUtil.parse(_dataMap, this.OooOOO0);
            this.OooOOO = (DownUpPointBean) GsonUtils.fromJson(this.OooOO0O, DownUpPointBean.class);
            this.OooOOOO = (AdsDTO) GsonUtils.fromJson(this.OooOO0, AdsDTO.class);
        } catch (Exception e11) {
            TraceLog.i(this.OooO00o, "parse AdForm info fail: " + e11);
        }
        int iMin = this.OooO0oO;
        try {
            String str = this.OooO0oo;
            if (str != null) {
                UrlUtil urlUtil = UrlUtil.INSTANCE;
                String paramValue = urlUtil.getParamValue(this.OooO0o0, str);
                if (paramValue == null) {
                    paramValue = "0";
                }
                String paramValue2 = urlUtil.getParamValue(this.OooO0o, str);
                this.OooO = paramValue2 != null ? Integer.parseInt(paramValue2) : 0;
                int i11 = Integer.parseInt(paramValue);
                iMin = Math.min(i11 == 0 ? this.OooO0oO : DimensionUtil.dip2px(this, i11), (getResources().getDisplayMetrics().heightPixels * 4) / 5);
            }
        } catch (Exception unused) {
            iMin = this.OooO0oO;
        }
        FrameLayout mFlWb = getMFlWb();
        ViewGroup.LayoutParams layoutParams = mFlWb != null ? mFlWb.getLayoutParams() : null;
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.width = (getResources().getDisplayMetrics().widthPixels * 4) / 5;
            layoutParams2.height = iMin;
            layoutParams2.gravity = 17;
            layoutParams2.topMargin = 0;
            FrameLayout mFlWb2 = getMFlWb();
            if (mFlWb2 != null) {
                mFlWb2.setLayoutParams(layoutParams2);
            }
        }
        IWebView wb2 = getWb();
        SystemWebView systemWebView = wb2 instanceof SystemWebView ? (SystemWebView) wb2 : null;
        if (systemWebView != null) {
            systemWebView.setBackgroundColor(0);
            systemWebView.getSettings().setMixedContentMode(0);
            systemWebView.getSettings().setSupportMultipleWindows(false);
            systemWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            systemWebView.getSettings().setNeedInitialFocus(true);
            systemWebView.getSettings().setDisplayZoomControls(false);
            systemWebView.getSettings().setUseWideViewPort(true);
            systemWebView.getSettings().setLoadWithOverviewMode(true);
            systemWebView.addJavascriptInterface(new SspWebWindow(this, this.OooO), this.OooO0Oo);
        }
        if (this.OooOOO != null && (adsDTO = this.OooOOOO) != null) {
            String clickUrl = adsDTO.getClickUrl();
            if (clickUrl == null) {
                clickUrl = "";
            }
            if (TrackingManager.isEagllwinLink(clickUrl)) {
                TrackingManager trackingManager = TrackingManager.INSTANCE;
                DownUpPointBean downUpPointBean = this.OooOOO;
                Intrinsics.e(downUpPointBean);
                AdsDTO adsDTO2 = this.OooOOOO;
                Intrinsics.e(adsDTO2);
                String str2 = this.OooOO0o;
                String str3 = str2 != null ? str2 : "";
                String sDKVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getSDKVersion();
                Intrinsics.g(sDKVersion, "get(\n                   …             ).sdkVersion");
                OooO00o(trackingManager.reportServerJoinField(downUpPointBean, adsDTO2, new AdExtraBean(str3, false, sDKVersion), true));
            } else {
                AdsDTO adsDTO3 = this.OooOOOO;
                String clickUrl2 = adsDTO3 != null ? adsDTO3.getClickUrl() : null;
                OooO00o(clickUrl2 != null ? clickUrl2 : "");
            }
        }
        getIntent().putExtra(TmcConstants.EXTRA_PAGE_URI, this.OooO0oo);
        super.initData();
        OooO00o();
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(((AppManager) TmcProxy.get(AppManager.class)).findApp(this.OooOO0o));
        if (eventCenterInstance != null) {
            DefaultEvent defaultEvent = new DefaultEvent("formPage");
            defaultEvent.setData(MapsKt.f(TuplesKt.a("finish", "true")));
            Unit unit = Unit.f67061a;
            eventCenterInstance.postEvent(EventConstants.EVENT_AD_FORM_PAGE, defaultEvent);
        }
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onReceivedTitle(String str) {
        super.onReceivedTitle(str);
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.kernel.render.WebviewPageCallback
    public Boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        OooO00o();
        AdsDTO adsDTO = this.OooOOOO;
        if (!TextUtils.isEmpty(adsDTO != null ? adsDTO.getAdm() : null) && webResourceRequest != null && (url = webResourceRequest.getUrl()) != null) {
            String string = url.toString();
            Intrinsics.g(string, "it.toString()");
            OooO00o(string);
        }
        Boolean boolShouldOverrideUrlLoading = super.shouldOverrideUrlLoading(webView, webResourceRequest);
        Intrinsics.g(boolShouldOverrideUrlLoading, "super.shouldOverrideUrlLoading(view, request)");
        return boolShouldOverrideUrlLoading;
    }
}
