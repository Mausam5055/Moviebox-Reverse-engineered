package com.transsion.subroom.activity;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.home.viewmodel.TrendingUGCViewModel;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsnet.loginapi.ILoginApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0005\b\u0007\u0018\u0000 /2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J!\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u0019\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u0019\u0010\u0015\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0019\u0010\u0011J\u000f\u0010\u001a\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001c\u0010\u0003R\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\nR\u0016\u0010*\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010\nR\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u00060"}, d2 = {"Lcom/transsion/subroom/activity/SplashActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "", "d0", "", "state", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "Z", "(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "c0", "X", "", "isSplashAdLoaded", "e0", "(Z)V", "setStatusBar", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "hasFocus", "onWindowFocusChanged", "onResume", "onPause", "onDestroy", "Lcom/transsion/ad/bidding/splash/b;", "a", "Lcom/transsion/ad/bidding/splash/b;", "splashManager", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "Y", "()Landroid/os/Handler;", "mHandler", "c", "isBackups", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "isAdLoadStarted", "", "e", "J", "startTime", "f", "app_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class SplashActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ad.bidding.splash.b splashManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mHandler = LazyKt.b(new Function0() { // from class: com.transsion.subroom.activity.k0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SplashActivity.a0();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean isBackups;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isAdLoadStarted;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private long startTime;

    private final void X() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (System.currentTimeMillis() - bVar.b().getLong("app_config_fetch_time", 0L) > 1800000) {
            rm.e.p(rm.e.f74566a, null, null, 3, null);
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SplashActivity$fetchAppConfig$1(null), 3, null);
            bVar.b().putLong("app_config_fetch_time", System.currentTimeMillis());
        }
    }

    private final Handler Y() {
        return (Handler) this.mHandler.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z(String state, BiddingIntermediateMaterialBean maxEcpmObject) {
        com.transsion.ad.bidding.splash.b bVar;
        Y().removeCallbacksAndMessages(null);
        AppStartReport appStartReport = AppStartReport.f54517a;
        appStartReport.f(new AppStartDotState(AppStartDotState.AD_RENDERING, 0L, 2, null));
        if (this.isBackups) {
            return;
        }
        this.isBackups = true;
        boolean zEquals = TextUtils.equals(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, state);
        if (TextUtils.equals("time_out", state)) {
            ri.c.f74535a.k("", "", 5, 105, "开屏广告加载超时", null);
        }
        if (!zEquals) {
            com.transsion.ad.bidding.splash.b bVar2 = this.splashManager;
            if (bVar2 != null) {
                bVar2.V();
            }
            this.splashManager = null;
        }
        if (!zEquals) {
            com.transsion.startup.pref.consume.c.f54529a.q();
        }
        setStatusBar();
        c0();
        X();
        appStartReport.l("splash_config");
        e0(zEquals);
        if (getIntent().getBooleanExtra("without_ad", false)) {
            com.transsion.startup.pref.consume.c.f54529a.q();
            appStartReport.f(new AppStartDotState(AppStartDotState.AD_END, 0L, 2, null));
        } else {
            if (!zEquals || (bVar = this.splashManager) == null) {
                return;
            }
            AbsAdBidding.R0(bVar, this, maxEcpmObject, false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler a0() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(SplashActivity splashActivity) {
        splashActivity.Z("time_out", null);
    }

    private final void c0() {
        PreloadTrendingData.a aVar = PreloadTrendingData.f45886n;
        aVar.a().z();
        if (ak.g.f639a.b()) {
            TrendingUGCViewModel.a aVar2 = TrendingUGCViewModel.f45835l;
            Application application = getApplication();
            Intrinsics.g(application, "getApplication(...)");
            TrendingUGCViewModel trendingUGCViewModelA = aVar2.a(application);
            if (trendingUGCViewModelA != null) {
                trendingUGCViewModelA.A(this);
            }
        } else {
            aVar.a().U(this);
        }
        aVar.a().G();
    }

    private final void d0() {
        if (this.isAdLoadStarted) {
            return;
        }
        this.isAdLoadStarted = true;
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new SplashActivity$startSplashAdLoad$1(this, null), 3, null);
    }

    private final void e0(boolean isSplashAdLoaded) {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        intent.putExtra("isSplashAdLoaded", isSplashAdLoaded);
        startActivity(intent);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new SplashActivity$toMain$1(this, null), 3, null);
        overridePendingTransition(0, 0);
        finish();
    }

    private final void setStatusBar() {
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().clearFlags(67108864);
        getWindow().getDecorView().setSystemUiVisibility(13312);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        AppStartReport appStartReport = AppStartReport.f54517a;
        appStartReport.f(new AppStartDotState(AppStartDotState.SPLASH_START, 0L, 2, null));
        e1.a.f61469b.a(this);
        appStartReport.l("splash_screen");
        this.startTime = System.currentTimeMillis();
        com.transsion.startup.pref.consume.c cVar = com.transsion.startup.pref.consume.c.f54529a;
        cVar.l(this);
        if (!isTaskRoot() && !Intrinsics.c(getIntent().getStringExtra("from"), "deeplink")) {
            lg.a.C0828a.f(lg.a.f68839a, "SplashActivity", "finish from TaskRoot", false, 4, null);
            finish();
            return;
        }
        ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        if (iLoginApi != null) {
            iLoginApi.m(iLoginApi.n() + 1);
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (bVar.b().getBoolean("first_start_not_show_cold_ad", false)) {
            cVar.m();
            appStartReport.f(new AppStartDotState(AppStartDotState.AD_LOADING, 0L, 2, null));
            appStartReport.l("splash_ad_load_begin");
            d0();
            Y().postDelayed(new Runnable() { // from class: com.transsion.subroom.activity.j0
                @Override // java.lang.Runnable
                public final void run() {
                    SplashActivity.b0(this.f54647a);
                }
            }, ((long) com.transsion.ad.scene.a.f42201a.t("ColdStartScene")) * 1000);
        } else {
            cVar.r();
            Z("skip", null);
            bVar.b().putBoolean("first_start_not_show_cold_ad", true);
        }
        com.transsion.push.f.f50806a.d();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.transsion.baseui.activity.k.f(null, this, 1, null);
        com.transsion.ad.bidding.splash.b bVar = this.splashManager;
        if (bVar != null) {
            bVar.N0(null);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.k(null, this, 1, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.o(null, this, 1, null);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        if (hasFocus) {
            AppStartReport.f54517a.f(new AppStartDotState(AppStartDotState.SPLASH_RESUME, 0L, 2, null));
        }
    }
}
