package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f8443r = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final View f8446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Runnable f8447d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8450g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8451h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f8455l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f8456m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f8457n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f8458o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f8459p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f8460q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f8444a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Interpolator f8445b = new AccelerateInterpolator();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float[] f8448e = {0.0f, 0.0f};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float[] f8449f = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float[] f8452i = {0.0f, 0.0f};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float[] f8453j = {0.0f, 0.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float[] f8454k = {Float.MAX_VALUE, Float.MAX_VALUE};

    private class ScrollAnimationRunnable implements Runnable {
        ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.f8458o) {
                if (autoScrollHelper.f8456m) {
                    autoScrollHelper.f8456m = false;
                    autoScrollHelper.f8444a.m();
                }
                a aVar = AutoScrollHelper.this.f8444a;
                if (aVar.h() || !AutoScrollHelper.this.u()) {
                    AutoScrollHelper.this.f8458o = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.f8457n) {
                    autoScrollHelper2.f8457n = false;
                    autoScrollHelper2.c();
                }
                aVar.a();
                AutoScrollHelper.this.j(aVar.b(), aVar.c());
                ViewCompat.postOnAnimation(AutoScrollHelper.this.f8446c, this);
            }
        }
    }

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8461a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f8462b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f8463c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f8464d;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f8470j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f8471k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f8465e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f8469i = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f8466f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f8467g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f8468h = 0;

        a() {
        }

        private float e(long j11) {
            long j12 = this.f8465e;
            if (j11 < j12) {
                return 0.0f;
            }
            long j13 = this.f8469i;
            if (j13 < 0 || j11 < j13) {
                return AutoScrollHelper.e((j11 - j12) / this.f8461a, 0.0f, 1.0f) * 0.5f;
            }
            float f11 = this.f8470j;
            return (1.0f - f11) + (f11 * AutoScrollHelper.e((j11 - j13) / this.f8471k, 0.0f, 1.0f));
        }

        private float g(float f11) {
            return ((-4.0f) * f11 * f11) + (f11 * 4.0f);
        }

        public void a() {
            if (this.f8466f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j11 = jCurrentAnimationTimeMillis - this.f8466f;
            this.f8466f = jCurrentAnimationTimeMillis;
            float f11 = j11 * fG;
            this.f8467g = (int) (this.f8463c * f11);
            this.f8468h = (int) (f11 * this.f8464d);
        }

        public int b() {
            return this.f8467g;
        }

        public int c() {
            return this.f8468h;
        }

        public int d() {
            float f11 = this.f8463c;
            return (int) (f11 / Math.abs(f11));
        }

        public int f() {
            float f11 = this.f8464d;
            return (int) (f11 / Math.abs(f11));
        }

        public boolean h() {
            return this.f8469i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f8469i + ((long) this.f8471k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f8471k = AutoScrollHelper.f((int) (jCurrentAnimationTimeMillis - this.f8465e), 0, this.f8462b);
            this.f8470j = e(jCurrentAnimationTimeMillis);
            this.f8469i = jCurrentAnimationTimeMillis;
        }

        public void j(int i11) {
            this.f8462b = i11;
        }

        public void k(int i11) {
            this.f8461a = i11;
        }

        public void l(float f11, float f12) {
            this.f8463c = f11;
            this.f8464d = f12;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f8465e = jCurrentAnimationTimeMillis;
            this.f8469i = -1L;
            this.f8466f = jCurrentAnimationTimeMillis;
            this.f8470j = 0.5f;
            this.f8467g = 0;
            this.f8468h = 0;
        }
    }

    public AutoScrollHelper(View view) {
        this.f8446c = view;
        float f11 = Resources.getSystem().getDisplayMetrics().density;
        float f12 = (int) ((1575.0f * f11) + 0.5f);
        o(f12, f12);
        float f13 = (int) ((f11 * 315.0f) + 0.5f);
        p(f13, f13);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(f8443r);
        r(500);
        q(500);
    }

    private float d(int i11, float f11, float f12, float f13) {
        float fH = h(this.f8448e[i11], f12, this.f8449f[i11], f11);
        if (fH == 0.0f) {
            return 0.0f;
        }
        float f14 = this.f8452i[i11];
        float f15 = this.f8453j[i11];
        float f16 = this.f8454k[i11];
        float f17 = f14 * f13;
        return fH > 0.0f ? e(fH * f17, f15, f16) : -e((-fH) * f17, f15, f16);
    }

    static float e(float f11, float f12, float f13) {
        if (f11 > f13) {
            return f13;
        }
        return f11 < f12 ? f12 : f11;
    }

    static int f(int i11, int i12, int i13) {
        if (i11 > i13) {
            return i13;
        }
        return i11 < i12 ? i12 : i11;
    }

    private float g(float f11, float f12) {
        if (f12 == 0.0f) {
            return 0.0f;
        }
        int i11 = this.f8450g;
        if (i11 == 0 || i11 == 1) {
            if (f11 < f12) {
                if (f11 >= 0.0f) {
                    return 1.0f - (f11 / f12);
                }
                if (this.f8458o && i11 == 1) {
                    return 1.0f;
                }
            }
        } else if (i11 == 2 && f11 < 0.0f) {
            return f11 / (-f12);
        }
        return 0.0f;
    }

    private float h(float f11, float f12, float f13, float f14) {
        float interpolation;
        float fE = e(f11 * f12, 0.0f, f13);
        float fG = g(f12 - f14, fE) - g(f14, fE);
        if (fG < 0.0f) {
            interpolation = -this.f8445b.getInterpolation(-fG);
        } else {
            if (fG <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f8445b.getInterpolation(fG);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    private void i() {
        if (this.f8456m) {
            this.f8458o = false;
        } else {
            this.f8444a.i();
        }
    }

    private void v() {
        int i11;
        if (this.f8447d == null) {
            this.f8447d = new ScrollAnimationRunnable();
        }
        this.f8458o = true;
        this.f8456m = true;
        if (this.f8455l || (i11 = this.f8451h) <= 0) {
            this.f8447d.run();
        } else {
            ViewCompat.postOnAnimationDelayed(this.f8446c, this.f8447d, i11);
        }
        this.f8455l = true;
    }

    public abstract boolean a(int i11);

    public abstract boolean b(int i11);

    void c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f8446c.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public abstract void j(int i11, int i12);

    public AutoScrollHelper k(int i11) {
        this.f8451h = i11;
        return this;
    }

    public AutoScrollHelper l(int i11) {
        this.f8450g = i11;
        return this;
    }

    public AutoScrollHelper m(boolean z10) {
        if (this.f8459p && !z10) {
            i();
        }
        this.f8459p = z10;
        return this;
    }

    public AutoScrollHelper n(float f11, float f12) {
        float[] fArr = this.f8449f;
        fArr[0] = f11;
        fArr[1] = f12;
        return this;
    }

    public AutoScrollHelper o(float f11, float f12) {
        float[] fArr = this.f8454k;
        fArr[0] = f11 / 1000.0f;
        fArr[1] = f12 / 1000.0f;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.f8459p) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                i();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    i();
                }
            }
            return this.f8460q && this.f8458o;
        }
        this.f8457n = true;
        this.f8455l = false;
        this.f8444a.l(d(0, motionEvent.getX(), view.getWidth(), this.f8446c.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.f8446c.getHeight()));
        if (!this.f8458o && u()) {
            v();
        }
        if (this.f8460q) {
            return false;
        }
    }

    public AutoScrollHelper p(float f11, float f12) {
        float[] fArr = this.f8453j;
        fArr[0] = f11 / 1000.0f;
        fArr[1] = f12 / 1000.0f;
        return this;
    }

    public AutoScrollHelper q(int i11) {
        this.f8444a.j(i11);
        return this;
    }

    public AutoScrollHelper r(int i11) {
        this.f8444a.k(i11);
        return this;
    }

    public AutoScrollHelper s(float f11, float f12) {
        float[] fArr = this.f8448e;
        fArr[0] = f11;
        fArr[1] = f12;
        return this;
    }

    public AutoScrollHelper t(float f11, float f12) {
        float[] fArr = this.f8452i;
        fArr[0] = f11 / 1000.0f;
        fArr[1] = f12 / 1000.0f;
        return this;
    }

    boolean u() {
        a aVar = this.f8444a;
        int iF = aVar.f();
        int iD = aVar.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }
}
