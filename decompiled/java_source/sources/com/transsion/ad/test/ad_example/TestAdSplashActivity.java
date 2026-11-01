package com.transsion.ad.test.ad_example;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
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
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lcom/transsion/ad/bidding/splash/b;", "a", "Lcom/transsion/ad/bidding/splash/b;", "splashManager", "Lji/a0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lji/a0;", "binding", "com/transsion/ad/test/ad_example/TestAdSplashActivity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;", "splashListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class TestAdSplashActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ad.bidding.splash.b splashManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ji.a0 binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final a splashListener = new a();

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            oi.b.a.c(TestAdSplashActivity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            com.transsion.ad.bidding.splash.b bVar;
            super.j(biddingIntermediateMaterialBean);
            oi.a aVar = oi.a.f71022a;
            AdMaterialList adMaterialListA = AdPlanUtil.f42167a.a(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null);
            oi.a.g(aVar, "SplashH5", "h5:" + (adMaterialListA != null ? adMaterialListA.getH5Link() : null), 0, false, 12, null);
            com.transsion.ad.bidding.splash.b bVar2 = TestAdSplashActivity.this.splashManager;
            if (bVar2 == null) {
                Intrinsics.z("splashManager");
                bVar = null;
            } else {
                bVar = bVar2;
            }
            AbsAdBidding.R0(bVar, TestAdSplashActivity.this, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            TestAdSplashActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(TestAdSplashActivity testAdSplashActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdSplashActivity), null, null, new TestAdSplashActivity$onCreate$1$1(testAdSplashActivity, null), 3, null);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_s";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.a0 a0VarC = ji.a0.c(getLayoutInflater());
        this.binding = a0VarC;
        ji.a0 a0Var = null;
        if (a0VarC == null) {
            Intrinsics.z("binding");
            a0VarC = null;
        }
        setContentView(a0VarC.getRoot());
        this.splashManager = new com.transsion.ad.bidding.splash.b();
        ji.a0 a0Var2 = this.binding;
        if (a0Var2 == null) {
            Intrinsics.z("binding");
        } else {
            a0Var = a0Var2;
        }
        a0Var.f66023b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdSplashActivity.V(this.f42333a, view);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
