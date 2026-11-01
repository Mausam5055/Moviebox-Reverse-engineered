package com.transsion.ad.strategy;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.v;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class HotSplashManager extends di.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f42220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f42221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static BiddingInterstitialManager f42222g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final HotSplashManager f42219d = new HotSplashManager();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Handler f42223h = new Handler(Looper.getMainLooper());

    private HotSplashManager() {
    }

    private final String B() {
        JsonElement jsonElement;
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB == null) {
            return "topAct is null";
        }
        if (activityB.isDestroyed()) {
            return "topAct?.isDestroyed == true";
        }
        ti.o oVar = ti.o.f76265a;
        if (!oVar.a(activityB) || oVar.b(activityB)) {
            return "处理App在锁屏状态下被拉活";
        }
        hi.c cVar = hi.c.f64467a;
        if (cVar.a()) {
            cVar.b(false);
            return "全搜的时候热启动不展示热启动广告";
        }
        if (f42220e <= 0) {
            return "inBackgroundTime <= 0";
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - f42220e;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(hi.d.f64469a.a());
        int asInt = ((jsonObjectB == null || (jsonElement = jsonObjectB.get("hotSplashInterval")) == null) ? 1 : jsonElement.getAsInt()) * 60000;
        if (jElapsedRealtime >= asInt) {
            return "";
        }
        return "不满足最小间隔时间 -- background_time = " + jElapsedRealtime + " --- TIME_IN_THE_BACKGROUND = " + asInt;
    }

    private final void C() {
        String strA = hi.d.f64469a.a();
        ii.b bVar = ii.b.f65248a;
        if (bVar.a(strA)) {
            String strB = B();
            if (TextUtils.isEmpty(strB)) {
                if (f42222g != null) {
                    ii.b.d(bVar, strA, false, 2, null);
                    return;
                } else {
                    kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new HotSplashManager$loadHotSplashAd$1(null), 3, null);
                    return;
                }
            }
            oi.a.f71022a.n("ad_int", getClassTag() + " --> loadHotSplashAd() --> msg = " + strB, 6, false);
            ii.b.d(bVar, strA, false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E() {
        f42219d.C();
    }

    private final void G() {
        BiddingInterstitialManager biddingInterstitialManager = f42222g;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        f42222g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = HotSplashManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void D() {
        if (hi.d.f64469a.b()) {
            oi.a.o(oi.a.f71022a, "ad_int", getClassTag() + " --> onStop() --> App进入前台", 0, false, 4, null);
            f42221f = false;
            Handler handler = f42223h;
            handler.removeCallbacksAndMessages(null);
            handler.postDelayed(new Runnable() { // from class: com.transsion.ad.strategy.j
                @Override // java.lang.Runnable
                public final void run() {
                    HotSplashManager.E();
                }
            }, 300L);
        }
    }

    public final void F() {
        hi.d dVar = hi.d.f64469a;
        if (dVar.b()) {
            oi.a.o(oi.a.f71022a, "ad_int", getClassTag() + " --> onStop() --> App进入后台", 0, false, 4, null);
            f42220e = SystemClock.elapsedRealtime();
            f42221f = true;
            f42223h.removeCallbacksAndMessages(null);
            String strA = dVar.a();
            ii.b.f65248a.h(strA);
            BiddingInterstitialManager.Companion.b(BiddingInterstitialManager.f41965w, strA, null, 2, null);
        }
    }

    @Override // di.a
    public void i(TAdErrorCode tAdErrorCode) {
        super.i(tAdErrorCode);
        ii.b.f65248a.e(hi.d.f64469a.a(), false);
        G();
    }

    @Override // di.a
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.j(biddingIntermediateMaterialBean);
        if (!ii.b.f65248a.a(hi.d.f64469a.a())) {
            G();
            return;
        }
        Activity activityB = com.blankj.utilcode.util.a.b();
        if (activityB != null) {
            AppCompatActivity appCompatActivity = activityB instanceof AppCompatActivity ? (AppCompatActivity) activityB : null;
            if (appCompatActivity != null) {
                kotlinx.coroutines.k.d(v.a(appCompatActivity), null, null, new HotSplashManager$onBiddingLoad$1$1$1(activityB, biddingIntermediateMaterialBean, null), 3, null);
            }
        }
    }

    @Override // di.a
    public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.m(biddingIntermediateMaterialBean);
        ii.b.f65248a.e(hi.d.f64469a.a(), true);
        G();
    }

    @Override // di.a
    public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.p(biddingIntermediateMaterialBean);
        ii.b.f65248a.e(hi.d.f64469a.a(), false);
        G();
    }
}
