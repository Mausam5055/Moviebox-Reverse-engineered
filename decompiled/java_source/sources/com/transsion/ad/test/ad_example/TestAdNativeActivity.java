package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\u0003J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdNativeActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "", "onDestroy", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "a", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "Lji/s;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lji/s;", "binding", "com/transsion/ad/test/ad_example/TestAdNativeActivity$nativeListener$1", "c", "Lcom/transsion/ad/test/ad_example/TestAdNativeActivity$nativeListener$1;", "nativeListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdNativeActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private BiddingNativeManager nativeManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ji.s binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final TestAdNativeActivity$nativeListener$1 nativeListener = new di.a() { // from class: com.transsion.ad.test.ad_example.TestAdNativeActivity$nativeListener$1
        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f42303d), null, null, new TestAdNativeActivity$nativeListener$1$onBiddingLoad$1(this.f42303d, biddingIntermediateMaterialBean, null), 3, null);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(TestAdNativeActivity testAdNativeActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdNativeActivity), null, null, new TestAdNativeActivity$onCreate$1$1(testAdNativeActivity, null), 3, null);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_n";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.s sVarC = ji.s.c(getLayoutInflater());
        this.binding = sVarC;
        ji.s sVar = null;
        if (sVarC == null) {
            Intrinsics.z("binding");
            sVarC = null;
        }
        setContentView(sVarC.getRoot());
        this.nativeManager = new BiddingNativeManager();
        ji.s sVar2 = this.binding;
        if (sVar2 == null) {
            Intrinsics.z("binding");
        } else {
            sVar = sVar2;
        }
        sVar.f66175b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdNativeActivity.W(this.f42356a, view);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        BiddingNativeManager biddingNativeManager = this.nativeManager;
        if (biddingNativeManager == null) {
            Intrinsics.z("nativeManager");
            biddingNativeManager = null;
        }
        biddingNativeManager.V();
    }
}
