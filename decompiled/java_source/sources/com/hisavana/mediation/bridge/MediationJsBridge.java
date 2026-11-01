package com.hisavana.mediation.bridge;

import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.h;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mediation.ad.TBannerView;
import com.hisavana.mediation.bridge.MediationJsBridge;
import com.hisavana.mediation.bridge.holder.JsAdHolder;
import com.hisavana.mediation.bridge.holder.JsAdHolderHandler;
import com.hisavana.mediation.bridge.holder.JsBannerAdHolder;
import com.hisavana.mediation.bridge.listener.BridgeListener;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 -2\u00020\u0001:\u0002-.B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J;\u0010\u000e\u001a\u00020\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ3\u0010\u0010\u001a\u00020\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00122\b\u0010\b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016JW\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\u001f\u001a\u00020\r2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b\u001f\u0010#R\"\u0010(\u001a\u0010\u0012\f\u0012\n %*\u0004\u0018\u00010\u00020\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, d2 = {"Lcom/hisavana/mediation/bridge/MediationJsBridge;", "Lcom/cloud/hisavana/sdk/bridge/HisavanaAdJsBridge;", "Landroid/webkit/WebView;", "webView", "<init>", "(Landroid/webkit/WebView;)V", "", "callbackId", "codeSeatId", "", "adType", "adCount", "extInfo", "", "loadAd", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V", "showAd", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "", "hasAd", "(Ljava/lang/String;I)Z", "release", "()V", "eventType", "errorCode", "rewardStatus", "", BidResponsed.KEY_PRICE, "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adInfos", "a", "(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V", "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "jsBannerAdHolder", "(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "g", "Ljava/lang/ref/WeakReference;", "weakWeb", "Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;", "h", "Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;", "jsAdHolderHandler", "Companion", "BridgeListenerImpl", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MediationJsBridge extends HisavanaAdJsBridge {
    public static final String TAG = "MediationJsBridge";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public final WeakReference<WebView> weakWeb;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public JsAdHolderHandler jsAdHolderHandler;

    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005JW\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;", "Lcom/hisavana/mediation/bridge/listener/BridgeListener;", "Lcom/hisavana/mediation/bridge/MediationJsBridge;", "bridge", "<init>", "(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V", "", "callbackId", "", "eventType", "codeSeatId", "adType", "errorCode", "rewardStatus", "", BidResponsed.KEY_PRICE, "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adInfos", "", "callBackToJs", "(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V", "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;", "jsBannerAdHolder", "showBanner", "(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V", "Ljava/lang/ref/WeakReference;", "a", "Ljava/lang/ref/WeakReference;", "weakBridge", "mediation_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class BridgeListenerImpl implements BridgeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        public final WeakReference<MediationJsBridge> weakBridge;

        public BridgeListenerImpl(MediationJsBridge bridge) {
            Intrinsics.h(bridge, "bridge");
            this.weakBridge = new WeakReference<>(bridge);
        }

        @Override // com.hisavana.mediation.bridge.listener.BridgeListener
        public void callBackToJs(String callbackId, int eventType, String codeSeatId, int adType, int errorCode, int rewardStatus, double price, List<? extends AdsDTO> adInfos) {
            Intrinsics.h(callbackId, "callbackId");
            Intrinsics.h(codeSeatId, "codeSeatId");
            MediationJsBridge mediationJsBridge = this.weakBridge.get();
            if (mediationJsBridge != null) {
                mediationJsBridge.a(callbackId, eventType, codeSeatId, adType, errorCode, rewardStatus, price, adInfos);
            }
        }

        @Override // com.hisavana.mediation.bridge.listener.BridgeListener
        public void showBanner(JsBannerAdHolder jsBannerAdHolder) {
            Intrinsics.h(jsBannerAdHolder, "jsBannerAdHolder");
            MediationJsBridge mediationJsBridge = this.weakBridge.get();
            if (mediationJsBridge != null) {
                mediationJsBridge.a(jsBannerAdHolder);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediationJsBridge(WebView webView) {
        super(webView);
        Intrinsics.h(webView, "webView");
        this.weakWeb = new WeakReference<>(webView);
        this.jsAdHolderHandler = new JsAdHolderHandler(new BridgeListenerImpl(this));
    }

    public static final void a(MediationJsBridge mediationJsBridge, JsBannerAdHolder jsBannerAdHolder) {
        try {
            WebView webView = mediationJsBridge.weakWeb.get();
            if (webView != null && !jsBannerAdHolder.getIsRelease()) {
                View rootView = webView.getRootView();
                if (!(rootView instanceof FrameLayout)) {
                    mediationJsBridge.a(jsBannerAdHolder.getCallbackId(), 2, jsBannerAdHolder.getCodeSeatId(), jsBannerAdHolder.getAdType(), TAdErrorCode.CODE_JS_BANNER_MISSING_REQUIRED_ELEMENT, 0, 0.0d, null);
                    return;
                }
                int[] iArr = new int[2];
                webView.getLocationOnScreen(iArr);
                int i11 = iArr[0];
                int i12 = iArr[1];
                int height = webView.getHeight();
                int width = webView.getWidth();
                if (width != 0 && height != 0) {
                    int i13 = i12 + height;
                    TBannerView ad2 = jsBannerAdHolder.getAd();
                    int iA = h.a(50.0f);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, iA);
                    layoutParams.leftMargin = i11;
                    layoutParams.topMargin = i13 - iA;
                    ((FrameLayout) rootView).addView(ad2, layoutParams);
                    return;
                }
                AdLogUtil.Log().w(TAG, "showBanner, webViewWidth or webViewHeight is 0");
                return;
            }
            mediationJsBridge.a(jsBannerAdHolder.getCallbackId(), 2, jsBannerAdHolder.getCodeSeatId(), jsBannerAdHolder.getAdType(), TAdErrorCode.CODE_JS_BANNER_MISSING_REQUIRED_ELEMENT, 0, 0.0d, null);
        } catch (Exception e11) {
            AdLogUtil.Log().w(TAG, "showBanner, error:" + e11);
            mediationJsBridge.a(jsBannerAdHolder.getCallbackId(), 2, jsBannerAdHolder.getCodeSeatId(), jsBannerAdHolder.getAdType(), TAdErrorCode.CODE_SHOW_EXCEPTION, 0, 0.0d, null);
        }
    }

    public static final void a(String str, int i11, String str2, int i12, int i13, int i14, double d11, List list, MediationJsBridge mediationJsBridge) {
        try {
            String strD = GsonUtil.d(MapsKt.m(TuplesKt.a("callbackId", str), TuplesKt.a("eventType", Integer.valueOf(i11)), TuplesKt.a("codeSeatId", str2), TuplesKt.a("adType", Integer.valueOf(i12)), TuplesKt.a("errorCode", Integer.valueOf(i13)), TuplesKt.a("rewardStatus", Integer.valueOf(i14)), TuplesKt.a(BidResponsed.KEY_PRICE, Double.valueOf(d11)), TuplesKt.a("adInfos", list)));
            if (LogSwitch.isDebug) {
                AdLogUtil.Log().d(TAG, "callBackToJS, jsonData:" + strD);
            }
            WebView webView = mediationJsBridge.weakWeb.get();
            if (webView != null) {
                webView.evaluateJavascript("javascript:HisavanaAdJsBridgeCallback(" + strD + ");", null);
            }
        } catch (Exception e11) {
            AdLogUtil.Log().w(TAG, "callBackToJS, error:" + e11);
        }
    }

    public static final void a(String str, String str2, int i11, MediationJsBridge mediationJsBridge, String str3) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0 || i11 == 2) {
            AdLogUtil.Log().w(TAG, "showAd, triggerId or codeSeatId is empty, adType:" + i11);
            return;
        }
        if (!e.h()) {
            AdLogUtil.Log().w(TAG, "loadAd, HSCoreUtil is not init");
            mediationJsBridge.a(str, 2, str2, i11, TAdErrorCode.CODE_NOT_INITIALIZED, 0, 0.0d, null);
            return;
        }
        JsAdHolder jsAdHolderCreateAdHolder$default = JsAdHolderHandler.createAdHolder$default(mediationJsBridge.jsAdHolderHandler, str, str2, i11, str3, 0, 0, 48, null);
        if (jsAdHolderCreateAdHolder$default != null) {
            jsAdHolderCreateAdHolder$default.showAd();
        } else {
            AdLogUtil.Log().w(TAG, "showAd, adHolder is null");
            mediationJsBridge.a(str, 2, str2, i11, TAdErrorCode.CODE_SHOW_EXCEPTION, 0, 0.0d, null);
        }
    }

    public final void a(final JsBannerAdHolder jsBannerAdHolder) {
        Preconditions.d(new Preconditions.a() { // from class: de.b
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                MediationJsBridge.a(this.f61332a, jsBannerAdHolder);
            }
        });
    }

    public final void a(final String callbackId, final int eventType, final String codeSeatId, final int adType, final int errorCode, final int rewardStatus, final double price, final List<? extends AdsDTO> adInfos) {
        Preconditions.d(new Preconditions.a() { // from class: de.a
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                MediationJsBridge.a(callbackId, eventType, codeSeatId, adType, errorCode, rewardStatus, price, adInfos, this);
            }
        });
    }

    @JavascriptInterface
    public final boolean hasAd(String codeSeatId, int adType) {
        JsAdHolder jsAdHolderCreateAdHolder$default;
        if (codeSeatId == null || codeSeatId.length() == 0) {
            AdLogUtil.Log().w(TAG, "hasAd, codeSeatId is empty");
            return false;
        }
        if (!e.h()) {
            AdLogUtil.Log().w(TAG, "hasAd, HSCoreUtil is not init");
            return false;
        }
        if (adType == 1 || adType == 2 || adType == 6 || (jsAdHolderCreateAdHolder$default = JsAdHolderHandler.createAdHolder$default(this.jsAdHolderHandler, "", codeSeatId, adType, null, 0, 0, 56, null)) == null) {
            return false;
        }
        return jsAdHolderCreateAdHolder$default.hasAd();
    }

    @JavascriptInterface
    public final void loadAd(String callbackId, String codeSeatId, int adType, int adCount, String extInfo) {
        Intrinsics.h(extInfo, "extInfo");
        if (callbackId == null || callbackId.length() == 0 || codeSeatId == null || codeSeatId.length() == 0) {
            AdLogUtil.Log().w(TAG, "loadAd, triggerId or codeSeatId is empty");
            return;
        }
        if (!e.h()) {
            AdLogUtil.Log().w(TAG, "loadAd, HSCoreUtil is not init");
            a(callbackId, 1, codeSeatId, adType, TAdErrorCode.CODE_NOT_INITIALIZED, 0, 0.0d, null);
            return;
        }
        WebView webView = this.weakWeb.get();
        JsAdHolder<? extends Object> jsAdHolderCreateAdHolder = this.jsAdHolderHandler.createAdHolder(callbackId, codeSeatId, adType, extInfo, adCount, webView != null ? webView.getWidth() : 0);
        if (jsAdHolderCreateAdHolder != null) {
            jsAdHolderCreateAdHolder.loadAd();
        } else {
            AdLogUtil.Log().w(TAG, "loadAd, adHolder is null");
            a(callbackId, 1, codeSeatId, adType, TAdErrorCode.CODE_UNKNOWN, 0, 0.0d, null);
        }
    }

    public final void release() {
        this.jsAdHolderHandler.release();
        this.weakWeb.clear();
    }

    @JavascriptInterface
    public final void showAd(final String callbackId, final String codeSeatId, final int adType, final String extInfo) {
        Intrinsics.h(extInfo, "extInfo");
        Preconditions.d(new Preconditions.a() { // from class: de.c
            @Override // com.cloud.sdk.commonutil.util.Preconditions.a
            public final void onRun() {
                MediationJsBridge.a(callbackId, codeSeatId, adType, this, extInfo);
            }
        });
    }
}
