package com.cloud.tmc.miniapp.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.cloud.tmc.ad.bean.response.AdsDTO;
import com.cloud.tmc.integration.activity.LoadStepAction;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.render.IWebViewFactory;
import com.cloud.tmc.kernel.render.IWebView;
import com.cloud.tmc.kernel.render.WebviewPageCallback;
import com.cloud.tmc.kernel.render.WebviewPageEventCallback;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.StatusAction;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.widget.LoadingTextView;
import com.cloud.tmc.miniapp.widget.NativeTitleBar;
import com.cloud.tmc.miniapp.widget.StatusLayout;
import com.cloud.tmc.miniutils.util.ColorUtils;
import com.cloud.tmc.miniutils.util.EmptyUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.render.system.SystemWebView;
import com.hisavana.common.tracking.TrackingKey;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class WebViewActivity extends BaseActivity implements WebviewPageEventCallback, WebviewPageCallback, StatusAction {
    private static final String APP_ID = "open webview";
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: renamed from: wb, reason: collision with root package name */
    private IWebView f23689wb;
    private final Lazy mStatusLayout$delegate = LazyKt.b(new Function0<StatusLayout>() { // from class: com.cloud.tmc.miniapp.ui.WebViewActivity$mStatusLayout$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final StatusLayout invoke() {
            return (StatusLayout) this.this$0.findViewById(R.id.sl_status);
        }
    });
    private final Lazy mFlWb$delegate = LazyKt.b(new Function0<FrameLayout>() { // from class: com.cloud.tmc.miniapp.ui.WebViewActivity$mFlWb$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_wb);
        }
    });
    private final Lazy mLayoutTitle$delegate = LazyKt.b(new Function0<NativeTitleBar>() { // from class: com.cloud.tmc.miniapp.ui.WebViewActivity$mLayoutTitle$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final NativeTitleBar invoke() {
            return (NativeTitleBar) this.this$0.findViewById(R.id.title_native_Bar);
        }
    });
    private final Lazy mPb$delegate = LazyKt.b(new Function0<ProgressBar>() { // from class: com.cloud.tmc.miniapp.ui.WebViewActivity$mPb$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ProgressBar invoke() {
            return (ProgressBar) this.this$0.findViewById(R.id.f23494pb);
        }
    });
    private Boolean mLoadErrorFlag = Boolean.FALSE;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void launch$default(Companion companion, Context context, String str, String str2, String str3, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                str2 = null;
            }
            if ((i11 & 8) != 0) {
                str3 = null;
            }
            companion.launch(context, str, str2, str3);
        }

        @JvmStatic
        public final void launch(Context context, String url, String str, String str2) {
            Intrinsics.h(context, "context");
            Intrinsics.h(url, "url");
            Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
            intent.putExtra(TmcConstants.EXTRA_PAGE_URI, url);
            if (str != null) {
                intent.putExtra(TmcConstants.EXTRA_APP_INSTANCE_ID, str);
            }
            if (str2 != null) {
                intent.putExtra(TmcConstants.EXTRA_PAGE_INSTANCE_ID, str2);
            }
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
            context.startActivity(intent);
        }
    }

    private final NativeTitleBar getMLayoutTitle() {
        return (NativeTitleBar) this.mLayoutTitle$delegate.getValue();
    }

    private final ProgressBar getMPb() {
        return (ProgressBar) this.mPb$delegate.getValue();
    }

    private final StatusLayout getMStatusLayout() {
        return (StatusLayout) this.mStatusLayout$delegate.getValue();
    }

    @JvmStatic
    public static final void launch(Context context, String str, String str2, String str3) {
        Companion.launch(context, str, str2, str3);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_mini_web_view;
    }

    public final FrameLayout getMFlWb() {
        return (FrameLayout) this.mFlWb$delegate.getValue();
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public StatusLayout getStatusLayout() {
        return getMStatusLayout();
    }

    public Integer getViewThemeMode() {
        return 1;
    }

    public final IWebView getWb() {
        return this.f23689wb;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void hideStatusLoading() {
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initData() {
        String string;
        Bundle extras = getIntent().getExtras();
        if (extras == null || (string = extras.getString(TmcConstants.EXTRA_PAGE_URI)) == null) {
            return;
        }
        Intrinsics.g(string, "getString(TmcConstants.EXTRA_PAGE_URI) ?: return");
        this.mLoadErrorFlag = Boolean.FALSE;
        IWebView iWebView = this.f23689wb;
        if (iWebView != null) {
            iWebView.load(string, MapsKt.j(TuplesKt.a("x-tr-devtype", "h5")));
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initView() {
        try {
            IWebView iWebViewCreateWebView = ((IWebViewFactory) TmcProxy.get(IWebViewFactory.class)).createWebView(this);
            SystemWebView systemWebView = null;
            if (iWebViewCreateWebView != null) {
                iWebViewCreateWebView.registerPageEventCallback(this);
                iWebViewCreateWebView.registerPageCallback(this);
            } else {
                iWebViewCreateWebView = null;
            }
            this.f23689wb = iWebViewCreateWebView;
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            FrameLayout mFlWb = getMFlWb();
            if (mFlWb != null) {
                IWebView iWebView = this.f23689wb;
                SystemWebView systemWebView2 = iWebView instanceof SystemWebView ? (SystemWebView) iWebView : null;
                if (systemWebView2 != null) {
                    systemWebView2.setBackgroundColor(ColorUtils.getColor(R.color.mini_color_bg_01));
                    systemWebView2.getSettings().setDomStorageEnabled(true);
                    systemWebView2.setLayoutParams(layoutParams);
                    ViewExtKt.removeSelf(systemWebView2);
                    systemWebView = systemWebView2;
                }
                mFlWb.addView(systemWebView);
            }
            IWebView iWebView2 = this.f23689wb;
            if (iWebView2 != null) {
                iWebView2.setAppId(APP_ID);
            }
            IWebView iWebView3 = this.f23689wb;
            if (iWebView3 != null) {
                iWebView3.setNode(new PageNode(null, "", "", null, null));
            }
            IWebView iWebView4 = this.f23689wb;
            if (iWebView4 != null) {
                iWebView4.create();
            }
            NativeTitleBar mLayoutTitle = getMLayoutTitle();
            if (mLayoutTitle != null) {
                mLayoutTitle.setTitle("");
            }
            NativeTitleBar mLayoutTitle2 = getMLayoutTitle();
            if (mLayoutTitle2 != null) {
                mLayoutTitle2.setonBackClickListener(new Function0<Unit>() { // from class: com.cloud.tmc.miniapp.ui.WebViewActivity.initView.3
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m258invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m258invoke() {
                        WebViewActivity.this.finish();
                    }
                });
            }
        } catch (Throwable th2) {
            TmcLogger.e("WebViewActivity", th2);
        }
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public boolean isLoadStatusLoadingOrError() {
        return StatusAction.DefaultImpls.isLoadStatusLoadingOrError(this);
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onConsoleMessage(String consoleMessage) {
        Intrinsics.h(consoleMessage, "consoleMessage");
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        IWebView iWebView = this.f23689wb;
        if (iWebView != null) {
            iWebView.destroy();
            this.f23689wb = null;
        }
        FrameLayout mFlWb = getMFlWb();
        if (mFlWb != null) {
            mFlWb.removeAllViews();
        }
    }

    public void onPageFinished(WebView webView, String str) {
        StatusLayout statusLayout = getStatusLayout();
        if (statusLayout != null) {
            statusLayout.OooO0O0();
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public void onPageStarted(WebView webView, String str) {
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onProgressChanged(WebView webView, int i11) {
        if (i11 == 0) {
            ProgressBar mPb = getMPb();
            if (mPb == null) {
                return;
            }
            mPb.setVisibility(0);
            return;
        }
        if (i11 != 100) {
            ProgressBar mPb2 = getMPb();
            if (mPb2 == null) {
                return;
            }
            mPb2.setProgress(i11);
            return;
        }
        ProgressBar mPb3 = getMPb();
        if (mPb3 == null) {
            return;
        }
        mPb3.setVisibility(8);
    }

    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        LoadingTextView loadingTextView;
        this.mLoadErrorFlag = Boolean.TRUE;
        if (webResourceRequest == null || !webResourceRequest.isForMainFrame()) {
            return;
        }
        StatusLayout statusLayout = getStatusLayout();
        if (statusLayout != null && (loadingTextView = statusLayout.OooO0oo) != null) {
            loadingTextView.setVisibility(4);
        }
        if (NetworkUtils.isConnected()) {
            StatusAction.DefaultImpls.showError$default(this, new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.WebViewActivity.onReceivedError.2
                @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
                public void onRetry(StatusLayout statusLayout2) {
                    StatusLayout statusLayout3 = WebViewActivity.this.getStatusLayout();
                    if (statusLayout3 != null) {
                        statusLayout3.OooO0Oo();
                    }
                    WebViewActivity.this.mLoadErrorFlag = Boolean.FALSE;
                    IWebView wb2 = WebViewActivity.this.getWb();
                    if (wb2 != null) {
                        wb2.reload();
                    }
                }
            }, R.string.loading_error_tv, "", APP_ID, null, 16, null);
        } else {
            StatusAction.DefaultImpls.showNoNetwork$default(this, new StatusLayout.OooO0O0() { // from class: com.cloud.tmc.miniapp.ui.WebViewActivity.onReceivedError.1
                @Override // com.cloud.tmc.miniapp.widget.StatusLayout.OooO0O0
                public void onRetry(StatusLayout statusLayout2) {
                    StatusLayout statusLayout3 = WebViewActivity.this.getStatusLayout();
                    if (statusLayout3 != null) {
                        statusLayout3.OooO0Oo();
                    }
                    WebViewActivity.this.mLoadErrorFlag = Boolean.FALSE;
                    IWebView wb2 = WebViewActivity.this.getWb();
                    if (wb2 != null) {
                        wb2.reload();
                    }
                }
            }, 0, null, APP_ID, null, 22, null);
        }
    }

    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onReceivedIcon(Bitmap bitmap) {
    }

    public void onReceivedTitle(String str) {
        if (!Intrinsics.c(this.mLoadErrorFlag, Boolean.FALSE) || EmptyUtils.textIsEmpty(str)) {
            NativeTitleBar mLayoutTitle = getMLayoutTitle();
            if (mLayoutTitle != null) {
                mLayoutTitle.setTitle("");
                return;
            }
            return;
        }
        NativeTitleBar mLayoutTitle2 = getMLayoutTitle();
        if (mLayoutTitle2 != null) {
            mLayoutTitle2.setTitle(str);
        }
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageCallback
    public /* synthetic */ Boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return com.cloud.tmc.kernel.render.d.a(this, webView, renderProcessGoneDetail);
    }

    @Override // com.cloud.tmc.kernel.render.WebviewPageEventCallback
    public void onRequestFocus() {
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void setLoadingProgressConfig(LoadingTextView.LoadingAnimationModel loadingAnimationModel) {
        StatusAction.DefaultImpls.setLoadingProgressConfig(this, loadingAnimationModel);
    }

    public final void setWb(IWebView iWebView) {
        this.f23689wb = iWebView;
    }

    public /* synthetic */ Boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return com.cloud.tmc.kernel.render.d.b(this, webView, webResourceRequest);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public boolean showComplete() {
        return StatusAction.DefaultImpls.showComplete(this);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showCustomErrorLayout(String str, String str2, String str3, StatusLayout.OooO0O0 oooO0O0, String str4, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showCustomErrorLayout(this, str, str2, str3, oooO0O0, str4, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showError(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showError(this, oooO0O0, i11, str, str2, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(int i11, int i12, int i13, StatusLayout.OooO0O0 oooO0O0, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i11, i12, i13, oooO0O0, z10, z11, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(int i11, int i12, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, i11, i12, oooO0O0, str, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, StatusLayout.OooO0O0 oooO0O0, String str, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, oooO0O0, str, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showErrorLayout(Drawable drawable, CharSequence charSequence, CharSequence charSequence2, StatusLayout.OooO0O0 oooO0O0, String str, boolean z10, boolean z11, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showErrorLayout(this, drawable, charSequence, charSequence2, oooO0O0, str, z10, z11, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showLoading() {
        StatusAction.DefaultImpls.showLoading(this);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showLoadingLogo(String str, String str2) {
        StatusAction.DefaultImpls.showLoadingLogo(this, str, str2);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showMainLayoutAlpha(float f11) {
        StatusAction.DefaultImpls.showMainLayoutAlpha(this, f11);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showNoNetwork(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showNoNetwork(this, oooO0O0, i11, str, str2, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showPhotoEmpty(int i11, int i12, StatusLayout.OooO0O0 oooO0O0) {
        StatusAction.DefaultImpls.showPhotoEmpty(this, i11, i12, oooO0O0);
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void showStatusLoading() {
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void showUnstableNetwork(StatusLayout.OooO0O0 oooO0O0, int i11, String str, String str2, StatusLayout.OooO00o oooO00o) {
        StatusAction.DefaultImpls.showUnstableNetwork(this, oooO0O0, i11, str, str2, oooO00o);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void statusLayoutCreateShortCutsSuccess(String str, Function3<? super String, ? super String, ? super String, Unit> function3) {
        StatusAction.DefaultImpls.statusLayoutCreateShortCutsSuccess(this, str, function3);
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void statusLayoutOnResume() {
        StatusAction.DefaultImpls.statusLayoutOnResume(this);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void trackH5Event(String str, AdsDTO adsDTO, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject(str3);
            Bundle bundle = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            if (itKeys != null) {
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object obj = jSONObject.get(next);
                    if (obj != null) {
                        TmcLogger.d("ssp", obj.toString());
                        String simpleName = obj.getClass().getSimpleName();
                        switch (simpleName.hashCode()) {
                            case -1808118735:
                                if (!simpleName.equals("String")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj2 = jSONObject.get(next);
                                    Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.String");
                                    bundle.putString(next, (String) obj2);
                                }
                                break;
                            case -672261858:
                                if (!simpleName.equals("Integer")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj3 = jSONObject.get(next);
                                    Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Int");
                                    bundle.putInt(next, ((Integer) obj3).intValue());
                                }
                                break;
                            case 2374300:
                                if (!simpleName.equals("Long")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj4 = jSONObject.get(next);
                                    Intrinsics.f(obj4, "null cannot be cast to non-null type kotlin.Long");
                                    bundle.putLong(next, ((Long) obj4).longValue());
                                }
                                break;
                            case 1729365000:
                                if (!simpleName.equals("Boolean")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj5 = jSONObject.get(next);
                                    Intrinsics.f(obj5, "null cannot be cast to non-null type kotlin.Boolean");
                                    bundle.putBoolean(next, ((Boolean) obj5).booleanValue());
                                }
                                break;
                            case 2052876273:
                                if (!simpleName.equals("Double")) {
                                    TmcLogger.d("ssp", "type not supported");
                                } else {
                                    Object obj6 = jSONObject.get(next);
                                    Intrinsics.f(obj6, "null cannot be cast to non-null type kotlin.Double");
                                    bundle.putDouble(next, ((Double) obj6).doubleValue());
                                }
                                break;
                            default:
                                TmcLogger.d("ssp", "type not supported");
                                break;
                        }
                    }
                }
            }
            if (adsDTO != null) {
                Integer codeSeatType = adsDTO.getCodeSeatType();
                Intrinsics.g(codeSeatType, "info.getCodeSeatType()");
                bundle.putInt("code_seat_type", codeSeatType.intValue());
                bundle.putString("advertiser_id", String.valueOf(adsDTO.getAdvertiserId()));
                bundle.putString("plan_id", String.valueOf(adsDTO.getPlanId()));
                bundle.putString("ad_group_id", String.valueOf(adsDTO.getAdGroupId()));
                bundle.putString("ad_creative_id", String.valueOf(adsDTO.getAdCreativeId()));
                bundle.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundle.putString(TrackingKey.REQUEST_ID, adsDTO.getRequestId());
                bundle.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            }
            bundle.putString("ip_address", DeviceUtil.INSTANCE.getIp());
            bundle.putString("app_id_external", adsDTO != null ? adsDTO.getAppIdExternal() : null);
            bundle.putString("code_seat_id_external", adsDTO != null ? adsDTO.getCodeSeatIdExternal() : null);
            bundle.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForAd(str, str2, "", bundle);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.cloud.tmc.miniapp.action.StatusAction
    public void updateStepAnimation(LoadStepAction loadStepAction) {
        StatusAction.DefaultImpls.updateStepAnimation(this, loadStepAction);
    }
}
