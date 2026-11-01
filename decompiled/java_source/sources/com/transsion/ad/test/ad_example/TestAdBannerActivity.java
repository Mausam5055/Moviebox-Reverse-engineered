package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdBannerActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lji/k;", "a", "Lji/k;", "binding", "Lcom/transsion/ad/bidding/banner/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/banner/a;", "bannerManager", "com/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1", "c", "Lcom/transsion/ad/test/ad_example/TestAdBannerActivity$bannerListener$1;", "bannerListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdBannerActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ji.k binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ad.bidding.banner.a bannerManager;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final TestAdBannerActivity$bannerListener$1 bannerListener = new di.a() { // from class: com.transsion.ad.test.ad_example.TestAdBannerActivity$bannerListener$1
        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            oi.b.a.c(this.f42279d, 6, "onBiddingError() --> Banner 广告加载失败 --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f42279d), null, null, new TestAdBannerActivity$bannerListener$1$onBiddingLoad$1(biddingIntermediateMaterialBean, this.f42279d, null), 3, null);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(TestAdBannerActivity testAdBannerActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdBannerActivity), null, null, new TestAdBannerActivity$onCreate$1$1(testAdBannerActivity, null), 3, null);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_b";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.k kVarC = ji.k.c(getLayoutInflater());
        this.binding = kVarC;
        ji.k kVar = null;
        if (kVarC == null) {
            Intrinsics.z("binding");
            kVarC = null;
        }
        setContentView(kVarC.getRoot());
        ji.k kVar2 = this.binding;
        if (kVar2 == null) {
            Intrinsics.z("binding");
        } else {
            kVar = kVar2;
        }
        kVar.f66134b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdBannerActivity.X(this.f42346a, view);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.ad.bidding.banner.a aVar = this.bannerManager;
        if (aVar != null) {
            aVar.V();
        }
    }
}
