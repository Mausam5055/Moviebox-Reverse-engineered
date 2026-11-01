package com.transsion.ad.test.ad_example;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.plan.AdPlanUtil;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000A\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0019\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003J\u0015\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Landroid/webkit/WebView;", "webview", "Y", "(Landroid/webkit/WebView;)V", "Lcom/transsion/ad/bidding/splash/b;", "a", "Lcom/transsion/ad/bidding/splash/b;", "splashManager", "Lji/l;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lji/l;", "binding", "com/transsion/ad/test/ad_example/TestAdH5V1Activity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdH5V1Activity$a;", "splashListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class TestAdH5V1Activity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ad.bidding.splash.b splashManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ji.l binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final a splashListener = new a();

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            oi.b.a.c(TestAdH5V1Activity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            com.transsion.ad.bidding.splash.b bVar;
            super.j(biddingIntermediateMaterialBean);
            oi.a aVar = oi.a.f71022a;
            AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
            oi.a.g(aVar, "SplashH5", "h5:" + (adMaterialListA != null ? adMaterialListA.getH5Link() : null), 0, false, 12, null);
            com.transsion.ad.bidding.splash.b bVar2 = TestAdH5V1Activity.this.splashManager;
            if (bVar2 == null) {
                Intrinsics.z("splashManager");
                bVar = null;
            } else {
                bVar = bVar2;
            }
            AbsAdBidding.R0(bVar, TestAdH5V1Activity.this, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            TestAdH5V1Activity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(TestAdH5V1Activity testAdH5V1Activity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdH5V1Activity), null, null, new TestAdH5V1Activity$onCreate$1$1(testAdH5V1Activity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(TestAdH5V1Activity testAdH5V1Activity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdH5V1Activity), null, null, new TestAdH5V1Activity$onCreate$2$1(testAdH5V1Activity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(TestAdH5V1Activity testAdH5V1Activity, View view) {
        ji.l lVar = testAdH5V1Activity.binding;
        ji.l lVar2 = null;
        if (lVar == null) {
            Intrinsics.z("binding");
            lVar = null;
        }
        BridgeWebView webview = lVar.f66144i;
        Intrinsics.g(webview, "webview");
        testAdH5V1Activity.Y(webview);
        ji.l lVar3 = testAdH5V1Activity.binding;
        if (lVar3 == null) {
            Intrinsics.z("binding");
            lVar3 = null;
        }
        String string = lVar3.f66143h.getText().toString();
        if (TextUtils.isEmpty(string)) {
            string = "https://www.baidu.com";
        }
        ji.l lVar4 = testAdH5V1Activity.binding;
        if (lVar4 == null) {
            Intrinsics.z("binding");
        } else {
            lVar2 = lVar4;
        }
        lVar2.f66144i.loadUrl(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(TestAdH5V1Activity testAdH5V1Activity, View view) {
        ji.l lVar = testAdH5V1Activity.binding;
        ji.l lVar2 = null;
        if (lVar == null) {
            Intrinsics.z("binding");
            lVar = null;
        }
        WebView sysWebview = lVar.f66141f;
        Intrinsics.g(sysWebview, "sysWebview");
        testAdH5V1Activity.Y(sysWebview);
        ji.l lVar3 = testAdH5V1Activity.binding;
        if (lVar3 == null) {
            Intrinsics.z("binding");
            lVar3 = null;
        }
        String string = lVar3.f66143h.getText().toString();
        if (TextUtils.isEmpty(string)) {
            string = "https://www.baidu.com";
        }
        ji.l lVar4 = testAdH5V1Activity.binding;
        if (lVar4 == null) {
            Intrinsics.z("binding");
        } else {
            lVar2 = lVar4;
        }
        lVar2.f66141f.loadUrl(string);
    }

    public final void Y(WebView webview) {
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
        this.splashManager = new com.transsion.ad.bidding.splash.b();
        ji.l lVar2 = this.binding;
        if (lVar2 == null) {
            Intrinsics.z("binding");
            lVar2 = null;
        }
        lVar2.f66139d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5V1Activity.Z(this.f42351a, view);
            }
        });
        ji.l lVar3 = this.binding;
        if (lVar3 == null) {
            Intrinsics.z("binding");
            lVar3 = null;
        }
        lVar3.f66138c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5V1Activity.a0(this.f42352a, view);
            }
        });
        ji.l lVar4 = this.binding;
        if (lVar4 == null) {
            Intrinsics.z("binding");
            lVar4 = null;
        }
        lVar4.f66137b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5V1Activity.b0(this.f42353a, view);
            }
        });
        ji.l lVar5 = this.binding;
        if (lVar5 == null) {
            Intrinsics.z("binding");
        } else {
            lVar = lVar5;
        }
        lVar.f66140e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdH5V1Activity.c0(this.f42354a, view);
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
