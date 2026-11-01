package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lji/u;", "a", "Lji/u;", "binding", "Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;", "nativeManager", "com/transsion/ad/test/ad_example/TestAdNativeSspActivity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;", "nativeListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdNativeSspActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private ji.u binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private BiddingSspNativeManager nativeManager;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final a nativeListener = new a();

    public static final class a extends di.a {
        a() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            oi.b.a.c(TestAdNativeSspActivity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // di.a
        public void k(List list) {
            BiddingSspNativeManager biddingSspNativeManager;
            BiddingSspNativeManager biddingSspNativeManager2;
            BiddingSspNativeManager biddingSspNativeManager3;
            super.k(list);
            oi.b.a.c(TestAdNativeSspActivity.this, 0, "获取到广告 " + (list != null ? Integer.valueOf(list.size()) : null) + " 条广告数据，开始渲染广告视图...", null, false, 13, null);
            if (list != null) {
                TestAdNativeSspActivity testAdNativeSspActivity = TestAdNativeSspActivity.this;
                int i11 = 0;
                for (Object obj : list) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) obj;
                    if (i11 == 0) {
                        ji.u uVar = testAdNativeSspActivity.binding;
                        if (uVar == null) {
                            Intrinsics.z("binding");
                            uVar = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView = uVar.f66181c;
                        BiddingSspNativeManager biddingSspNativeManager4 = testAdNativeSspActivity.nativeManager;
                        if (biddingSspNativeManager4 == null) {
                            Intrinsics.z("nativeManager");
                            biddingSspNativeManager = null;
                        } else {
                            biddingSspNativeManager = biddingSspNativeManager4;
                        }
                        NativeWrapperAdView.bindSspNativeView$default(nativeWrapperAdView, biddingSspNativeManager, null, new g0(testAdNativeSspActivity), biddingIntermediateMaterialBean, 2, null);
                    } else if (i11 == 1) {
                        ji.u uVar2 = testAdNativeSspActivity.binding;
                        if (uVar2 == null) {
                            Intrinsics.z("binding");
                            uVar2 = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView2 = uVar2.f66182d;
                        BiddingSspNativeManager biddingSspNativeManager5 = testAdNativeSspActivity.nativeManager;
                        if (biddingSspNativeManager5 == null) {
                            Intrinsics.z("nativeManager");
                            biddingSspNativeManager2 = null;
                        } else {
                            biddingSspNativeManager2 = biddingSspNativeManager5;
                        }
                        NativeWrapperAdView.bindSspNativeView$default(nativeWrapperAdView2, biddingSspNativeManager2, null, new g0(testAdNativeSspActivity), biddingIntermediateMaterialBean, 2, null);
                    } else if (i11 == 2) {
                        ji.u uVar3 = testAdNativeSspActivity.binding;
                        if (uVar3 == null) {
                            Intrinsics.z("binding");
                            uVar3 = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView3 = uVar3.f66183e;
                        BiddingSspNativeManager biddingSspNativeManager6 = testAdNativeSspActivity.nativeManager;
                        if (biddingSspNativeManager6 == null) {
                            Intrinsics.z("nativeManager");
                            biddingSspNativeManager3 = null;
                        } else {
                            biddingSspNativeManager3 = biddingSspNativeManager6;
                        }
                        NativeWrapperAdView.bindSspNativeView$default(nativeWrapperAdView3, biddingSspNativeManager3, null, new g0(testAdNativeSspActivity), biddingIntermediateMaterialBean, 2, null);
                    }
                    i11 = i12;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(TestAdNativeSspActivity testAdNativeSspActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdNativeSspActivity), null, null, new TestAdNativeSspActivity$onCreate$1$1(testAdNativeSspActivity, null), 3, null);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_n";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.u uVarC = ji.u.c(getLayoutInflater());
        this.binding = uVarC;
        ji.u uVar = null;
        if (uVarC == null) {
            Intrinsics.z("binding");
            uVarC = null;
        }
        setContentView(uVarC.getRoot());
        this.nativeManager = new BiddingSspNativeManager();
        ji.u uVar2 = this.binding;
        if (uVar2 == null) {
            Intrinsics.z("binding");
        } else {
            uVar = uVar2;
        }
        uVar.f66180b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_example.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdNativeSspActivity.W(this.f42330a, view);
            }
        });
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        BiddingSspNativeManager biddingSspNativeManager = this.nativeManager;
        if (biddingSspNativeManager == null) {
            Intrinsics.z("nativeManager");
            biddingSspNativeManager = null;
        }
        biddingSspNativeManager.V();
    }
}
