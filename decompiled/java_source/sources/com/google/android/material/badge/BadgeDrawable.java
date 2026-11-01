package com.google.android.material.badge;

import ab.i;
import ab.n;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.y;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import xa.d;

/* JADX INFO: loaded from: classes4.dex */
public class BadgeDrawable extends Drawable implements y.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f28280n = R$style.Widget_MaterialComponents_Badge;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f28281o = R$attr.badgeStyle;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference f28282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f28283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y f28284c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f28285d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BadgeState f28286e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f28287f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f28288g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28289h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f28290i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f28291j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f28292k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WeakReference f28293l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WeakReference f28294m;

    private BadgeDrawable(Context context, int i11, int i12, int i13, BadgeState.State state) {
        this.f28282a = new WeakReference(context);
        b0.c(context);
        this.f28285d = new Rect();
        y yVar = new y(this);
        this.f28284c = yVar;
        yVar.g().setTextAlign(Paint.Align.CENTER);
        BadgeState badgeState = new BadgeState(context, i11, i12, i13, state);
        this.f28286e = badgeState;
        this.f28283b = new i(n.b(context, A() ? badgeState.m() : badgeState.i(), A() ? badgeState.l() : badgeState.h()).m());
        N();
    }

    private boolean A() {
        return C() || B();
    }

    private boolean D() {
        FrameLayout frameLayoutJ = j();
        return frameLayoutJ != null && frameLayoutJ.getId() == R$id.mtrl_anchor_parent;
    }

    private void E() {
        this.f28284c.g().setAlpha(getAlpha());
        invalidateSelf();
    }

    private void F() {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(this.f28286e.e());
        if (this.f28283b.z() != colorStateListValueOf) {
            this.f28283b.d0(colorStateListValueOf);
            invalidateSelf();
        }
    }

    private void G() {
        this.f28284c.l(true);
        I();
        T();
        invalidateSelf();
    }

    private void H() {
        WeakReference weakReference = this.f28293l;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.f28293l.get();
        WeakReference weakReference2 = this.f28294m;
        S(view, weakReference2 != null ? (FrameLayout) weakReference2.get() : null);
    }

    private void I() {
        Context context = (Context) this.f28282a.get();
        if (context == null) {
            return;
        }
        this.f28283b.setShapeAppearanceModel(n.b(context, A() ? this.f28286e.m() : this.f28286e.i(), A() ? this.f28286e.l() : this.f28286e.h()).m());
        invalidateSelf();
    }

    private void J() {
        d dVar;
        Context context = (Context) this.f28282a.get();
        if (context == null || this.f28284c.e() == (dVar = new d(context, this.f28286e.A()))) {
            return;
        }
        this.f28284c.k(dVar, context);
        K();
        T();
        invalidateSelf();
    }

    private void K() {
        this.f28284c.g().setColor(this.f28286e.j());
        invalidateSelf();
    }

    private void L() {
        U();
        this.f28284c.l(true);
        T();
        invalidateSelf();
    }

    private void M() {
        boolean zG = this.f28286e.G();
        setVisible(zG, false);
        if (!c.f28306a || j() == null || zG) {
            return;
        }
        ((ViewGroup) j().getParent()).invalidate();
    }

    private void N() {
        I();
        J();
        L();
        G();
        E();
        F();
        K();
        H();
        T();
        M();
    }

    private void Q(final View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R$id.mtrl_anchor_parent) {
            WeakReference weakReference = this.f28294m;
            if (weakReference == null || weakReference.get() != viewGroup) {
                R(view);
                final FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R$id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int iIndexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(iIndexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, iIndexOfChild);
                this.f28294m = new WeakReference(frameLayout);
                frameLayout.post(new Runnable() { // from class: com.google.android.material.badge.BadgeDrawable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BadgeDrawable.this.S(view, frameLayout);
                    }
                });
            }
        }
    }

    private static void R(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private void T() {
        Context context = (Context) this.f28282a.get();
        WeakReference weakReference = this.f28293l;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f28285d);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference weakReference2 = this.f28294m;
        ViewGroup viewGroup = weakReference2 != null ? (ViewGroup) weakReference2.get() : null;
        if (viewGroup != null || c.f28306a) {
            if (viewGroup == null) {
                viewGroup = (ViewGroup) view.getParent();
            }
            viewGroup.offsetDescendantRectToMyCoords(view, rect2);
        }
        c(rect2, view);
        c.i(this.f28285d, this.f28287f, this.f28288g, this.f28291j, this.f28292k);
        float f11 = this.f28290i;
        if (f11 != -1.0f) {
            this.f28283b.a0(f11);
        }
        if (rect.equals(this.f28285d)) {
            return;
        }
        this.f28283b.setBounds(this.f28285d);
    }

    private void U() {
        if (n() != -2) {
            this.f28289h = ((int) Math.pow(10.0d, ((double) n()) - 1.0d)) - 1;
        } else {
            this.f28289h = o();
        }
    }

    private void b(View view) {
        float y10;
        float x10;
        View viewJ = j();
        if (viewJ == null) {
            if (!(view.getParent() instanceof View)) {
                return;
            }
            float y11 = view.getY();
            x10 = view.getX();
            viewJ = (View) view.getParent();
            y10 = y11;
        } else if (!D()) {
            y10 = 0.0f;
            x10 = 0.0f;
        } else {
            if (!(viewJ.getParent() instanceof View)) {
                return;
            }
            y10 = viewJ.getY();
            x10 = viewJ.getX();
            viewJ = (View) viewJ.getParent();
        }
        float fX = x(viewJ, y10);
        float fM = m(viewJ, x10);
        float fH = h(viewJ, y10);
        float fS = s(viewJ, x10);
        if (fX < 0.0f) {
            this.f28288g += Math.abs(fX);
        }
        if (fM < 0.0f) {
            this.f28287f += Math.abs(fM);
        }
        if (fH > 0.0f) {
            this.f28288g -= Math.abs(fH);
        }
        if (fS > 0.0f) {
            this.f28287f -= Math.abs(fS);
        }
    }

    private void c(Rect rect, View view) {
        float f11 = A() ? this.f28286e.f28298d : this.f28286e.f28297c;
        this.f28290i = f11;
        if (f11 != -1.0f) {
            this.f28291j = f11;
            this.f28292k = f11;
        } else {
            this.f28291j = Math.round((A() ? this.f28286e.f28301g : this.f28286e.f28299e) / 2.0f);
            this.f28292k = Math.round((A() ? this.f28286e.f28302h : this.f28286e.f28300f) / 2.0f);
        }
        if (A()) {
            String strG = g();
            this.f28291j = Math.max(this.f28291j, (this.f28284c.h(strG) / 2.0f) + this.f28286e.g());
            float fMax = Math.max(this.f28292k, (this.f28284c.f(strG) / 2.0f) + this.f28286e.k());
            this.f28292k = fMax;
            this.f28291j = Math.max(this.f28291j, fMax);
        }
        int iZ = z();
        int iF = this.f28286e.f();
        if (iF == 8388691 || iF == 8388693) {
            this.f28288g = rect.bottom - iZ;
        } else {
            this.f28288g = rect.top + iZ;
        }
        int iY = y();
        int iF2 = this.f28286e.f();
        if (iF2 == 8388659 || iF2 == 8388691) {
            this.f28287f = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.f28291j) + iY : (rect.right + this.f28291j) - iY;
        } else {
            this.f28287f = ViewCompat.getLayoutDirection(view) == 0 ? (rect.right + this.f28291j) - iY : (rect.left - this.f28291j) + iY;
        }
        if (this.f28286e.F()) {
            b(view);
        }
    }

    public static BadgeDrawable d(Context context) {
        return new BadgeDrawable(context, 0, f28281o, f28280n, null);
    }

    static BadgeDrawable e(Context context, BadgeState.State state) {
        return new BadgeDrawable(context, 0, f28281o, f28280n, state);
    }

    private void f(Canvas canvas) {
        String strG = g();
        if (strG != null) {
            Rect rect = new Rect();
            this.f28284c.g().getTextBounds(strG, 0, strG.length(), rect);
            float fExactCenterY = this.f28288g - rect.exactCenterY();
            canvas.drawText(strG, this.f28287f, rect.bottom <= 0 ? (int) fExactCenterY : Math.round(fExactCenterY), this.f28284c.g());
        }
    }

    private String g() {
        if (C()) {
            return v();
        }
        if (B()) {
            return q();
        }
        return null;
    }

    private float h(View view, float f11) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f28288g + this.f28292k) - (((View) view.getParent()).getHeight() - view.getY())) + f11;
    }

    private CharSequence k() {
        return this.f28286e.p();
    }

    private float m(View view, float f11) {
        return (this.f28287f - this.f28291j) + view.getX() + f11;
    }

    private String q() {
        if (this.f28289h == -2 || p() <= this.f28289h) {
            return NumberFormat.getInstance(this.f28286e.x()).format(p());
        }
        Context context = (Context) this.f28282a.get();
        return context == null ? "" : String.format(this.f28286e.x(), context.getString(R$string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f28289h), "+");
    }

    private String r() {
        Context context;
        if (this.f28286e.q() == 0 || (context = (Context) this.f28282a.get()) == null) {
            return null;
        }
        return (this.f28289h == -2 || p() <= this.f28289h) ? context.getResources().getQuantityString(this.f28286e.q(), p(), Integer.valueOf(p())) : context.getString(this.f28286e.n(), Integer.valueOf(this.f28289h));
    }

    private float s(View view, float f11) {
        if (!(view.getParent() instanceof View)) {
            return 0.0f;
        }
        return ((this.f28287f + this.f28291j) - (((View) view.getParent()).getWidth() - view.getX())) + f11;
    }

    private String v() {
        String strU = u();
        int iN = n();
        if (iN == -2 || strU == null || strU.length() <= iN) {
            return strU;
        }
        Context context = (Context) this.f28282a.get();
        if (context == null) {
            return "";
        }
        return String.format(context.getString(R$string.m3_exceed_max_badge_text_suffix), strU.substring(0, iN - 1), "…");
    }

    private CharSequence w() {
        CharSequence charSequenceO = this.f28286e.o();
        return charSequenceO != null ? charSequenceO : u();
    }

    private float x(View view, float f11) {
        return (this.f28288g - this.f28292k) + view.getY() + f11;
    }

    private int y() {
        int iR = A() ? this.f28286e.r() : this.f28286e.s();
        if (this.f28286e.f28305k == 1) {
            iR += A() ? this.f28286e.f28304j : this.f28286e.f28303i;
        }
        return iR + this.f28286e.b();
    }

    private int z() {
        int iC = this.f28286e.C();
        if (A()) {
            iC = this.f28286e.B();
            Context context = (Context) this.f28282a.get();
            if (context != null) {
                iC = oa.a.c(iC, iC - this.f28286e.t(), oa.a.b(0.0f, 1.0f, 0.3f, 1.0f, xa.c.f(context) - 1.0f));
            }
        }
        if (this.f28286e.f28305k == 0) {
            iC -= Math.round(this.f28292k);
        }
        return iC + this.f28286e.c();
    }

    public boolean B() {
        return !this.f28286e.E() && this.f28286e.D();
    }

    public boolean C() {
        return this.f28286e.E();
    }

    void O(int i11) {
        this.f28286e.I(i11);
        T();
    }

    void P(int i11) {
        this.f28286e.J(i11);
        T();
    }

    public void S(View view, FrameLayout frameLayout) {
        this.f28293l = new WeakReference(view);
        boolean z10 = c.f28306a;
        if (z10 && frameLayout == null) {
            Q(view);
        } else {
            this.f28294m = new WeakReference(frameLayout);
        }
        if (!z10) {
            R(view);
        }
        T();
        invalidateSelf();
    }

    @Override // com.google.android.material.internal.y.b
    public void a() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f28283b.draw(canvas);
        if (A()) {
            f(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f28286e.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f28285d.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f28285d.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public CharSequence i() {
        if (!isVisible()) {
            return null;
        }
        if (C()) {
            return w();
        }
        return B() ? r() : k();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    public FrameLayout j() {
        WeakReference weakReference = this.f28294m;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    public int l() {
        return this.f28286e.s();
    }

    public int n() {
        return this.f28286e.u();
    }

    public int o() {
        return this.f28286e.v();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.y.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public int p() {
        if (this.f28286e.D()) {
            return this.f28286e.w();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f28286e.K(i11);
        E();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    BadgeState.State t() {
        return this.f28286e.y();
    }

    public String u() {
        return this.f28286e.z();
    }
}
