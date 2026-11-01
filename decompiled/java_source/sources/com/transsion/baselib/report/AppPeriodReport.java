package com.transsion.baselib.report;

import android.os.SystemClock;
import android.util.Log;
import androidx.p009lifecycle.g0;
import androidx.p009lifecycle.u;
import com.transsion.mb.config.manager.ConfigBean;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AppPeriodReport implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppPeriodReport f43332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Timer f43333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static TimerTask f43334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f43335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f43336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f43337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Long f43338g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f43339h;

    static {
        AppPeriodReport appPeriodReport = new AppPeriodReport();
        f43332a = appPeriodReport;
        boolean zC = appPeriodReport.c("app_period_report_debug", 3);
        f43335d = zC;
        f43336e = zC ? 5000L : 300000L;
        f43337f = true;
        f43339h = zC ? 300L : 3000L;
    }

    private AppPeriodReport() {
    }

    private final boolean c(String str, int i11) {
        try {
            return Log.isLoggable(str, i11);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    public static /* synthetic */ void e(AppPeriodReport appPeriodReport, Long l11, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            l11 = null;
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        appPeriodReport.d(l11, z10);
    }

    public final void b() {
        String value;
        Long lX;
        ConfigBean configBeanC = sm.f.f75407c.a().c("key_app_period_report", false);
        long jLongValue = (configBeanC == null || (value = configBeanC.getValue()) == null || (lX = StringsKt.x(value)) == null) ? f43336e : lX.longValue();
        if (jLongValue == 0) {
            jLongValue = f43336e;
        }
        f43336e = jLongValue;
        if (jLongValue > 0) {
            f(true);
            g0.f9592i.a().getLifecycle().a(f43332a);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "AppPeriodReport", "event close period " + f43336e + " ", false, 4, null);
        g0.f9592i.a().getLifecycle().d(f43332a);
    }

    public final void d(Long l11, boolean z10) {
        Long lValueOf;
        String value;
        String value2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j11 = f43336e;
        if (l11 != null && l11.longValue() == j11) {
            lValueOf = Long.valueOf(f43336e);
        } else {
            Long l12 = f43338g;
            lValueOf = l12 != null ? Long.valueOf(jElapsedRealtime - l12.longValue()) : null;
        }
        f43338g = Long.valueOf(jElapsedRealtime);
        if (lValueOf == null || lValueOf.longValue() <= f43339h) {
            return;
        }
        String str = z10 ? "app_background" : "app_foreground";
        String str2 = "0";
        if (z10) {
            String str3 = new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date());
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            String string = bVar.b().getString("k_last_bg_alive_date", "");
            if (!Intrinsics.c(str3, string != null ? string : "")) {
                bVar.b().putString("k_last_bg_alive_date", str3);
                hj.i iVar = hj.i.f64505a;
                ConfigBean configBeanC = sm.f.f75407c.a().c("keyAliveOff", true);
                if (configBeanC == null || (value2 = configBeanC.getValue()) == null) {
                    value2 = "0";
                }
                iVar.s("app_bg_alive", "app_perf", MapsKt.j(TuplesKt.a("alive_off", value2)));
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "AppPeriodReport", "report event " + str + " " + lValueOf, false, 4, null);
        HashMap map = new HashMap();
        ConfigBean configBeanC2 = sm.f.f75407c.a().c("keyAliveOff", true);
        if (configBeanC2 != null && (value = configBeanC2.getValue()) != null) {
            str2 = value;
        }
        map.put("alive_off", str2);
        hj.i.f64505a.H("", str, lValueOf.longValue(), map);
    }

    public final void f(final boolean z10) {
        if (f43336e <= 0) {
            lg.a.C0828a.f(lg.a.f68839a, "AppPeriodReport", "close period " + f43336e + " ", false, 4, null);
            Timer timer = f43333b;
            if (timer != null) {
                timer.purge();
            }
            Timer timer2 = f43333b;
            if (timer2 != null) {
                timer2.cancel();
            }
            TimerTask timerTask = f43334c;
            if (timerTask != null) {
                timerTask.cancel();
            }
            g0.f9592i.a().getLifecycle().d(f43332a);
            return;
        }
        boolean z11 = f43337f;
        Unit unit = null;
        if (z10 != z11) {
            e(this, null, z11, 1, null);
        }
        f43337f = z10;
        TimerTask timerTask2 = f43334c;
        if (timerTask2 != null) {
            timerTask2.cancel();
        }
        f43334c = null;
        Timer timer3 = f43333b;
        if (timer3 != null) {
            timer3.cancel();
        }
        Timer timer4 = f43333b;
        if (timer4 != null) {
            timer4.purge();
        }
        f43333b = null;
        f43333b = new Timer();
        f43334c = new TimerTask() { // from class: com.transsion.baselib.report.AppPeriodReport$startTimer$$inlined$timerTask$1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                lg.a.C0828a.f(lg.a.f68839a, "AppPeriodReport", "period event " + z10 + " period " + AppPeriodReport.f43336e + " ", false, 4, null);
                AppPeriodReport.f43332a.d(Long.valueOf(AppPeriodReport.f43336e), z10);
            }
        };
        try {
            Result.Companion companion = Result.INSTANCE;
            Timer timer5 = f43333b;
            if (timer5 != null) {
                TimerTask timerTask3 = f43334c;
                long j11 = f43336e;
                timer5.schedule(timerTask3, j11, j11);
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onResume(u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onStart(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.e(this, owner);
        lg.a.C0828a.f(lg.a.f68839a, "AppPeriodReport", "onStart " + f43336e + " ", false, 4, null);
        if (f43338g == null) {
            f43338g = Long.valueOf(SystemClock.elapsedRealtime());
        }
        f(false);
    }

    @Override // androidx.p009lifecycle.f
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.f(this, owner);
        lg.a.C0828a.f(lg.a.f68839a, "AppPeriodReport", "onStop " + f43336e + " ", false, 4, null);
        f(true);
    }
}
