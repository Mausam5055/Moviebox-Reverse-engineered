package com.transsion.ad.test.ad_example;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u001a\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\tH\u0014¢\u0006\u0004\b\r\u0010\u0003J\u0015\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR$\u0010%\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdH5Activity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "a0", "onDestroy", "Landroid/webkit/WebView;", "webview", "b0", "(Landroid/webkit/WebView;)V", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "a", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "interstitialManager", "Lji/l;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lji/l;", "binding", "com/transsion/ad/test/ad_example/TestAdH5Activity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdH5Activity$a;", "splashListener", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/os/Handler;", "getStatusHandler", "()Landroid/os/Handler;", "setStatusHandler", "(Landroid/os/Handler;)V", "statusHandler", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class TestAdH5Activity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private BiddingInterstitialManager interstitialManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ji.l binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final a splashListener = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Handler statusHandler;

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            oi.b.a.c(TestAdH5Activity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingInterstitialManager biddingInterstitialManager;
            super.j(biddingIntermediateMaterialBean);
            oi.a aVar = oi.a.f71022a;
            AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
            oi.a.g(aVar, "SplashH5", "h5:" + (adMaterialListA != null ? adMaterialListA.getH5Link() : null), 0, false, 12, null);
            BiddingInterstitialManager biddingInterstitialManager2 = TestAdH5Activity.this.interstitialManager;
            if (biddingInterstitialManager2 == null) {
                Intrinsics.z("interstitialManager");
                biddingInterstitialManager = null;
            } else {
                biddingInterstitialManager = biddingInterstitialManager2;
            }
            AbsAdBidding.R0(biddingInterstitialManager, TestAdH5Activity.this, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            TestAdH5Activity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(TestAdH5Activity testAdH5Activity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdH5Activity), null, null, new TestAdH5Activity$onCreate$1$1(testAdH5Activity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d0(TestAdH5Activity testAdH5Activity, Message it) {
        Intrinsics.h(it, "it");
        testAdH5Activity.a0();
        Handler handler = testAdH5Activity.statusHandler;
        if (handler == null) {
            return true;
        }
        handler.sendEmptyMessageDelayed(0, 1000L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(TestAdH5Activity testAdH5Activity, View view) {
        ji.l lVar = testAdH5Activity.binding;
        ji.l lVar2 = null;
        if (lVar == null) {
            Intrinsics.z("binding");
            lVar = null;
        }
        BridgeWebView webview = lVar.f66144i;
        Intrinsics.g(webview, "webview");
        testAdH5Activity.b0(webview);
        ji.l lVar3 = testAdH5Activity.binding;
        if (lVar3 == null) {
            Intrinsics.z("binding");
            lVar3 = null;
        }
        String string = lVar3.f66143h.getText().toString();
        if (TextUtils.isEmpty(string)) {
            string = "https://www.baidu.com";
        }
        ji.l lVar4 = testAdH5Activity.binding;
        if (lVar4 == null) {
            Intrinsics.z("binding");
        } else {
            lVar2 = lVar4;
        }
        lVar2.f66144i.loadUrl(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(TestAdH5Activity testAdH5Activity, View view) {
        ji.l lVar = testAdH5Activity.binding;
        ji.l lVar2 = null;
        if (lVar == null) {
            Intrinsics.z("binding");
            lVar = null;
        }
        WebView sysWebview = lVar.f66141f;
        Intrinsics.g(sysWebview, "sysWebview");
        testAdH5Activity.b0(sysWebview);
        ji.l lVar3 = testAdH5Activity.binding;
        if (lVar3 == null) {
            Intrinsics.z("binding");
            lVar3 = null;
        }
        String string = lVar3.f66143h.getText().toString();
        if (TextUtils.isEmpty(string)) {
            string = "https://www.baidu.com";
        }
        ji.l lVar4 = testAdH5Activity.binding;
        if (lVar4 == null) {
            Intrinsics.z("binding");
        } else {
            lVar2 = lVar4;
        }
        lVar2.f66141f.loadUrl(string);
    }

    public final void a0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new TestAdH5Activity$checkStatus$1(this, null), 3, null);
    }

    public final void b0(WebView webview) {
        Intrinsics.h(webview, "webview");
        WebSettings settings = webview.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setBlockNetworkImage(false);
        settings.setMixedContentMode(0);
        settings.setCacheMode(-1);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_s";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.l lVarC = ji.l.c(getLayoutInflater());
        this.binding = lVarC;
        ji.l lVar = null;
        if (lVarC == null) {
            Intrinsics.z("binding");
            lVarC = null;
        }
        setContentView(lVarC.getRoot());
        this.interstitialManager = new BiddingInterstitialManager();
        ji.l lVar2 = this.binding;
        if (lVar2 == null) {
            Intrinsics.z("binding");
            lVar2 = null;
        }
        lVar2.f66139d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5Activity.c0(this.f42347a, view);
            }
        });
        this.statusHandler = new Handler(new Handler.Callback() { // from class: com.transsion.ad.test.ad_example.o
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return TestAdH5Activity.d0(this.f42348a, message);
            }
        });
        BiddingInterstitialManager.Companion.b(BiddingInterstitialManager.f41965w, "MBInterstitialTestId", null, 2, null);
        Handler handler = this.statusHandler;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(0, 1000L);
        }
        ji.l lVar3 = this.binding;
        if (lVar3 == null) {
            Intrinsics.z("binding");
            lVar3 = null;
        }
        lVar3.f66138c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5Activity.e0(view);
            }
        });
        ji.l lVar4 = this.binding;
        if (lVar4 == null) {
            Intrinsics.z("binding");
            lVar4 = null;
        }
        lVar4.f66137b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5Activity.f0(this.f42349a, view);
            }
        });
        ji.l lVar5 = this.binding;
        if (lVar5 == null) {
            Intrinsics.z("binding");
        } else {
            lVar = lVar5;
        }
        lVar.f66140e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5Activity.g0(this.f42350a, view);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ji.l lVar = this.binding;
        ji.l lVar2 = null;
        if (lVar == null) {
            Intrinsics.z("binding");
            lVar = null;
        }
        lVar.f66144i.destroy();
        ji.l lVar3 = this.binding;
        if (lVar3 == null) {
            Intrinsics.z("binding");
        } else {
            lVar2 = lVar3;
        }
        lVar2.f66141f.destroy();
    }
}
