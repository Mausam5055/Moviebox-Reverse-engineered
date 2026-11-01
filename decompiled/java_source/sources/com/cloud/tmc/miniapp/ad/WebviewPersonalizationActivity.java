package com.cloud.tmc.miniapp.ad;

import android.app.Activity;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEvent;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniapp.ui.WebViewActivity;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.render.system.SystemWebView;
import com.hisavana.common.tracking.TrackingKey;
import java.lang.ref.WeakReference;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class WebviewPersonalizationActivity extends WebViewActivity {
    public static final /* synthetic */ int OooO = 0;
    public final String OooO00o = "WebviewPersonalizationActivity";
    public String OooO0O0;
    public String OooO0OO;
    public String OooO0Oo;
    public String OooO0o;
    public String OooO0o0;
    public String OooO0oO;
    public AdsDTO OooO0oo;

    public static final class SspInterface {
        public final String OooO00o;
        public final AdsDTO OooO0O0;
        public final String OooO0OO;
        public final WeakReference<Activity> OooO0Oo;

        public SspInterface(Activity activity, String str, AdsDTO adsDTO, String str2) {
            this.OooO00o = str;
            this.OooO0O0 = adsDTO;
            this.OooO0OO = str2;
            this.OooO0Oo = new WeakReference<>(activity);
        }

        @JavascriptInterface
        public final void athenaTrack(String eventName, String params) {
            Intrinsics.h(eventName, "eventName");
            Intrinsics.h(params, "params");
            WeakReference<Activity> weakReference = this.OooO0Oo;
            Activity activity = weakReference != null ? weakReference.get() : null;
            WebviewPersonalizationActivity webviewPersonalizationActivity = activity instanceof WebviewPersonalizationActivity ? (WebviewPersonalizationActivity) activity : null;
            if (webviewPersonalizationActivity != null) {
                String str = this.OooO0OO;
                AdsDTO adsDTO = this.OooO0O0;
                int i11 = WebviewPersonalizationActivity.OooO;
                webviewPersonalizationActivity.trackH5Event(str, adsDTO, eventName, params);
            }
        }

        public final AdsDTO getAdsDTO() {
            return this.OooO0O0;
        }

        public final String getAppId() {
            return this.OooO0OO;
        }

        public final String getTriggerId() {
            return this.OooO00o;
        }

        @JavascriptInterface
        public final void personaliseCallback() {
            Activity activity;
            IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(((AppManager) TmcProxy.get(AppManager.class)).findApp(this.OooO0OO));
            if (eventCenterInstance != null) {
                eventCenterInstance.postEvent(EventConstants.EVENT_AD_PERSONALIZATION_PAGE, new DefaultEvent(this.OooO00o));
            }
            WeakReference<Activity> weakReference = this.OooO0Oo;
            if (weakReference == null || (activity = weakReference.get()) == null) {
                return;
            }
            activity.finish();
        }
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.miniapp.action.StatusAction
    public Integer getViewThemeMode() {
        return 1;
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.miniapp.base.BaseActivity
    public void initData() {
        String stringExtra = getIntent().getStringExtra("ad_personalization_url");
        this.OooO0O0 = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            finish();
        }
        try {
            this.OooO0OO = getIntent().getStringExtra("adsDTO");
            this.OooO0o0 = getIntent().getStringExtra(TrackingKey.TRIGGER_ID);
            this.OooO0o = getIntent().getStringExtra("appIdExternal");
            this.OooO0oO = getIntent().getStringExtra("codeSeatIdExternal");
            this.OooO0Oo = getIntent().getStringExtra("appId");
            AdsDTO adsDTO = (AdsDTO) GsonUtils.fromJson(this.OooO0OO, AdsDTO.class);
            this.OooO0oo = adsDTO;
            if (adsDTO != null) {
                adsDTO.setAppIdExternal(this.OooO0o);
            }
            AdsDTO adsDTO2 = this.OooO0oo;
            if (adsDTO2 != null) {
                adsDTO2.setCodeSeatIdExternal(this.OooO0oO);
            }
            String gAId = DeviceUtil.getGAId();
            AdsDTO adsDTO3 = this.OooO0oo;
            Long adCreativeId = adsDTO3 != null ? adsDTO3.getAdCreativeId() : null;
            AdsDTO adsDTO4 = this.OooO0oo;
            String industryId = adsDTO4 != null ? adsDTO4.getIndustryId() : null;
            AdsDTO adsDTO5 = this.OooO0oo;
            Long advertiserId = adsDTO5 != null ? adsDTO5.getAdvertiserId() : null;
            AdsDTO adsDTO6 = this.OooO0oo;
            String app_id = adsDTO6 != null ? adsDTO6.getApp_id() : null;
            AdsDTO adsDTO7 = this.OooO0oo;
            String codeSeatId = adsDTO7 != null ? adsDTO7.getCodeSeatId() : null;
            String str = this.OooO0o0;
            AdsDTO adsDTO8 = this.OooO0oo;
            String str2 = "gaid=" + gAId + "&oneid=&ad_creative_id=" + adCreativeId + "&industry_id=" + industryId + "&advertiser_id=" + advertiserId + "&app_id=" + app_id + "&code_seat_id=" + codeSeatId + "&trigger_id=" + str + "&request_id=" + (adsDTO8 != null ? adsDTO8.getRequestId() : null);
            this.OooO0O0 = this.OooO0O0 + UrlUtils.QUESTION_MARK + str2;
        } catch (Throwable th2) {
            TraceLog.i(this.OooO00o, "parse LandingPage info fail: " + th2);
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
            systemWebView.addJavascriptInterface(new SspInterface(this, this.OooO0o0, this.OooO0oo, this.OooO0Oo), "sspWebView");
        }
        getIntent().putExtra(TmcConstants.EXTRA_PAGE_URI, this.OooO0O0);
        super.initData();
    }

    @Override // com.cloud.tmc.miniapp.ui.WebViewActivity, com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(((AppManager) TmcProxy.get(AppManager.class)).findApp(this.OooO0Oo));
        if (eventCenterInstance != null) {
            DefaultEvent defaultEvent = new DefaultEvent("landingPage");
            defaultEvent.setData(MapsKt.f(TuplesKt.a("finish", "true")));
            Unit unit = Unit.f67061a;
            eventCenterInstance.postEvent(EventConstants.EVENT_AD_LANDING_PAGE, defaultEvent);
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
}
