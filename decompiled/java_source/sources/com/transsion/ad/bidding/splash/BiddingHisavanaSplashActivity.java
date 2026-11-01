package com.transsion.ad.bidding.splash;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.v;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ji.i;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\u0003J\r\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\u0003J\r\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/transsion/ad/bidding/splash/BiddingHisavanaSplashActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onStop", "onDestroy", "R", "T", "finish", "Lji/i;", "a", "Lji/i;", "binding", "Lcom/transsion/ad/bidding/splash/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/splash/a;", "splashProvider", "", "c", "Z", "isTimeReached", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, IntegrationConstants.IS_FOREGROUND, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class BiddingHisavanaSplashActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private i binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private a splashProvider;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean isTimeReached;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isForeground;

    public final void R() {
        finish();
    }

    public final void T() {
        if (this.isForeground) {
            finish();
        } else {
            this.isTimeReached = true;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        v.f41893a.c();
        super.finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        i iVarC = i.c(getLayoutInflater());
        this.binding = iVarC;
        setContentView(iVarC != null ? iVarC.getRoot() : null);
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        immersionBarWith.transparentBar();
        immersionBarWith.hideBar(BarHide.FLAG_SHOW_BAR);
        immersionBarWith.init();
        a aVarA = a.f42032n.a(getIntent().getStringExtra("key_scene_id"));
        this.splashProvider = aVarA;
        if (aVarA != null) {
            i iVar = this.binding;
            a.A(aVarA, this, iVar != null ? iVar.f66119b : null, null, 4, null);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        a aVar = this.splashProvider;
        if (aVar != null) {
            aVar.onClosed(103);
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.isForeground = true;
        if (this.isTimeReached) {
            finish();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        this.isForeground = false;
    }
}
