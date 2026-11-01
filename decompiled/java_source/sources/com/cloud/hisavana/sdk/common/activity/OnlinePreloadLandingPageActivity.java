package com.cloud.hisavana.sdk.common.activity;

import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.c1;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PreloadH5Entry;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.bean.WebPageBean;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.k4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0003R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/cloud/hisavana/sdk/common/activity/OnlinePreloadLandingPageActivity;", "Lcom/cloud/hisavana/sdk/common/activity/b;", "<init>", "()V", "", CampaignEx.JSON_KEY_TITLE, "", "A", "(Ljava/lang/String;)V", "", "process", "z", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "s", "onDestroy", "x", "Ljava/lang/String;", "TAG", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "y", "Lcom/cloud/hisavana/sdk/common/bean/PreloadH5Entry;", "preloadH5Entry", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OnlinePreloadLandingPageActivity extends b {

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "PreloadLandingActivity";

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private PreloadH5Entry preloadH5Entry;

    public static final class a implements PreloadH5Entry.PreloadCallback {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.common.bean.PreloadH5Entry.PreloadCallback
        public void onPageFailed(int i11) {
            OnlinePreloadLandingPageActivity.this.j(i11);
        }

        @Override // com.cloud.hisavana.sdk.common.bean.PreloadH5Entry.PreloadCallback
        public void onPageStart() {
        }

        @Override // com.cloud.hisavana.sdk.common.bean.PreloadH5Entry.PreloadCallback
        public void onProgressChanged(int i11) {
            OnlinePreloadLandingPageActivity.this.z(i11);
        }

        @Override // com.cloud.hisavana.sdk.common.bean.PreloadH5Entry.PreloadCallback
        public void onReceivedTitle(String title) {
            Intrinsics.h(title, "title");
            OnlinePreloadLandingPageActivity.this.A(title);
        }

        @Override // com.cloud.hisavana.sdk.common.bean.PreloadH5Entry.PreloadCallback
        public void shouldOverrideUrlLoading(String str, boolean z10) {
            OnlinePreloadLandingPageActivity.this.g(str, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(String title) {
        TextView textView;
        ActionWebView webView;
        String url;
        if (title == null || title.length() == 0) {
            return;
        }
        PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
        if ((preloadH5Entry == null || (webView = preloadH5Entry.getWebView()) == null || (url = webView.getUrl()) == null || !StringsKt.c0(url, title, false, 2, null)) && (textView = this.f21880f) != null) {
            textView.setText(title);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(int process) {
        ProgressBar progressBar;
        e4.b().d(this.TAG, "setProgressBar " + process);
        if (process < 100) {
            ProgressBar progressBar2 = this.f21875a;
            if (progressBar2 == null || 8 != progressBar2.getVisibility() || (progressBar = this.f21875a) == null) {
                return;
            }
            progressBar.setVisibility(0);
            return;
        }
        ProgressBar progressBar3 = this.f21875a;
        if (progressBar3 != null) {
            progressBar3.setVisibility(8);
        }
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
            webPageBean.setSpendEndTime(preloadH5Entry != null ? preloadH5Entry.getSpendEndTime() : 0L);
        }
        j(0);
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b, android.app.Activity
    protected void onDestroy() {
        PreloadH5Entry preloadH5Entry = this.preloadH5Entry;
        if (preloadH5Entry != null) {
            k4.f22600a.f(this, preloadH5Entry);
        }
        this.f21881g = null;
        super.onDestroy();
    }

    @Override // com.cloud.hisavana.sdk.common.activity.b
    protected void s() {
        if (this.f21882h == null) {
            j(TaErrorCode.WEBVIEW_ADSDTO_NULL);
            finish();
            e4.b().e(this.TAG, "loadLandingPage,ad is null,finish");
            return;
        }
        com.cloud.hisavana.sdk.manager.a.f22653a.A(20);
        SSPParamSplicedResult sSPParamSplicedResultA = b.a(this.f21883i, this.f21882h);
        String splicedURL = sSPParamSplicedResultA.getSplicedURL();
        String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
        AdsDTO adsDTO = this.f21882h;
        Unit unit = null;
        c1.m(splicedURL, adsDTO, null, new c1.d(adsDTO));
        AthenaTracker.G(originalUrl, this.f21882h, Boolean.FALSE);
        String realLandUrl = this.f21882h.getRealLandUrl();
        if (realLandUrl == null || realLandUrl.length() == 0) {
            j(TaErrorCode.WEBVIEW_URL_EMPTY);
            finish();
            e4.b().e(this.TAG, "loadLandingPage,click url is empty,finish");
            return;
        }
        WebPageBean webPageBean = this.f21892r;
        if (webPageBean != null) {
            webPageBean.setUrl(this.f21882h.getClickUrl());
        }
        WebPageBean webPageBean2 = this.f21892r;
        if (webPageBean2 != null) {
            webPageBean2.setTargetUrl(this.f21882h.getRealLandUrl());
        }
        v(this.f21882h.getRealLandUrl());
        q(this.f21882h.getClickUrl());
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_webview);
        if (frameLayout != null) {
            k4 k4Var = k4.f22600a;
            AdsDTO adsDTO2 = this.f21882h;
            Intrinsics.g(adsDTO2, "adsDTO");
            PreloadH5Entry preloadH5EntryE = k4Var.e(this, adsDTO2, new a());
            this.preloadH5Entry = preloadH5EntryE;
            if (preloadH5EntryE != null) {
                this.f21881g = preloadH5EntryE.getWebView();
                frameLayout.addView(preloadH5EntryE.getWebView(), new FrameLayout.LayoutParams(-1, -1));
                this.f21892r.setLoadStartTime(System.currentTimeMillis());
                A(preloadH5EntryE.getTitle());
                z(preloadH5EntryE.getProcess());
                String overrideUrl = preloadH5EntryE.getOverrideUrl();
                if (overrideUrl != null && overrideUrl.length() != 0 && g(preloadH5EntryE.getOverrideUrl(), false)) {
                    this.f21892r.setSpendEndTime(System.currentTimeMillis());
                }
                unit = Unit.f67061a;
            }
            if (unit == null) {
                j(TaErrorCode.WEBVIEW_CREAT_ERROR);
                if (!isFinishing() && !isDestroyed()) {
                    finish();
                }
                e4.b().e(this.TAG, "loadLandingPage,preloadEntry is null,finish");
            }
        }
    }
}
