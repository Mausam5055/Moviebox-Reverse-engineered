package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdVideoActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "a", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "videoManager", "Lji/b0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lji/b0;", "binding", "com/transsion/ad/test/ad_example/TestAdVideoActivity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdVideoActivity$a;", "videoListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdVideoActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private BiddingVideoManager videoManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ji.b0 binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final a videoListener = new a();

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            oi.b.a.c(TestAdVideoActivity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            BiddingVideoManager biddingVideoManager = TestAdVideoActivity.this.videoManager;
            if (biddingVideoManager == null) {
                Intrinsics.z("videoManager");
                biddingVideoManager = null;
            }
            AbsAdBidding.R0(biddingVideoManager, TestAdVideoActivity.this, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            oi.b.a.c(TestAdVideoActivity.this, 6, "onBiddingWrapperAdShowError() --> 展示失败", null, false, 12, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(TestAdVideoActivity testAdVideoActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdVideoActivity), null, null, new TestAdVideoActivity$onCreate$1$1(testAdVideoActivity, null), 3, null);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_v";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.b0 b0VarC = ji.b0.c(getLayoutInflater());
        this.binding = b0VarC;
        ji.b0 b0Var = null;
        if (b0VarC == null) {
            Intrinsics.z("binding");
            b0VarC = null;
        }
        setContentView(b0VarC.getRoot());
        this.videoManager = new BiddingVideoManager();
        ji.b0 b0Var2 = this.binding;
        if (b0Var2 == null) {
            Intrinsics.z("binding");
        } else {
            b0Var = b0Var2;
        }
        b0Var.f66032b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdVideoActivity.V(this.f42335a, view);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        BiddingVideoManager biddingVideoManager = this.videoManager;
        if (biddingVideoManager == null) {
            Intrinsics.z("videoManager");
            biddingVideoManager = null;
        }
        biddingVideoManager.V();
    }
}
