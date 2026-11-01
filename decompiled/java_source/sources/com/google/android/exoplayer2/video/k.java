package com.google.android.exoplayer2.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes3.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.exoplayer2.video.e f27871a = new com.google.android.exoplayer2.video.e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f27872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f27873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f27874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Surface f27875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f27876f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f27877g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f27878h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f27879i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f27880j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f27881k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f27882l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f27883m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f27884n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f27885o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f27886p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f27887q;

    private static final class a {
        public static void a(Surface surface, float f11) {
            try {
                surface.setFrameRate(f11, f11 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e11) {
                com.google.android.exoplayer2.util.s.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface b {

        public interface a {
            void a(Display display);
        }

        void a(a aVar);

        void unregister();
    }

    private static final class c implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WindowManager f27888a;

        private c(WindowManager windowManager) {
            this.f27888a = windowManager;
        }

        public static b b(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.video.k.b
        public void a(b.a aVar) {
            aVar.a(this.f27888a.getDefaultDisplay());
        }

        @Override // com.google.android.exoplayer2.video.k.b
        public void unregister() {
        }
    }

    private static final class d implements b, DisplayManager.DisplayListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DisplayManager f27889a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private b.a f27890b;

        private d(DisplayManager displayManager) {
            this.f27889a = displayManager;
        }

        private Display b() {
            return this.f27889a.getDisplay(0);
        }

        public static b c(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.video.k.b
        public void a(b.a aVar) {
            this.f27890b = aVar;
            this.f27889a.registerDisplayListener(this, p0.w());
            aVar.a(b());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i11) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i11) {
            b.a aVar = this.f27890b;
            if (aVar == null || i11 != 0) {
                return;
            }
            aVar.a(b());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i11) {
        }

        @Override // com.google.android.exoplayer2.video.k.b
        public void unregister() {
            this.f27889a.unregisterDisplayListener(this);
            this.f27890b = null;
        }
    }

    private static final class e implements Choreographer.FrameCallback, Handler.Callback {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final e f27891f = new e();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile long f27892a = C.TIME_UNSET;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f27893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final HandlerThread f27894c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Choreographer f27895d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f27896e;

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f27894c = handlerThread;
            handlerThread.start();
            Handler handlerV = p0.v(handlerThread.getLooper(), this);
            this.f27893b = handlerV;
            handlerV.sendEmptyMessage(0);
        }

        private void b() {
            Choreographer choreographer = this.f27895d;
            if (choreographer != null) {
                int i11 = this.f27896e + 1;
                this.f27896e = i11;
                if (i11 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f27895d = Choreographer.getInstance();
            } catch (RuntimeException e11) {
                com.google.android.exoplayer2.util.s.j("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e11);
            }
        }

        public static e d() {
            return f27891f;
        }

        private void f() {
            Choreographer choreographer = this.f27895d;
            if (choreographer != null) {
                int i11 = this.f27896e - 1;
                this.f27896e = i11;
                if (i11 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f27892a = C.TIME_UNSET;
                }
            }
        }

        public void a() {
            this.f27893b.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j11) {
            this.f27892a = j11;
            ((Choreographer) com.google.android.exoplayer2.util.a.e(this.f27895d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f27893b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == 0) {
                c();
                return true;
            }
            if (i11 == 1) {
                b();
                return true;
            }
            if (i11 != 2) {
                return false;
            }
            f();
            return true;
        }
    }

    public k(Context context) {
        b bVarF = f(context);
        this.f27872b = bVarF;
        this.f27873c = bVarF != null ? e.d() : null;
        this.f27881k = C.TIME_UNSET;
        this.f27882l = C.TIME_UNSET;
        this.f27876f = -1.0f;
        this.f27879i = 1.0f;
        this.f27880j = 0;
    }

    private static boolean c(long j11, long j12) {
        return Math.abs(j11 - j12) <= 20000000;
    }

    private void d() {
        Surface surface;
        if (p0.f27626a < 30 || (surface = this.f27875e) == null || this.f27880j == Integer.MIN_VALUE || this.f27878h == 0.0f) {
            return;
        }
        this.f27878h = 0.0f;
        a.a(surface, 0.0f);
    }

    private static long e(long j11, long j12, long j13) {
        long j14;
        long j15 = j12 + (((j11 - j12) / j13) * j13);
        if (j11 <= j15) {
            j14 = j15 - j13;
        } else {
            j15 = j13 + j15;
            j14 = j15;
        }
        return j15 - j11 < j11 - j14 ? j15 : j14;
    }

    private static b f(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        b bVarC = p0.f27626a >= 17 ? d.c(applicationContext) : null;
        return bVarC == null ? c.b(applicationContext) : bVarC;
    }

    private void n() {
        this.f27883m = 0L;
        this.f27886p = -1L;
        this.f27884n = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.f27881k = refreshRate;
            this.f27882l = (refreshRate * 80) / 100;
        } else {
            com.google.android.exoplayer2.util.s.i("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.f27881k = C.TIME_UNSET;
            this.f27882l = C.TIME_UNSET;
        }
    }

    private void q() {
        if (p0.f27626a < 30 || this.f27875e == null) {
            return;
        }
        float fB = this.f27871a.e() ? this.f27871a.b() : this.f27876f;
        float f11 = this.f27877g;
        if (fB == f11) {
            return;
        }
        if (fB != -1.0f && f11 != -1.0f) {
            if (Math.abs(fB - this.f27877g) < ((!this.f27871a.e() || this.f27871a.d() < 5000000000L) ? 1.0f : 0.02f)) {
                return;
            }
        } else if (fB == -1.0f && this.f27871a.c() < 30) {
            return;
        }
        this.f27877g = fB;
        r(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    private void r(boolean z10) {
        Surface surface;
        float f11;
        if (p0.f27626a < 30 || (surface = this.f27875e) == null || this.f27880j == Integer.MIN_VALUE) {
            return;
        }
        if (this.f27874d) {
            float f12 = this.f27877g;
            if (f12 != -1.0f) {
                f11 = f12 * this.f27879i;
            } else {
                f11 = 0.0f;
            }
        } else {
            f11 = 0.0f;
        }
        if (z10 || this.f27878h != f11) {
            this.f27878h = f11;
            a.a(surface, f11);
        }
    }

    public long b(long j11) {
        long j12;
        if (this.f27886p == -1 || !this.f27871a.e()) {
            j12 = j11;
        } else {
            long jA = this.f27887q + ((long) ((this.f27871a.a() * (this.f27883m - this.f27886p)) / this.f27879i));
            if (c(j11, jA)) {
                j12 = jA;
            } else {
                n();
                j12 = j11;
            }
        }
        this.f27884n = this.f27883m;
        this.f27885o = j12;
        e eVar = this.f27873c;
        if (eVar == null || this.f27881k == C.TIME_UNSET) {
            return j12;
        }
        long j13 = eVar.f27892a;
        return j13 == C.TIME_UNSET ? j12 : e(j12, j13, this.f27881k) - this.f27882l;
    }

    public void g(float f11) {
        this.f27876f = f11;
        this.f27871a.g();
        q();
    }

    public void h(long j11) {
        long j12 = this.f27884n;
        if (j12 != -1) {
            this.f27886p = j12;
            this.f27887q = this.f27885o;
        }
        this.f27883m++;
        this.f27871a.f(j11 * 1000);
        q();
    }

    public void i(float f11) {
        this.f27879i = f11;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f27874d = true;
        n();
        if (this.f27872b != null) {
            ((e) com.google.android.exoplayer2.util.a.e(this.f27873c)).a();
            this.f27872b.a(new b.a() { // from class: com.google.android.exoplayer2.video.j
                @Override // com.google.android.exoplayer2.video.k.b.a
                public final void a(Display display) {
                    this.f27870a.p(display);
                }
            });
        }
        r(false);
    }

    public void l() {
        this.f27874d = false;
        b bVar = this.f27872b;
        if (bVar != null) {
            bVar.unregister();
            ((e) com.google.android.exoplayer2.util.a.e(this.f27873c)).e();
        }
        d();
    }

    public void m(Surface surface) {
        if (surface instanceof PlaceholderSurface) {
            surface = null;
        }
        if (this.f27875e == surface) {
            return;
        }
        d();
        this.f27875e = surface;
        r(true);
    }

    public void o(int i11) {
        if (this.f27880j == i11) {
            return;
        }
        this.f27880j = i11;
        r(true);
    }
}
