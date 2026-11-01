package com.transsion.shorttv.ui.widget;

import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.view.View;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f53563f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f53564a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f53565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f53566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f53567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f53568e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public interface b {
        qs.d a();

        String b();

        boolean c();

        void d();
    }

    public c(View bubbleView, b conditionProvider) {
        Intrinsics.h(bubbleView, "bubbleView");
        Intrinsics.h(conditionProvider, "conditionProvider");
        this.f53564a = bubbleView;
        this.f53565b = conditionProvider;
        this.f53566c = new Handler(Looper.getMainLooper());
        this.f53567d = new Runnable() { // from class: com.transsion.shorttv.ui.widget.a
            @Override // java.lang.Runnable
            public final void run() {
                c.k(this.f53559a);
            }
        };
        this.f53568e = new Runnable() { // from class: com.transsion.shorttv.ui.widget.b
            @Override // java.lang.Runnable
            public final void run() {
                c.g(this.f53561a);
            }
        };
    }

    private final long e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "DownloadGuideBubble", "getAvailableStorageBytes error: " + e11.getMessage(), false, 4, null);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(c cVar) {
        cVar.f();
    }

    private final void j() {
        this.f53565b.d();
        lg.a.C0828a.f(lg.a.f68839a, "DownloadGuideBubble", "showBubble: UI restored, showing bubble", false, 4, null);
        yr.b.e(this.f53564a);
        this.f53566c.removeCallbacks(this.f53568e);
        this.f53566c.postDelayed(this.f53568e, 6000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(c cVar) {
        cVar.l();
    }

    private final void l() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "DownloadGuideBubble", "tryShowBubble: checking conditions...", false, 4, null);
        if (!this.f53565b.c()) {
            lg.a.C0828a.f(c0828a, "DownloadGuideBubble", "tryShowBubble: SKIP - not buffering", false, 4, null);
            return;
        }
        com.transsion.shorttv.utils.h hVar = com.transsion.shorttv.utils.h.f53653a;
        if (!hVar.c()) {
            lg.a.C0828a.f(c0828a, "DownloadGuideBubble", "tryShowBubble: SKIP - fatigue control (shown within 3 days)", false, 4, null);
            return;
        }
        long jE = e();
        if (jE < 524288000) {
            long j11 = 1024;
            lg.a.C0828a.f(c0828a, "DownloadGuideBubble", "tryShowBubble: SKIP - storage insufficient (" + ((jE / j11) / j11) + "MB < 500MB)", false, 4, null);
            return;
        }
        String strB = this.f53565b.b();
        qs.d dVarA = this.f53565b.a();
        if ((dVarA != null ? dVarA.g(strB) : null) == null) {
            lg.a.C0828a.f(c0828a, "DownloadGuideBubble", "tryShowBubble: ALL conditions met, showing bubble!", false, 4, null);
            hVar.f();
            j();
        } else {
            lg.a.C0828a.f(c0828a, "DownloadGuideBubble", "tryShowBubble: SKIP - video already in download list (resourceId=" + strB + ")", false, 4, null);
        }
    }

    public final void c() {
        this.f53566c.removeCallbacksAndMessages(null);
        lg.a.C0828a.f(lg.a.f68839a, "DownloadGuideBubble", "destroy: all callbacks cleared", false, 4, null);
    }

    public final void d() {
        this.f53566c.removeCallbacks(this.f53567d);
        f();
        lg.a.C0828a.f(lg.a.f68839a, "DownloadGuideBubble", "dismiss: timer cancelled + bubble hidden", false, 4, null);
    }

    public final void f() {
        this.f53566c.removeCallbacks(this.f53568e);
        if (this.f53564a.getVisibility() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, "DownloadGuideBubble", "hide: bubble hidden", false, 4, null);
        }
        yr.b.b(this.f53564a);
    }

    public final void h() {
        this.f53566c.removeCallbacks(this.f53567d);
        lg.a.C0828a.f(lg.a.f68839a, "DownloadGuideBubble", "onBufferingEnd: timer cancelled", false, 4, null);
    }

    public final void i() {
        this.f53566c.removeCallbacks(this.f53567d);
        this.f53566c.postDelayed(this.f53567d, 5000L);
        lg.a.C0828a.f(lg.a.f68839a, "DownloadGuideBubble", "onBufferingStart: timer started (5000ms)", false, 4, null);
    }
}
