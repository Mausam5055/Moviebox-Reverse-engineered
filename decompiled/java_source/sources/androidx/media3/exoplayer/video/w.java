package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f13319a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f13320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f13321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Surface f13323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f13324f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f13325g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f13326h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f13327i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f13328j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f13329k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f13330l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f13331m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f13332n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f13333o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f13334p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f13335q;

    private static final class a {
        public static void a(Surface surface, float f11) {
            try {
                surface.setFrameRate(f11, f11 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e11) {
                androidx.media3.common.util.u.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e11);
            }
        }
    }

    private final class b implements DisplayManager.DisplayListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final DisplayManager f13336a;

        public b(DisplayManager displayManager) {
            this.f13336a = displayManager;
        }

        private Display a() {
            return this.f13336a.getDisplay(0);
        }

        public void b() {
            this.f13336a.registerDisplayListener(this, a1.A());
            w.this.p(a());
        }

        public void c() {
            this.f13336a.unregisterDisplayListener(this);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i11) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i11) {
            if (i11 == 0) {
                w.this.p(a());
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i11) {
        }
    }

    private static final class c implements Choreographer.FrameCallback, Handler.Callback {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final c f13338f = new c();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile long f13339a = C.TIME_UNSET;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f13340b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final HandlerThread f13341c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Choreographer f13342d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f13343e;

        private c() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f13341c = handlerThread;
            handlerThread.start();
            Handler handlerZ = a1.z(handlerThread.getLooper(), this);
            this.f13340b = handlerZ;
            handlerZ.sendEmptyMessage(1);
        }

        private void b() {
            Choreographer choreographer = this.f13342d;
            if (choreographer != null) {
                int i11 = this.f13343e + 1;
                this.f13343e = i11;
                if (i11 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f13342d = Choreographer.getInstance();
            } catch (RuntimeException e11) {
                androidx.media3.common.util.u.i("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e11);
            }
        }

        public static c d() {
            return f13338f;
        }

        private void f() {
            Choreographer choreographer = this.f13342d;
            if (choreographer != null) {
                int i11 = this.f13343e - 1;
                this.f13343e = i11;
                if (i11 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f13339a = C.TIME_UNSET;
                }
            }
        }

        public void a() {
            this.f13340b.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j11) {
            this.f13339a = j11;
            ((Choreographer) androidx.media3.common.util.a.e(this.f13342d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f13340b.sendEmptyMessage(3);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == 1) {
                c();
                return true;
            }
            if (i11 == 2) {
                b();
                return true;
            }
            if (i11 != 3) {
                return false;
            }
            f();
            return true;
        }
    }

    public w(Context context) {
        b bVarF = f(context);
        this.f13320b = bVarF;
        this.f13321c = bVarF != null ? c.d() : null;
        this.f13329k = C.TIME_UNSET;
        this.f13330l = C.TIME_UNSET;
        this.f13324f = -1.0f;
        this.f13327i = 1.0f;
        this.f13328j = 0;
    }

    private static boolean c(long j11, long j12) {
        return Math.abs(j11 - j12) <= 20000000;
    }

    private void d() {
        Surface surface;
        if (a1.f10350a < 30 || (surface = this.f13323e) == null || this.f13328j == Integer.MIN_VALUE || this.f13326h == 0.0f) {
            return;
        }
        this.f13326h = 0.0f;
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

    private b f(Context context) {
        DisplayManager displayManager;
        if (context == null || (displayManager = (DisplayManager) context.getSystemService("display")) == null) {
            return null;
        }
        return new b(displayManager);
    }

    private void n() {
        this.f13331m = 0L;
        this.f13334p = -1L;
        this.f13332n = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.f13329k = refreshRate;
            this.f13330l = (refreshRate * 80) / 100;
        } else {
            androidx.media3.common.util.u.h("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.f13329k = C.TIME_UNSET;
            this.f13330l = C.TIME_UNSET;
        }
    }

    private void q() {
        if (a1.f10350a < 30 || this.f13323e == null) {
            return;
        }
        float fB = this.f13319a.e() ? this.f13319a.b() : this.f13324f;
        float f11 = this.f13325g;
        if (fB == f11) {
            return;
        }
        if (fB != -1.0f && f11 != -1.0f) {
            if (Math.abs(fB - this.f13325g) < ((!this.f13319a.e() || this.f13319a.d() < 5000000000L) ? 1.0f : 0.02f)) {
                return;
            }
        } else if (fB == -1.0f && this.f13319a.c() < 30) {
            return;
        }
        this.f13325g = fB;
        r(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    private void r(boolean z10) {
        Surface surface;
        float f11;
        if (a1.f10350a < 30 || (surface = this.f13323e) == null || this.f13328j == Integer.MIN_VALUE) {
            return;
        }
        if (this.f13322d) {
            float f12 = this.f13325g;
            if (f12 != -1.0f) {
                f11 = f12 * this.f13327i;
            } else {
                f11 = 0.0f;
            }
        } else {
            f11 = 0.0f;
        }
        if (z10 || this.f13326h != f11) {
            this.f13326h = f11;
            a.a(surface, f11);
        }
    }

    public long b(long j11) {
        long j12;
        if (this.f13334p == -1 || !this.f13319a.e()) {
            j12 = j11;
        } else {
            long jA = this.f13335q + ((long) ((this.f13319a.a() * (this.f13331m - this.f13334p)) / this.f13327i));
            if (c(j11, jA)) {
                j12 = jA;
            } else {
                n();
                j12 = j11;
            }
        }
        this.f13332n = this.f13331m;
        this.f13333o = j12;
        c cVar = this.f13321c;
        if (cVar == null || this.f13329k == C.TIME_UNSET) {
            return j12;
        }
        long j13 = cVar.f13339a;
        return j13 == C.TIME_UNSET ? j12 : e(j12, j13, this.f13329k) - this.f13330l;
    }

    public void g(float f11) {
        this.f13324f = f11;
        this.f13319a.g();
        q();
    }

    public void h(long j11) {
        long j12 = this.f13332n;
        if (j12 != -1) {
            this.f13334p = j12;
            this.f13335q = this.f13333o;
        }
        this.f13331m++;
        this.f13319a.f(j11 * 1000);
        q();
    }

    public void i(float f11) {
        this.f13327i = f11;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f13322d = true;
        n();
        if (this.f13320b != null) {
            ((c) androidx.media3.common.util.a.e(this.f13321c)).a();
            this.f13320b.b();
        }
        r(false);
    }

    public void l() {
        this.f13322d = false;
        b bVar = this.f13320b;
        if (bVar != null) {
            bVar.c();
            ((c) androidx.media3.common.util.a.e(this.f13321c)).e();
        }
        d();
    }

    public void m(Surface surface) {
        if (this.f13323e == surface) {
            return;
        }
        d();
        this.f13323e = surface;
        r(true);
    }

    public void o(int i11) {
        if (this.f13328j == i11) {
            return;
        }
        this.f13328j = i11;
        r(true);
    }
}
