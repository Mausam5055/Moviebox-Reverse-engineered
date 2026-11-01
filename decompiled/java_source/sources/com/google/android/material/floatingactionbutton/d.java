package com.google.android.material.floatingactionbutton;

import ab.n;
import ab.q;
import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.internal.w;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
abstract class d {
    static final TimeInterpolator D = oa.a.f70920c;
    private static final int E = R$attr.motionDurationLong2;
    private static final int F = R$attr.motionEasingEmphasizedInterpolator;
    private static final int G = R$attr.motionDurationMedium1;
    private static final int H = R$attr.motionEasingEmphasizedAccelerateInterpolator;
    static final int[] I = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] J = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] K = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] L = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] M = {R.attr.state_enabled};
    static final int[] N = new int[0];
    private ViewTreeObserver.OnPreDrawListener C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    n f29005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ab.i f29006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Drawable f29007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.google.android.material.floatingactionbutton.c f29008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Drawable f29009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f29010f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f29012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f29013i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f29014j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f29015k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final w f29016l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Animator f29017m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private oa.h f29018n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private oa.h f29019o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f29020p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f29022r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ArrayList f29024t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ArrayList f29025u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList f29026v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final FloatingActionButton f29027w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final za.b f29028x;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f29011g = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f29021q = 1.0f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f29023s = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Rect f29029y = new Rect();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final RectF f29030z = new RectF();
    private final RectF A = new RectF();
    private final Matrix B = new Matrix();

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f29031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f29032b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ k f29033c;

        a(boolean z10, k kVar) {
            this.f29032b = z10;
            this.f29033c = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f29031a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f29023s = 0;
            d.this.f29017m = null;
            if (this.f29031a) {
                return;
            }
            FloatingActionButton floatingActionButton = d.this.f29027w;
            boolean z10 = this.f29032b;
            floatingActionButton.internalSetVisibility(z10 ? 8 : 4, z10);
            k kVar = this.f29033c;
            if (kVar != null) {
                kVar.b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f29027w.internalSetVisibility(0, this.f29032b);
            d.this.f29023s = 1;
            d.this.f29017m = animator;
            this.f29031a = false;
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f29035a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ k f29036b;

        b(boolean z10, k kVar) {
            this.f29035a = z10;
            this.f29036b = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f29023s = 0;
            d.this.f29017m = null;
            k kVar = this.f29036b;
            if (kVar != null) {
                kVar.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f29027w.internalSetVisibility(0, this.f29035a);
            d.this.f29023s = 2;
            d.this.f29017m = animator;
        }
    }

    class c extends oa.g {
        c() {
        }

        @Override // oa.g, android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a */
        public Matrix evaluate(float f11, Matrix matrix, Matrix matrix2) {
            d.this.f29021q = f11;
            return super.evaluate(f11, matrix, matrix2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.d$d, reason: collision with other inner class name */
    class C0396d implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f29039a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f29040b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f29041c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f29042d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ float f29043e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ float f29044f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ float f29045g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Matrix f29046h;

        C0396d(float f11, float f12, float f13, float f14, float f15, float f16, float f17, Matrix matrix) {
            this.f29039a = f11;
            this.f29040b = f12;
            this.f29041c = f13;
            this.f29042d = f14;
            this.f29043e = f15;
            this.f29044f = f16;
            this.f29045g = f17;
            this.f29046h = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            d.this.f29027w.setAlpha(oa.a.b(this.f29039a, this.f29040b, 0.0f, 0.2f, fFloatValue));
            d.this.f29027w.setScaleX(oa.a.a(this.f29041c, this.f29042d, fFloatValue));
            d.this.f29027w.setScaleY(oa.a.a(this.f29043e, this.f29042d, fFloatValue));
            d.this.f29021q = oa.a.a(this.f29044f, this.f29045g, fFloatValue);
            d.this.h(oa.a.a(this.f29044f, this.f29045g, fFloatValue), this.f29046h);
            d.this.f29027w.setImageMatrix(this.f29046h);
        }
    }

    class e implements TypeEvaluator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        FloatEvaluator f29048a = new FloatEvaluator();

        e() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f11, Float f12, Float f13) {
            float fFloatValue = this.f29048a.evaluate(f11, (Number) f12, (Number) f13).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = 0.0f;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            d.this.H();
            return true;
        }
    }

    private class g extends m {
        g() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return 0.0f;
        }
    }

    private class h extends m {
        h() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.f29012h + dVar.f29013i;
        }
    }

    private class i extends m {
        i() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.f29012h + dVar.f29014j;
        }
    }

    interface j {
        void a();

        void b();
    }

    interface k {
        void a();

        void b();
    }

    private class l extends m {
        l() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return d.this.f29012h;
        }
    }

    private abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f29055a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f29056b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f29057c;

        private m() {
        }

        /* synthetic */ m(d dVar, a aVar) {
            this();
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.j0((int) this.f29057c);
            this.f29055a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f29055a) {
                ab.i iVar = d.this.f29006b;
                this.f29056b = iVar == null ? 0.0f : iVar.y();
                this.f29057c = a();
                this.f29055a = true;
            }
            d dVar = d.this;
            float f11 = this.f29056b;
            dVar.j0((int) (f11 + ((this.f29057c - f11) * valueAnimator.getAnimatedFraction())));
        }
    }

    d(FloatingActionButton floatingActionButton, za.b bVar) {
        this.f29027w = floatingActionButton;
        this.f29028x = bVar;
        w wVar = new w();
        this.f29016l = wVar;
        wVar.a(I, k(new i()));
        wVar.a(J, k(new h()));
        wVar.a(K, k(new h()));
        wVar.a(L, k(new h()));
        wVar.a(M, k(new l()));
        wVar.a(N, k(new g()));
        this.f29020p = floatingActionButton.getRotation();
    }

    private boolean d0() {
        return ViewCompat.isLaidOut(this.f29027w) && !this.f29027w.isInEditMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(float f11, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f29027w.getDrawable();
        if (drawable == null || this.f29022r == 0) {
            return;
        }
        RectF rectF = this.f29030z;
        RectF rectF2 = this.A;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i11 = this.f29022r;
        rectF2.set(0.0f, 0.0f, i11, i11);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i12 = this.f29022r;
        matrix.postScale(f11, f11, i12 / 2.0f, i12 / 2.0f);
    }

    private AnimatorSet i(oa.h hVar, float f11, float f12, float f13) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f29027w, (Property<FloatingActionButton, Float>) View.ALPHA, f11);
        hVar.h("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f29027w, (Property<FloatingActionButton, Float>) View.SCALE_X, f12);
        hVar.h("scale").a(objectAnimatorOfFloat2);
        k0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f29027w, (Property<FloatingActionButton, Float>) View.SCALE_Y, f12);
        hVar.h("scale").a(objectAnimatorOfFloat3);
        k0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        h(f13, this.B);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f29027w, new oa.f(), new c(), new Matrix(this.B));
        hVar.h("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        oa.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private AnimatorSet j(float f11, float f12, float f13, int i11, int i12) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new C0396d(this.f29027w.getAlpha(), f11, this.f29027w.getScaleX(), f12, this.f29027w.getScaleY(), this.f29021q, f13, new Matrix(this.B)));
        arrayList.add(valueAnimatorOfFloat);
        oa.b.a(animatorSet, arrayList);
        animatorSet.setDuration(wa.j.f(this.f29027w.getContext(), i11, this.f29027w.getContext().getResources().getInteger(R$integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(wa.j.g(this.f29027w.getContext(), i12, oa.a.f70919b));
        return animatorSet;
    }

    private ValueAnimator k(m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private void k0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new e());
    }

    private ViewTreeObserver.OnPreDrawListener q() {
        if (this.C == null) {
            this.C = new f();
        }
        return this.C;
    }

    abstract void A();

    void B() {
        ab.i iVar = this.f29006b;
        if (iVar != null) {
            ab.j.f(this.f29027w, iVar);
        }
        if (N()) {
            this.f29027w.getViewTreeObserver().addOnPreDrawListener(q());
        }
    }

    abstract void C();

    void D() {
        ViewTreeObserver viewTreeObserver = this.f29027w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.C = null;
        }
    }

    abstract void E(int[] iArr);

    abstract void F(float f11, float f12, float f13);

    void G(Rect rect) {
        androidx.core.util.i.h(this.f29009e, "Didn't initialize content background");
        if (!c0()) {
            this.f29028x.b(this.f29009e);
        } else {
            this.f29028x.b(new InsetDrawable(this.f29009e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void H() {
        float rotation = this.f29027w.getRotation();
        if (this.f29020p != rotation) {
            this.f29020p = rotation;
            g0();
        }
    }

    void I() {
        ArrayList arrayList = this.f29026v;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).b();
            }
        }
    }

    void J() {
        ArrayList arrayList = this.f29026v;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a();
            }
        }
    }

    public void K(Animator.AnimatorListener animatorListener) {
        ArrayList arrayList = this.f29025u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    void L(Animator.AnimatorListener animatorListener) {
        ArrayList arrayList = this.f29024t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    void M(j jVar) {
        ArrayList arrayList = this.f29026v;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    abstract boolean N();

    void O(ColorStateList colorStateList) {
        ab.i iVar = this.f29006b;
        if (iVar != null) {
            iVar.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f29008d;
        if (cVar != null) {
            cVar.c(colorStateList);
        }
    }

    void P(PorterDuff.Mode mode) {
        ab.i iVar = this.f29006b;
        if (iVar != null) {
            iVar.setTintMode(mode);
        }
    }

    final void Q(float f11) {
        if (this.f29012h != f11) {
            this.f29012h = f11;
            F(f11, this.f29013i, this.f29014j);
        }
    }

    void R(boolean z10) {
        this.f29010f = z10;
    }

    final void S(oa.h hVar) {
        this.f29019o = hVar;
    }

    final void T(float f11) {
        if (this.f29013i != f11) {
            this.f29013i = f11;
            F(this.f29012h, f11, this.f29014j);
        }
    }

    final void U(float f11) {
        this.f29021q = f11;
        Matrix matrix = this.B;
        h(f11, matrix);
        this.f29027w.setImageMatrix(matrix);
    }

    final void V(int i11) {
        if (this.f29022r != i11) {
            this.f29022r = i11;
            h0();
        }
    }

    void W(int i11) {
        this.f29015k = i11;
    }

    final void X(float f11) {
        if (this.f29014j != f11) {
            this.f29014j = f11;
            F(this.f29012h, this.f29013i, f11);
        }
    }

    void Y(ColorStateList colorStateList) {
        Drawable drawable = this.f29007c;
        if (drawable != null) {
            a1.a.o(drawable, ya.b.d(colorStateList));
        }
    }

    void Z(boolean z10) {
        this.f29011g = z10;
        i0();
    }

    final void a0(n nVar) {
        this.f29005a = nVar;
        ab.i iVar = this.f29006b;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
        Object obj = this.f29007c;
        if (obj instanceof q) {
            ((q) obj).setShapeAppearanceModel(nVar);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f29008d;
        if (cVar != null) {
            cVar.f(nVar);
        }
    }

    final void b0(oa.h hVar) {
        this.f29018n = hVar;
    }

    abstract boolean c0();

    public void e(Animator.AnimatorListener animatorListener) {
        if (this.f29025u == null) {
            this.f29025u = new ArrayList();
        }
        this.f29025u.add(animatorListener);
    }

    final boolean e0() {
        return !this.f29010f || this.f29027w.getSizeDimension() >= this.f29015k;
    }

    void f(Animator.AnimatorListener animatorListener) {
        if (this.f29024t == null) {
            this.f29024t = new ArrayList();
        }
        this.f29024t.add(animatorListener);
    }

    void f0(k kVar, boolean z10) {
        if (z()) {
            return;
        }
        Animator animator = this.f29017m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z11 = this.f29018n == null;
        if (!d0()) {
            this.f29027w.internalSetVisibility(0, z10);
            this.f29027w.setAlpha(1.0f);
            this.f29027w.setScaleY(1.0f);
            this.f29027w.setScaleX(1.0f);
            U(1.0f);
            if (kVar != null) {
                kVar.a();
                return;
            }
            return;
        }
        if (this.f29027w.getVisibility() != 0) {
            this.f29027w.setAlpha(0.0f);
            this.f29027w.setScaleY(z11 ? 0.4f : 0.0f);
            this.f29027w.setScaleX(z11 ? 0.4f : 0.0f);
            U(z11 ? 0.4f : 0.0f);
        }
        oa.h hVar = this.f29018n;
        AnimatorSet animatorSetI = hVar != null ? i(hVar, 1.0f, 1.0f, 1.0f) : j(1.0f, 1.0f, 1.0f, E, F);
        animatorSetI.addListener(new b(z10, kVar));
        ArrayList arrayList = this.f29024t;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetI.start();
    }

    void g(j jVar) {
        if (this.f29026v == null) {
            this.f29026v = new ArrayList();
        }
        this.f29026v.add(jVar);
    }

    abstract void g0();

    final void h0() {
        U(this.f29021q);
    }

    final void i0() {
        Rect rect = this.f29029y;
        r(rect);
        G(rect);
        this.f29028x.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void j0(float f11) {
        ab.i iVar = this.f29006b;
        if (iVar != null) {
            iVar.c0(f11);
        }
    }

    final Drawable l() {
        return this.f29009e;
    }

    abstract float m();

    boolean n() {
        return this.f29010f;
    }

    final oa.h o() {
        return this.f29019o;
    }

    float p() {
        return this.f29013i;
    }

    void r(Rect rect) {
        int iV = v();
        float fM = this.f29011g ? m() + this.f29014j : 0.0f;
        int iMax = Math.max(iV, (int) Math.ceil(fM));
        int iMax2 = Math.max(iV, (int) Math.ceil(fM * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    float s() {
        return this.f29014j;
    }

    final n t() {
        return this.f29005a;
    }

    final oa.h u() {
        return this.f29018n;
    }

    int v() {
        if (this.f29010f) {
            return Math.max((this.f29015k - this.f29027w.getSizeDimension()) / 2, 0);
        }
        return 0;
    }

    void w(k kVar, boolean z10) {
        if (y()) {
            return;
        }
        Animator animator = this.f29017m;
        if (animator != null) {
            animator.cancel();
        }
        if (!d0()) {
            this.f29027w.internalSetVisibility(z10 ? 8 : 4, z10);
            if (kVar != null) {
                kVar.b();
                return;
            }
            return;
        }
        oa.h hVar = this.f29019o;
        AnimatorSet animatorSetI = hVar != null ? i(hVar, 0.0f, 0.0f, 0.0f) : j(0.0f, 0.4f, 0.4f, G, H);
        animatorSetI.addListener(new a(z10, kVar));
        ArrayList arrayList = this.f29025u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetI.addListener((Animator.AnimatorListener) it.next());
            }
        }
        animatorSetI.start();
    }

    abstract void x(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i11);

    boolean y() {
        if (this.f29027w.getVisibility() == 0) {
            return this.f29023s == 1;
        }
        return this.f29023s != 2;
    }

    boolean z() {
        if (this.f29027w.getVisibility() != 0) {
            return this.f29023s == 2;
        }
        return this.f29023s != 1;
    }
}
