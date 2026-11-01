package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
class FastScroller extends RecyclerView.l implements RecyclerView.q {
    private static final int[] D = {R.attr.state_pressed};
    private static final int[] E = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.r C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f14151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f14152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final StateListDrawable f14153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Drawable f14154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f14155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f14156f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final StateListDrawable f14157g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Drawable f14158h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f14159i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f14160j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f14161k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f14162l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f14163m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f14164n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f14165o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f14166p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RecyclerView f14169s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final ValueAnimator f14176z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f14167q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f14168r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f14170t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f14171u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f14172v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f14173w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int[] f14174x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int[] f14175y = new int[2];

    class a extends RecyclerView.r {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            FastScroller.this.v(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    private class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f14178a = false;

        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f14178a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f14178a) {
                this.f14178a = false;
                return;
            }
            if (((Float) FastScroller.this.f14176z.getAnimatedValue()).floatValue() == 0.0f) {
                FastScroller fastScroller = FastScroller.this;
                fastScroller.A = 0;
                fastScroller.s(0);
            } else {
                FastScroller fastScroller2 = FastScroller.this;
                fastScroller2.A = 2;
                fastScroller2.p();
            }
        }
    }

    private class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller.this.f14153c.setAlpha(iFloatValue);
            FastScroller.this.f14154d.setAlpha(iFloatValue);
            FastScroller.this.p();
        }
    }

    FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i11, int i12, int i13) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f14176z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new Runnable() { // from class: androidx.recyclerview.widget.FastScroller.1
            @Override // java.lang.Runnable
            public void run() {
                FastScroller.this.k(500);
            }
        };
        this.C = new a();
        this.f14153c = stateListDrawable;
        this.f14154d = drawable;
        this.f14157g = stateListDrawable2;
        this.f14158h = drawable2;
        this.f14155e = Math.max(i11, stateListDrawable.getIntrinsicWidth());
        this.f14156f = Math.max(i11, drawable.getIntrinsicWidth());
        this.f14159i = Math.max(i11, stateListDrawable2.getIntrinsicWidth());
        this.f14160j = Math.max(i11, drawable2.getIntrinsicWidth());
        this.f14151a = i12;
        this.f14152b = i13;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new b());
        valueAnimatorOfFloat.addUpdateListener(new c());
        d(recyclerView);
    }

    private void e() {
        this.f14169s.removeCallbacks(this.B);
    }

    private void f() {
        this.f14169s.removeItemDecoration(this);
        this.f14169s.removeOnItemTouchListener(this);
        this.f14169s.removeOnScrollListener(this.C);
        e();
    }

    private void g(Canvas canvas) {
        int i11 = this.f14168r;
        int i12 = this.f14159i;
        int i13 = i11 - i12;
        int i14 = this.f14165o;
        int i15 = this.f14164n;
        int i16 = i14 - (i15 / 2);
        this.f14157g.setBounds(0, 0, i15, i12);
        this.f14158h.setBounds(0, 0, this.f14167q, this.f14160j);
        canvas.translate(0.0f, i13);
        this.f14158h.draw(canvas);
        canvas.translate(i16, 0.0f);
        this.f14157g.draw(canvas);
        canvas.translate(-i16, -i13);
    }

    private void h(Canvas canvas) {
        int i11 = this.f14167q;
        int i12 = this.f14155e;
        int i13 = i11 - i12;
        int i14 = this.f14162l;
        int i15 = this.f14161k;
        int i16 = i14 - (i15 / 2);
        this.f14153c.setBounds(0, 0, i12, i15);
        this.f14154d.setBounds(0, 0, this.f14156f, this.f14168r);
        if (!m()) {
            canvas.translate(i13, 0.0f);
            this.f14154d.draw(canvas);
            canvas.translate(0.0f, i16);
            this.f14153c.draw(canvas);
            canvas.translate(-i13, -i16);
            return;
        }
        this.f14154d.draw(canvas);
        canvas.translate(this.f14155e, i16);
        canvas.scale(-1.0f, 1.0f);
        this.f14153c.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f14155e, -i16);
    }

    private int[] i() {
        int[] iArr = this.f14175y;
        int i11 = this.f14152b;
        iArr[0] = i11;
        iArr[1] = this.f14167q - i11;
        return iArr;
    }

    private int[] j() {
        int[] iArr = this.f14174x;
        int i11 = this.f14152b;
        iArr[0] = i11;
        iArr[1] = this.f14168r - i11;
        return iArr;
    }

    private void l(float f11) {
        int[] iArrI = i();
        float fMax = Math.max(iArrI[0], Math.min(iArrI[1], f11));
        if (Math.abs(this.f14165o - fMax) < 2.0f) {
            return;
        }
        int iR = r(this.f14166p, fMax, iArrI, this.f14169s.computeHorizontalScrollRange(), this.f14169s.computeHorizontalScrollOffset(), this.f14167q);
        if (iR != 0) {
            this.f14169s.scrollBy(iR, 0);
        }
        this.f14166p = fMax;
    }

    private boolean m() {
        return ViewCompat.getLayoutDirection(this.f14169s) == 1;
    }

    private void q(int i11) {
        e();
        this.f14169s.postDelayed(this.B, i11);
    }

    private int r(float f11, float f12, int[] iArr, int i11, int i12, int i13) {
        int i14 = iArr[1] - iArr[0];
        if (i14 == 0) {
            return 0;
        }
        int i15 = i11 - i13;
        int i16 = (int) (((f12 - f11) / i14) * i15);
        int i17 = i12 + i16;
        if (i17 >= i15 || i17 < 0) {
            return 0;
        }
        return i16;
    }

    private void t() {
        this.f14169s.addItemDecoration(this);
        this.f14169s.addOnItemTouchListener(this);
        this.f14169s.addOnScrollListener(this.C);
    }

    private void w(float f11) {
        int[] iArrJ = j();
        float fMax = Math.max(iArrJ[0], Math.min(iArrJ[1], f11));
        if (Math.abs(this.f14162l - fMax) < 2.0f) {
            return;
        }
        int iR = r(this.f14163m, fMax, iArrJ, this.f14169s.computeVerticalScrollRange(), this.f14169s.computeVerticalScrollOffset(), this.f14168r);
        if (iR != 0) {
            this.f14169s.scrollBy(0, iR);
        }
        this.f14163m = fMax;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f14172v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zO = o(motionEvent.getX(), motionEvent.getY());
            boolean zN = n(motionEvent.getX(), motionEvent.getY());
            if (zO || zN) {
                if (zN) {
                    this.f14173w = 1;
                    this.f14166p = (int) motionEvent.getX();
                } else if (zO) {
                    this.f14173w = 2;
                    this.f14163m = (int) motionEvent.getY();
                }
                s(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f14172v == 2) {
            this.f14163m = 0.0f;
            this.f14166p = 0.0f;
            s(1);
            this.f14173w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f14172v == 2) {
            u();
            if (this.f14173w == 1) {
                l(motionEvent.getX());
            }
            if (this.f14173w == 2) {
                w(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public boolean b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i11 = this.f14172v;
        if (i11 == 1) {
            boolean zO = o(motionEvent.getX(), motionEvent.getY());
            boolean zN = n(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zO && !zN) {
                return false;
            }
            if (zN) {
                this.f14173w = 1;
                this.f14166p = (int) motionEvent.getX();
            } else if (zO) {
                this.f14173w = 2;
                this.f14163m = (int) motionEvent.getY();
            }
            s(2);
        } else if (i11 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public void c(boolean z10) {
    }

    public void d(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f14169s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            f();
        }
        this.f14169s = recyclerView;
        if (recyclerView != null) {
            t();
        }
    }

    void k(int i11) {
        int i12 = this.A;
        if (i12 == 1) {
            this.f14176z.cancel();
        } else if (i12 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.f14176z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f14176z.setDuration(i11);
        this.f14176z.start();
    }

    boolean n(float f11, float f12) {
        if (f12 >= this.f14168r - this.f14159i) {
            int i11 = this.f14165o;
            int i12 = this.f14164n;
            if (f11 >= i11 - (i12 / 2) && f11 <= i11 + (i12 / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean o(float f11, float f12) {
        if (!m() ? f11 >= this.f14167q - this.f14155e : f11 <= this.f14155e) {
            int i11 = this.f14162l;
            int i12 = this.f14161k;
            if (f12 >= i11 - (i12 / 2) && f12 <= i11 + (i12 / 2)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.y yVar) {
        if (this.f14167q != this.f14169s.getWidth() || this.f14168r != this.f14169s.getHeight()) {
            this.f14167q = this.f14169s.getWidth();
            this.f14168r = this.f14169s.getHeight();
            s(0);
        } else if (this.A != 0) {
            if (this.f14170t) {
                h(canvas);
            }
            if (this.f14171u) {
                g(canvas);
            }
        }
    }

    void p() {
        this.f14169s.invalidate();
    }

    void s(int i11) {
        if (i11 == 2 && this.f14172v != 2) {
            this.f14153c.setState(D);
            e();
        }
        if (i11 == 0) {
            p();
        } else {
            u();
        }
        if (this.f14172v == 2 && i11 != 2) {
            this.f14153c.setState(E);
            q(1200);
        } else if (i11 == 1) {
            q(1500);
        }
        this.f14172v = i11;
    }

    public void u() {
        int i11 = this.A;
        if (i11 != 0) {
            if (i11 != 3) {
                return;
            } else {
                this.f14176z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f14176z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f14176z.setDuration(500L);
        this.f14176z.setStartDelay(0L);
        this.f14176z.start();
    }

    void v(int i11, int i12) {
        int iComputeVerticalScrollRange = this.f14169s.computeVerticalScrollRange();
        int i13 = this.f14168r;
        this.f14170t = iComputeVerticalScrollRange - i13 > 0 && i13 >= this.f14151a;
        int iComputeHorizontalScrollRange = this.f14169s.computeHorizontalScrollRange();
        int i14 = this.f14167q;
        boolean z10 = iComputeHorizontalScrollRange - i14 > 0 && i14 >= this.f14151a;
        this.f14171u = z10;
        boolean z11 = this.f14170t;
        if (!z11 && !z10) {
            if (this.f14172v != 0) {
                s(0);
                return;
            }
            return;
        }
        if (z11) {
            float f11 = i13;
            this.f14162l = (int) ((f11 * (i12 + (f11 / 2.0f))) / iComputeVerticalScrollRange);
            this.f14161k = Math.min(i13, (i13 * i13) / iComputeVerticalScrollRange);
        }
        if (this.f14171u) {
            float f12 = i14;
            this.f14165o = (int) ((f12 * (i11 + (f12 / 2.0f))) / iComputeHorizontalScrollRange);
            this.f14164n = Math.min(i14, (i14 * i14) / iComputeHorizontalScrollRange);
        }
        int i15 = this.f14172v;
        if (i15 == 0 || i15 == 1) {
            s(1);
        }
    }
}
