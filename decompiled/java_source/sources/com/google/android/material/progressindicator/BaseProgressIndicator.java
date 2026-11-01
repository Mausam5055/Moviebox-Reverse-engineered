package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.progressindicator.b;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseProgressIndicator<S extends com.google.android.material.progressindicator.b> extends ProgressBar {
    public static final int HIDE_ESCAPE = 3;
    public static final int HIDE_INWARD = 2;
    public static final int HIDE_NONE = 0;
    public static final int HIDE_OUTWARD = 1;
    public static final int SHOW_INWARD = 2;
    public static final int SHOW_NONE = 0;
    public static final int SHOW_OUTWARD = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final int f29401o = R$style.Widget_MaterialComponents_ProgressIndicator;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.google.android.material.progressindicator.b f29402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f29403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f29404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f29405d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f29406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f29407f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f29408g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.google.android.material.progressindicator.a f29409h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f29410i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29411j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Runnable f29412k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Runnable f29413l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.vectordrawable.graphics.drawable.b f29414m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.vectordrawable.graphics.drawable.b f29415n;

    class a extends androidx.vectordrawable.graphics.drawable.b {
        a() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f29403b, BaseProgressIndicator.this.f29404c);
        }
    }

    class b extends androidx.vectordrawable.graphics.drawable.b {
        b() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (BaseProgressIndicator.this.f29410i) {
                return;
            }
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setVisibility(baseProgressIndicator.f29411j);
        }
    }

    protected BaseProgressIndicator(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(bb.a.c(context, attributeSet, i11, f29401o), attributeSet, i11);
        this.f29408g = -1L;
        this.f29410i = false;
        this.f29411j = 4;
        this.f29412k = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                BaseProgressIndicator.this.k();
            }
        };
        this.f29413l = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.2
            @Override // java.lang.Runnable
            public void run() {
                BaseProgressIndicator.this.j();
                BaseProgressIndicator.this.f29408g = -1L;
            }
        };
        this.f29414m = new a();
        this.f29415n = new b();
        Context context2 = getContext();
        this.f29402a = i(context2, attributeSet);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.BaseProgressIndicator, i11, i12, new int[0]);
        this.f29406e = typedArrayI.getInt(R$styleable.BaseProgressIndicator_showDelay, -1);
        this.f29407f = Math.min(typedArrayI.getInt(R$styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayI.recycle();
        this.f29409h = new com.google.android.material.progressindicator.a();
        this.f29405d = true;
    }

    @Nullable
    private h getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().w();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        ((g) getCurrentDrawable()).q(false, false, true);
        if (m()) {
            setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.f29407f > 0) {
            this.f29408g = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    private boolean m() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    private void n() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().v().d(this.f29414m);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().m(this.f29415n);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().m(this.f29415n);
        }
    }

    private void o() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().s(this.f29415n);
            getIndeterminateDrawable().v().h();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().s(this.f29415n);
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f29402a.f29423f;
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public j getIndeterminateDrawable() {
        return (j) super.getIndeterminateDrawable();
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f29402a.f29420c;
    }

    public int getIndicatorTrackGapSize() {
        return this.f29402a.f29424g;
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public f getProgressDrawable() {
        return (f) super.getProgressDrawable();
    }

    public int getShowAnimationBehavior() {
        return this.f29402a.f29422e;
    }

    public int getTrackColor() {
        return this.f29402a.f29421d;
    }

    public int getTrackCornerRadius() {
        return this.f29402a.f29419b;
    }

    public int getTrackThickness() {
        return this.f29402a.f29418a;
    }

    protected void h(boolean z10) {
        if (this.f29405d) {
            ((g) getCurrentDrawable()).q(p(), false, z10);
        }
    }

    public void hide() {
        if (getVisibility() != 0) {
            removeCallbacks(this.f29412k);
            return;
        }
        removeCallbacks(this.f29413l);
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f29408g;
        int i11 = this.f29407f;
        if (jUptimeMillis >= i11) {
            this.f29413l.run();
        } else {
            postDelayed(this.f29413l, ((long) i11) - jUptimeMillis);
        }
    }

    abstract com.google.android.material.progressindicator.b i(Context context, AttributeSet attributeSet);

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    boolean l() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        n();
        if (p()) {
            k();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f29413l);
        removeCallbacks(this.f29412k);
        ((g) getCurrentDrawable()).i();
        o();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i11, int i12) {
        try {
            h currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            setMeasuredDimension(currentDrawingDelegate.f() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i11) : currentDrawingDelegate.f() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.e() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i12) : currentDrawingDelegate.e() + getPaddingTop() + getPaddingBottom());
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        h(i11 == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i11) {
        super.onWindowVisibilityChanged(i11);
        h(false);
    }

    boolean p() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && l();
    }

    public void setAnimatorDurationScaleProvider(@NonNull com.google.android.material.progressindicator.a aVar) {
        this.f29409h = aVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f29457c = aVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f29457c = aVar;
        }
    }

    public void setHideAnimationBehavior(int i11) {
        this.f29402a.f29423f = i11;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z10) {
        try {
            if (z10 == isIndeterminate()) {
                return;
            }
            g gVar = (g) getCurrentDrawable();
            if (gVar != null) {
                gVar.i();
            }
            super.setIndeterminate(z10);
            g gVar2 = (g) getCurrentDrawable();
            if (gVar2 != null) {
                gVar2.q(p(), false, false);
            }
            if ((gVar2 instanceof j) && p()) {
                ((j) gVar2).v().g();
            }
            this.f29410i = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof j)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((g) drawable).i();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{com.google.android.material.color.b.b(getContext(), R$attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f29402a.f29420c = iArr;
        getIndeterminateDrawable().v().c();
        invalidate();
    }

    public void setIndicatorTrackGapSize(int i11) {
        com.google.android.material.progressindicator.b bVar = this.f29402a;
        if (bVar.f29424g != i11) {
            bVar.f29424g = i11;
            bVar.e();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i11) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i11, false);
    }

    public void setProgressCompat(int i11, boolean z10) {
        if (!isIndeterminate()) {
            super.setProgress(i11);
            if (getProgressDrawable() == null || z10) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f29403b = i11;
            this.f29404c = z10;
            this.f29410i = true;
            if (!getIndeterminateDrawable().isVisible() || this.f29409h.a(getContext().getContentResolver()) == 0.0f) {
                this.f29414m.onAnimationEnd(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().v().f();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof f)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            f fVar = (f) drawable;
            fVar.i();
            super.setProgressDrawable(fVar);
            fVar.B(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i11) {
        this.f29402a.f29422e = i11;
        invalidate();
    }

    public void setTrackColor(int i11) {
        com.google.android.material.progressindicator.b bVar = this.f29402a;
        if (bVar.f29421d != i11) {
            bVar.f29421d = i11;
            invalidate();
        }
    }

    public void setTrackCornerRadius(int i11) {
        com.google.android.material.progressindicator.b bVar = this.f29402a;
        if (bVar.f29419b != i11) {
            bVar.f29419b = Math.min(i11, bVar.f29418a / 2);
            invalidate();
        }
    }

    public void setTrackThickness(int i11) {
        com.google.android.material.progressindicator.b bVar = this.f29402a;
        if (bVar.f29418a != i11) {
            bVar.f29418a = i11;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i11) {
        if (i11 != 0 && i11 != 4 && i11 != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f29411j = i11;
    }

    public void show() {
        if (this.f29406e <= 0) {
            this.f29412k.run();
        } else {
            removeCallbacks(this.f29412k);
            postDelayed(this.f29412k, this.f29406e);
        }
    }
}
