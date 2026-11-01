package v4;

import android.view.Choreographer;

/* JADX INFO: loaded from: classes2.dex */
public class i extends c implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.airbnb.lottie.h f77040l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f77032d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f77033e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f77034f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f77035g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f77036h = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f77037i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f77038j = -2.1474836E9f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f77039k = 2.1474836E9f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f77041m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f77042n = false;

    private void G() {
        if (this.f77040l == null) {
            return;
        }
        float f11 = this.f77036h;
        if (f11 < this.f77038j || f11 > this.f77039k) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f77038j), Float.valueOf(this.f77039k), Float.valueOf(this.f77036h)));
        }
    }

    private float n() {
        com.airbnb.lottie.h hVar = this.f77040l;
        if (hVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / hVar.i()) / Math.abs(this.f77032d);
    }

    private boolean r() {
        return q() < 0.0f;
    }

    public void A(float f11) {
        if (this.f77035g == f11) {
            return;
        }
        float fB = k.b(f11, p(), o());
        this.f77035g = fB;
        if (this.f77042n) {
            fB = (float) Math.floor(fB);
        }
        this.f77036h = fB;
        this.f77034f = 0L;
        i();
    }

    public void B(float f11) {
        C(this.f77038j, f11);
    }

    public void C(float f11, float f12) {
        if (f11 > f12) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f11), Float.valueOf(f12)));
        }
        com.airbnb.lottie.h hVar = this.f77040l;
        float fP = hVar == null ? -3.4028235E38f : hVar.p();
        com.airbnb.lottie.h hVar2 = this.f77040l;
        float f13 = hVar2 == null ? Float.MAX_VALUE : hVar2.f();
        float fB = k.b(f11, fP, f13);
        float fB2 = k.b(f12, fP, f13);
        if (fB == this.f77038j && fB2 == this.f77039k) {
            return;
        }
        this.f77038j = fB;
        this.f77039k = fB2;
        A((int) k.b(this.f77036h, fB, fB2));
    }

    public void D(int i11) {
        C(i11, (int) this.f77039k);
    }

    public void E(float f11) {
        this.f77032d = f11;
    }

    public void F(boolean z10) {
        this.f77042n = z10;
    }

    @Override // v4.c
    void a() {
        super.a();
        b(r());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        a();
        v();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j11) {
        u();
        if (this.f77040l == null || !isRunning()) {
            return;
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("LottieValueAnimator#doFrame");
        }
        long j12 = this.f77034f;
        float fN = (j12 != 0 ? j11 - j12 : 0L) / n();
        float f11 = this.f77035g;
        if (r()) {
            fN = -fN;
        }
        float f12 = f11 + fN;
        boolean zD = k.d(f12, p(), o());
        float f13 = this.f77035g;
        float fB = k.b(f12, p(), o());
        this.f77035g = fB;
        if (this.f77042n) {
            fB = (float) Math.floor(fB);
        }
        this.f77036h = fB;
        this.f77034f = j11;
        if (!this.f77042n || this.f77035g != f13) {
            i();
        }
        if (!zD) {
            if (getRepeatCount() == -1 || this.f77037i < getRepeatCount()) {
                e();
                this.f77037i++;
                if (getRepeatMode() == 2) {
                    this.f77033e = !this.f77033e;
                    y();
                } else {
                    float fO = r() ? o() : p();
                    this.f77035g = fO;
                    this.f77036h = fO;
                }
                this.f77034f = j11;
            } else {
                float fP = this.f77032d < 0.0f ? p() : o();
                this.f77035g = fP;
                this.f77036h = fP;
                v();
                b(r());
            }
        }
        G();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("LottieValueAnimator#doFrame");
        }
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float fP;
        float fO;
        float fP2;
        if (this.f77040l == null) {
            return 0.0f;
        }
        if (r()) {
            fP = o() - this.f77036h;
            fO = o();
            fP2 = p();
        } else {
            fP = this.f77036h - p();
            fO = o();
            fP2 = p();
        }
        return fP / (fO - fP2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(l());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.airbnb.lottie.h hVar = this.f77040l;
        if (hVar == null) {
            return 0L;
        }
        return (long) hVar.d();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f77041m;
    }

    public void j() {
        this.f77040l = null;
        this.f77038j = -2.1474836E9f;
        this.f77039k = 2.1474836E9f;
    }

    public void k() {
        v();
        b(r());
    }

    public float l() {
        com.airbnb.lottie.h hVar = this.f77040l;
        if (hVar == null) {
            return 0.0f;
        }
        return (this.f77036h - hVar.p()) / (this.f77040l.f() - this.f77040l.p());
    }

    public float m() {
        return this.f77036h;
    }

    public float o() {
        com.airbnb.lottie.h hVar = this.f77040l;
        if (hVar == null) {
            return 0.0f;
        }
        float f11 = this.f77039k;
        return f11 == 2.1474836E9f ? hVar.f() : f11;
    }

    public float p() {
        com.airbnb.lottie.h hVar = this.f77040l;
        if (hVar == null) {
            return 0.0f;
        }
        float f11 = this.f77038j;
        return f11 == -2.1474836E9f ? hVar.p() : f11;
    }

    public float q() {
        return this.f77032d;
    }

    public void s() {
        v();
        c();
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i11) {
        super.setRepeatMode(i11);
        if (i11 == 2 || !this.f77033e) {
            return;
        }
        this.f77033e = false;
        y();
    }

    public void t() {
        this.f77041m = true;
        g(r());
        A((int) (r() ? o() : p()));
        this.f77034f = 0L;
        this.f77037i = 0;
        u();
    }

    protected void u() {
        if (isRunning()) {
            w(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    protected void v() {
        w(true);
    }

    protected void w(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f77041m = false;
        }
    }

    public void x() {
        this.f77041m = true;
        u();
        this.f77034f = 0L;
        if (r() && m() == p()) {
            A(o());
        } else if (!r() && m() == o()) {
            A(p());
        }
        f();
    }

    public void y() {
        E(-q());
    }

    public void z(com.airbnb.lottie.h hVar) {
        boolean z10 = this.f77040l == null;
        this.f77040l = hVar;
        if (z10) {
            C(Math.max(this.f77038j, hVar.p()), Math.min(this.f77039k, hVar.f()));
        } else {
            C((int) hVar.p(), (int) hVar.f());
        }
        float f11 = this.f77036h;
        this.f77036h = 0.0f;
        this.f77035g = 0.0f;
        A((int) f11);
        i();
    }
}
