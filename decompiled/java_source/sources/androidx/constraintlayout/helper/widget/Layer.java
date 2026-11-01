package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class Layer extends ConstraintHelper {
    private boolean A;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f7116j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f7117k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f7118l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ConstraintLayout f7119m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f7120n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f7121o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected float f7122p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected float f7123q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected float f7124r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected float f7125s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected float f7126t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected float f7127u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f7128v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    View[] f7129w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f7130x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f7131y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f7132z;

    public Layer(Context context) {
        super(context);
        this.f7116j = Float.NaN;
        this.f7117k = Float.NaN;
        this.f7118l = Float.NaN;
        this.f7120n = 1.0f;
        this.f7121o = 1.0f;
        this.f7122p = Float.NaN;
        this.f7123q = Float.NaN;
        this.f7124r = Float.NaN;
        this.f7125s = Float.NaN;
        this.f7126t = Float.NaN;
        this.f7127u = Float.NaN;
        this.f7128v = true;
        this.f7129w = null;
        this.f7130x = 0.0f;
        this.f7131y = 0.0f;
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7116j = Float.NaN;
        this.f7117k = Float.NaN;
        this.f7118l = Float.NaN;
        this.f7120n = 1.0f;
        this.f7121o = 1.0f;
        this.f7122p = Float.NaN;
        this.f7123q = Float.NaN;
        this.f7124r = Float.NaN;
        this.f7125s = Float.NaN;
        this.f7126t = Float.NaN;
        this.f7127u = Float.NaN;
        this.f7128v = true;
        this.f7129w = null;
        this.f7130x = 0.0f;
        this.f7131y = 0.0f;
    }

    public Layer(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7116j = Float.NaN;
        this.f7117k = Float.NaN;
        this.f7118l = Float.NaN;
        this.f7120n = 1.0f;
        this.f7121o = 1.0f;
        this.f7122p = Float.NaN;
        this.f7123q = Float.NaN;
        this.f7124r = Float.NaN;
        this.f7125s = Float.NaN;
        this.f7126t = Float.NaN;
        this.f7127u = Float.NaN;
        this.f7128v = true;
        this.f7129w = null;
        this.f7130x = 0.0f;
        this.f7131y = 0.0f;
    }

    private void m() {
        int i11;
        if (this.f7119m == null || (i11 = this.f7653b) == 0) {
            return;
        }
        View[] viewArr = this.f7129w;
        if (viewArr == null || viewArr.length != i11) {
            this.f7129w = new View[i11];
        }
        for (int i12 = 0; i12 < this.f7653b; i12++) {
            this.f7129w[i12] = this.f7119m.getViewById(this.f7652a[i12]);
        }
    }

    private void n() {
        if (this.f7119m == null) {
            return;
        }
        if (this.f7129w == null) {
            m();
        }
        l();
        double radians = Float.isNaN(this.f7118l) ? 0.0d : Math.toRadians(this.f7118l);
        float fSin = (float) Math.sin(radians);
        float fCos = (float) Math.cos(radians);
        float f11 = this.f7120n;
        float f12 = f11 * fCos;
        float f13 = this.f7121o;
        float f14 = (-f13) * fSin;
        float f15 = f11 * fSin;
        float f16 = f13 * fCos;
        for (int i11 = 0; i11 < this.f7653b; i11++) {
            View view = this.f7129w[i11];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f17 = left - this.f7122p;
            float f18 = top - this.f7123q;
            float f19 = (((f12 * f17) + (f14 * f18)) - f17) + this.f7130x;
            float f20 = (((f17 * f15) + (f16 * f18)) - f18) + this.f7131y;
            view.setTranslationX(f19);
            view.setTranslationY(f20);
            view.setScaleY(this.f7121o);
            view.setScaleX(this.f7120n);
            if (!Float.isNaN(this.f7118l)) {
                view.setRotation(this.f7118l);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    protected void k(AttributeSet attributeSet) {
        super.k(attributeSet);
        this.f7656e = false;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f7132z = true;
                } else if (index == R$styleable.ConstraintLayout_Layout_android_elevation) {
                    this.A = true;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    protected void l() {
        if (this.f7119m == null) {
            return;
        }
        if (this.f7128v || Float.isNaN(this.f7122p) || Float.isNaN(this.f7123q)) {
            if (!Float.isNaN(this.f7116j) && !Float.isNaN(this.f7117k)) {
                this.f7123q = this.f7117k;
                this.f7122p = this.f7116j;
                return;
            }
            View[] viewArrJ = j(this.f7119m);
            int left = viewArrJ[0].getLeft();
            int top = viewArrJ[0].getTop();
            int right = viewArrJ[0].getRight();
            int bottom = viewArrJ[0].getBottom();
            for (int i11 = 0; i11 < this.f7653b; i11++) {
                View view = viewArrJ[i11];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.f7124r = right;
            this.f7125s = bottom;
            this.f7126t = left;
            this.f7127u = top;
            if (Float.isNaN(this.f7116j)) {
                this.f7122p = (left + right) / 2;
            } else {
                this.f7122p = this.f7116j;
            }
            if (Float.isNaN(this.f7117k)) {
                this.f7123q = (top + bottom) / 2;
            } else {
                this.f7123q = this.f7117k;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7119m = (ConstraintLayout) getParent();
        if (this.f7132z || this.A) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i11 = 0; i11 < this.f7653b; i11++) {
                View viewById = this.f7119m.getViewById(this.f7652a[i11]);
                if (viewById != null) {
                    if (this.f7132z) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.A && elevation > 0.0f) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        d();
    }

    @Override // android.view.View
    public void setPivotX(float f11) {
        this.f7116j = f11;
        n();
    }

    @Override // android.view.View
    public void setPivotY(float f11) {
        this.f7117k = f11;
        n();
    }

    @Override // android.view.View
    public void setRotation(float f11) {
        this.f7118l = f11;
        n();
    }

    @Override // android.view.View
    public void setScaleX(float f11) {
        this.f7120n = f11;
        n();
    }

    @Override // android.view.View
    public void setScaleY(float f11) {
        this.f7121o = f11;
        n();
    }

    @Override // android.view.View
    public void setTranslationX(float f11) {
        this.f7130x = f11;
        n();
    }

    @Override // android.view.View
    public void setTranslationY(float f11) {
        this.f7131y = f11;
        n();
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
        d();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePostLayout(ConstraintLayout constraintLayout) {
        m();
        this.f7122p = Float.NaN;
        this.f7123q = Float.NaN;
        ConstraintWidget constraintWidgetB = ((ConstraintLayout.b) getLayoutParams()).b();
        constraintWidgetB.o1(0);
        constraintWidgetB.P0(0);
        l();
        layout(((int) this.f7126t) - getPaddingLeft(), ((int) this.f7127u) - getPaddingTop(), ((int) this.f7124r) + getPaddingRight(), ((int) this.f7125s) + getPaddingBottom());
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void updatePreDraw(ConstraintLayout constraintLayout) {
        this.f7119m = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f7118l = rotation;
        } else {
            if (Float.isNaN(this.f7118l)) {
                return;
            }
            this.f7118l = rotation;
        }
    }
}
