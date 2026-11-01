package com.google.android.material.imageview;

import ab.i;
import ab.n;
import ab.o;
import ab.q;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import xa.c;

/* JADX INFO: loaded from: classes.dex */
public class ShapeableImageView extends AppCompatImageView implements q {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f29059v = R$style.Widget_MaterialComponents_ShapeableImageView;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o f29060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RectF f29061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RectF f29062f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f29063g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f29064h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Path f29065i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ColorStateList f29066j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private i f29067k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private n f29068l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f29069m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Path f29070n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29071o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f29072p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f29073q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f29074r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f29075s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29076t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f29077u;

    /* JADX INFO: loaded from: classes4.dex */
    class a extends ViewOutlineProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Rect f29078a = new Rect();

        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (ShapeableImageView.this.f29068l == null) {
                return;
            }
            if (ShapeableImageView.this.f29067k == null) {
                ShapeableImageView.this.f29067k = new i(ShapeableImageView.this.f29068l);
            }
            ShapeableImageView.this.f29061e.round(this.f29078a);
            ShapeableImageView.this.f29067k.setBounds(this.f29078a);
            ShapeableImageView.this.f29067k.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ShapeableImageView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f29059v;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f29060d = o.k();
        this.f29065i = new Path();
        this.f29077u = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.f29064h = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f29061e = new RectF();
        this.f29062f = new RectF();
        this.f29070n = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.ShapeableImageView, i11, i12);
        setLayerType(2, null);
        this.f29066j = c.a(context2, typedArrayObtainStyledAttributes, R$styleable.ShapeableImageView_strokeColor);
        this.f29069m = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_strokeWidth, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPadding, 0);
        this.f29071o = dimensionPixelSize;
        this.f29072p = dimensionPixelSize;
        this.f29073q = dimensionPixelSize;
        this.f29074r = dimensionPixelSize;
        this.f29071o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingLeft, dimensionPixelSize);
        this.f29072p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingTop, dimensionPixelSize);
        this.f29073q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingRight, dimensionPixelSize);
        this.f29074r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingBottom, dimensionPixelSize);
        this.f29075s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingStart, Integer.MIN_VALUE);
        this.f29076t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingEnd, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.f29063g = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f29068l = n.e(context2, attributeSet, i11, i12).m();
        setOutlineProvider(new a());
    }

    private void e(Canvas canvas) {
        if (this.f29066j == null) {
            return;
        }
        this.f29063g.setStrokeWidth(this.f29069m);
        int colorForState = this.f29066j.getColorForState(getDrawableState(), this.f29066j.getDefaultColor());
        if (this.f29069m <= 0.0f || colorForState == 0) {
            return;
        }
        this.f29063g.setColor(colorForState);
        canvas.drawPath(this.f29065i, this.f29063g);
    }

    private boolean f() {
        return (this.f29075s == Integer.MIN_VALUE && this.f29076t == Integer.MIN_VALUE) ? false : true;
    }

    private boolean g() {
        return getLayoutDirection() == 1;
    }

    private void h(int i11, int i12) {
        this.f29061e.set(getPaddingLeft(), getPaddingTop(), i11 - getPaddingRight(), i12 - getPaddingBottom());
        this.f29060d.e(this.f29068l, 1.0f, this.f29061e, this.f29065i);
        this.f29070n.rewind();
        this.f29070n.addPath(this.f29065i);
        this.f29062f.set(0.0f, 0.0f, i11, i12);
        this.f29070n.addRect(this.f29062f, Path.Direction.CCW);
    }

    public int getContentPaddingBottom() {
        return this.f29074r;
    }

    public final int getContentPaddingEnd() {
        int i11 = this.f29076t;
        if (i11 != Integer.MIN_VALUE) {
            return i11;
        }
        return g() ? this.f29071o : this.f29073q;
    }

    public int getContentPaddingLeft() {
        int i11;
        int i12;
        if (f()) {
            if (g() && (i12 = this.f29076t) != Integer.MIN_VALUE) {
                return i12;
            }
            if (!g() && (i11 = this.f29075s) != Integer.MIN_VALUE) {
                return i11;
            }
        }
        return this.f29071o;
    }

    public int getContentPaddingRight() {
        int i11;
        int i12;
        if (f()) {
            if (g() && (i12 = this.f29075s) != Integer.MIN_VALUE) {
                return i12;
            }
            if (!g() && (i11 = this.f29076t) != Integer.MIN_VALUE) {
                return i11;
            }
        }
        return this.f29073q;
    }

    public final int getContentPaddingStart() {
        int i11 = this.f29075s;
        if (i11 != Integer.MIN_VALUE) {
            return i11;
        }
        return g() ? this.f29073q : this.f29071o;
    }

    public int getContentPaddingTop() {
        return this.f29072p;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return this.f29068l;
    }

    @Nullable
    public ColorStateList getStrokeColor() {
        return this.f29066j;
    }

    public float getStrokeWidth() {
        return this.f29069m;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f29070n, this.f29064h);
        e(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (!this.f29077u && isLayoutDirectionResolved()) {
            this.f29077u = true;
            if (isPaddingRelative() || f()) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        h(i11, i12);
    }

    public void setContentPadding(int i11, int i12, int i13, int i14) {
        this.f29075s = Integer.MIN_VALUE;
        this.f29076t = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.f29071o) + i11, (super.getPaddingTop() - this.f29072p) + i12, (super.getPaddingRight() - this.f29073q) + i13, (super.getPaddingBottom() - this.f29074r) + i14);
        this.f29071o = i11;
        this.f29072p = i12;
        this.f29073q = i13;
        this.f29074r = i14;
    }

    public void setContentPaddingRelative(int i11, int i12, int i13, int i14) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i11, (super.getPaddingTop() - this.f29072p) + i12, (super.getPaddingEnd() - getContentPaddingEnd()) + i13, (super.getPaddingBottom() - this.f29074r) + i14);
        this.f29071o = g() ? i13 : i11;
        this.f29072p = i12;
        if (!g()) {
            i11 = i13;
        }
        this.f29073q = i11;
        this.f29074r = i14;
    }

    @Override // android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
        super.setPadding(i11 + getContentPaddingLeft(), i12 + getContentPaddingTop(), i13 + getContentPaddingRight(), i14 + getContentPaddingBottom());
    }

    @Override // android.view.View
    public void setPaddingRelative(int i11, int i12, int i13, int i14) {
        super.setPaddingRelative(i11 + getContentPaddingStart(), i12 + getContentPaddingTop(), i13 + getContentPaddingEnd(), i14 + getContentPaddingBottom());
    }

    @Override // ab.q
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.f29068l = nVar;
        i iVar = this.f29067k;
        if (iVar != null) {
            iVar.setShapeAppearanceModel(nVar);
        }
        h(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        this.f29066j = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i11) {
        setStrokeColor(g.a.a(getContext(), i11));
    }

    public void setStrokeWidth(float f11) {
        if (this.f29069m != f11) {
            this.f29069m = f11;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i11) {
        setStrokeWidth(getResources().getDimensionPixelSize(i11));
    }
}
