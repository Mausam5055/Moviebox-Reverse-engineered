package com.transsion.startup.pref.consume;

import android.R;
import android.app.Activity;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import hj.i;
import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f54530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f54531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f54532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f54533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f54534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f54535g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f54537i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f54538j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f54539k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f54540l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f54541m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f54529a = new c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f54536h = true;

    public static final class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f54542a;

        a(View view) {
            this.f54542a = view;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver;
            View view = this.f54542a;
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            c cVar = c.f54529a;
            c.f54534f = SystemClock.elapsedRealtime();
            long j11 = c.f54534f - c.f54530b;
            long jH = c.f54529a.h();
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.l(c0828a, "AppStartup", "🚀 [Phase 3] MainActivity TTID:", false, 4, null);
            lg.a.C0828a.l(c0828a, "AppStartup", "   ├─ 总耗时 (含广告等待): " + j11 + "ms", false, 4, null);
            lg.a.C0828a.l(c0828a, "AppStartup", "   ├─ 广告等待时长: " + jH + "ms", false, 4, null);
            lg.a.C0828a.l(c0828a, "AppStartup", "   └─ 真实启动时间 (TTID): " + (j11 - jH) + "ms", false, 4, null);
            c.f54538j = true;
            return true;
        }
    }

    public static final class b implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f54543a;

        b(View view) {
            this.f54543a = view;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ViewTreeObserver viewTreeObserver;
            View view = this.f54543a;
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            c cVar = c.f54529a;
            c.f54531c = SystemClock.elapsedRealtime();
            long j11 = c.f54531c - c.f54530b;
            lg.a.C0828a.l(lg.a.f68839a, "AppStartup", "🚀 [Phase 1] Splash TTID: " + j11 + "ms (进程启动 → Splash首帧)", false, 4, null);
            c.f54537i = true;
            return true;
        }
    }

    private c() {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001f A[PHI: r10
  0x001f: PHI (r10v8 long) = (r10v3 long), (r10v10 long) binds: [B:14:0x002a, B:9:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:11:0x0022  */
    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    private final void n() {
        long j11;
        long j12;
        long j13 = f54531c;
        long j14 = 0;
        long j15 = j13 > 0 ? j13 - f54530b : 0L;
        long jH = h();
        long j16 = f54534f;
        if (j16 > 0) {
            j12 = f54533e;
            if (j12 > 0) {
                j11 = j16 - j12;
            } else {
                if (j16 > 0) {
                    j12 = f54531c;
                    if (j12 > 0) {
                        j11 = j16 - j12;
                    }
                }
                j11 = 0;
            }
        } else {
            if (j16 > 0) {
                j12 = f54531c;
                if (j12 > 0) {
                    j11 = j16 - j12;
                }
            }
            j11 = 0;
        }
        long j17 = f54535g;
        if (j17 > 0 && j16 > 0) {
            j14 = j17 - j16;
        }
        long j18 = j17 - f54530b;
        long j19 = j18 - jH;
        String strValueOf = f54541m ? String.valueOf(jH) : "无广告";
        lg.a.C0828a c0828a = lg.a.f68839a;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j15)}, 1));
        Intrinsics.g(str, "format(...)");
        String str2 = String.format("%6s", Arrays.copyOf(new Object[]{strValueOf}, 1));
        Intrinsics.g(str2, "format(...)");
        String str3 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j11)}, 1));
        Intrinsics.g(str3, "format(...)");
        String str4 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j14)}, 1));
        Intrinsics.g(str4, "format(...)");
        String str5 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j18)}, 1));
        Intrinsics.g(str5, "format(...)");
        String str6 = String.format("%6d", Arrays.copyOf(new Object[]{Long.valueOf(j19)}, 1));
        Intrinsics.g(str6, "format(...)");
        lg.a.C0828a.l(c0828a, "AppStartup", StringsKt.p("\n            |\n            |╔══════════════════════════════════════════════════════════════╗\n            |║                    🚀 启动性能分析报告                        ║\n            |╠══════════════════════════════════════════════════════════════╣\n            |║ 阶段分解：                                                    ║\n            |║   [1] 进程启动 → Splash首帧:        " + str + "ms              ║\n            |║   [2] 广告等待时长:                 " + str2 + "ms  (已排除)    ║\n            |║   [3] 广告结束 → MainActivity首帧:  " + str3 + "ms              ║\n            |║   [4] MainActivity首帧 → 数据加载:  " + str4 + "ms              ║\n            |╠══════════════════════════════════════════════════════════════╣\n            |║ 汇总：                                                        ║\n            |║   总耗时 (含广告等待):             " + str5 + "ms              ║\n            |║   真实启动时间 (TTFD):             " + str6 + "ms              ║\n            |╚══════════════════════════════════════════════════════════════╝\n        ", null, 1, null), false, 4, null);
    }

    private final void p() {
        f54531c = 0L;
        f54532d = 0L;
        f54533e = 0L;
        f54534f = 0L;
        f54535g = 0L;
        f54536h = true;
        f54537i = false;
        f54538j = false;
        f54539k = false;
        f54540l = false;
        f54541m = false;
    }

    public final long h() {
        boolean z10 = f54541m;
        if (z10) {
            long j11 = f54533e;
            long j12 = f54532d;
            if (j11 > j12) {
                return j11 - j12;
            }
        }
        if (z10 && f54540l) {
            return SystemClock.elapsedRealtime() - f54532d;
        }
        return 0L;
    }

    public final com.transsion.startup.pref.consume.b i() {
        long jH = h();
        long j11 = f54535g;
        long j12 = j11 > 0 ? j11 - f54530b : 0L;
        long j13 = f54531c;
        long j14 = j13 > 0 ? j13 - f54530b : 0L;
        long j15 = f54534f;
        return new com.transsion.startup.pref.consume.b(j14, jH, j15 > 0 ? (j15 - f54530b) - jH : 0L, j12, j12 - jH, f54541m);
    }

    public final void j() {
        f54530b = Build.VERSION.SDK_INT >= 24 ? Process.getStartElapsedRealtime() : SystemClock.elapsedRealtime();
        p();
        lg.a.C0828a.l(lg.a.f68839a, "AppStartup", "📍 [Phase 0] App Process Started at: " + f54530b, false, 4, null);
    }

    public final void k(Activity activity) {
        View viewFindViewById;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(activity, "activity");
        if (!f54536h || f54538j || (viewFindViewById = activity.findViewById(R.id.content)) == null || (viewTreeObserver = viewFindViewById.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnPreDrawListener(new a(viewFindViewById));
    }

    public final void l(Activity activity) {
        View viewFindViewById;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(activity, "activity");
        if (!f54536h || f54537i || (viewFindViewById = activity.findViewById(R.id.content)) == null || (viewTreeObserver = viewFindViewById.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnPreDrawListener(new b(viewFindViewById));
    }

    public final void m() {
        if (!f54536h || f54540l) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        f54532d = jElapsedRealtime;
        f54540l = true;
        f54541m = true;
        long j11 = jElapsedRealtime - f54530b;
        lg.a.C0828a.l(lg.a.f68839a, "AppStartup", "⏸️ [Phase 2] Paused for Ad at: " + f54532d + " (已运行 " + j11 + "ms)", false, 4, null);
    }

    public final void o(Activity activity) {
        if (!f54536h || f54539k) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        f54535g = jElapsedRealtime;
        long j11 = jElapsedRealtime - f54530b;
        long jH = h();
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.l(c0828a, "AppStartup", "✅ [Phase 4] TTFD (Full Display):", false, 4, null);
        lg.a.C0828a.l(c0828a, "AppStartup", "   ├─ 总耗时 (含广告等待): " + j11 + "ms", false, 4, null);
        lg.a.C0828a.l(c0828a, "AppStartup", "   ├─ 广告等待时长: " + jH + "ms", false, 4, null);
        lg.a.C0828a.l(c0828a, "AppStartup", "   └─ 真实启动时间 (TTFD): " + (j11 - jH) + "ms", false, 4, null);
        n();
        com.transsion.startup.pref.consume.b bVarI = i();
        i.f64505a.s("app_startup_stat_ab_new", "app_perf", MapsKt.l(TuplesKt.a("splash_ttid", String.valueOf(bVarI.e())), TuplesKt.a("ad_wait_duration", String.valueOf(bVarI.a())), TuplesKt.a("main_activity_ttid", String.valueOf(bVarI.c())), TuplesKt.a("total_ttfd", String.valueOf(bVarI.f())), TuplesKt.a("real_ttfd", String.valueOf(bVarI.d())), TuplesKt.a("has_ad", String.valueOf(bVarI.b()))));
        f54539k = true;
        f54536h = false;
    }

    public final void q() {
        if (f54536h && f54540l) {
            f54533e = SystemClock.elapsedRealtime();
            f54540l = false;
            long jH = h();
            lg.a.C0828a.l(lg.a.f68839a, "AppStartup", "▶️ [Phase 2] Resumed after Ad, Wait Duration: " + jH + "ms (广告等待时间，已从统计中排除)", false, 4, null);
        }
    }

    public final void r() {
        if (f54536h) {
            if (f54540l) {
                lg.a.C0828a.l(lg.a.f68839a, "AppStartup", "⏭️ [Phase 2] Ad Skipped - No ad shown, resuming timer", false, 4, null);
            }
            f54540l = false;
            f54541m = false;
            f54532d = 0L;
            f54533e = 0L;
        }
    }
}
