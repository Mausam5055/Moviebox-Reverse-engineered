package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.R$attr;
import androidx.cardview.R$color;
import androidx.cardview.R$style;
import androidx.cardview.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f2216h = {R.attr.colorBackground};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final c f2217i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Rect f2222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Rect f2223f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f2224g;

    class a implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable f2225a;

        a() {
        }

        @Override // androidx.cardview.widget.b
        public void a(int i11, int i12, int i13, int i14) {
            CardView.this.f2223f.set(i11, i12, i13, i14);
            CardView cardView = CardView.this;
            Rect rect = cardView.f2222e;
            CardView.super.setPadding(i11 + rect.left, i12 + rect.top, i13 + rect.right, i14 + rect.bottom);
        }

        @Override // androidx.cardview.widget.b
        public void b(Drawable drawable) {
            this.f2225a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // androidx.cardview.widget.b
        public boolean c() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.b
        public Drawable d() {
            return this.f2225a;
        }

        @Override // androidx.cardview.widget.b
        public boolean e() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // androidx.cardview.widget.b
        public View f() {
            return CardView.this;
        }
    }

    static {
        androidx.cardview.widget.a aVar = new androidx.cardview.widget.a();
        f2217i = aVar;
        aVar.l();
    }

    public CardView(@NonNull Context context) {
        this(context, null);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.cardViewStyle);
    }

    public CardView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i11);
        Rect rect = new Rect();
        this.f2222e = rect;
        this.f2223f = new Rect();
        a aVar = new a();
        this.f2224g = aVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CardView, i11, R$style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardBackgroundColor)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(R$styleable.CardView_cardBackgroundColor);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f2216h);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(R$color.cardview_light_background) : getResources().getColor(R$color.cardview_dark_background));
        }
        ColorStateList colorStateList = colorStateListValueOf;
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardElevation, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardMaxElevation, 0.0f);
        this.f2218a = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardUseCompatPadding, false);
        this.f2219b = typedArrayObtainStyledAttributes.getBoolean(R$styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPadding, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingTop, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingRight, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        float f11 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.f2220c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minWidth, 0);
        this.f2221d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.CardView_android_minHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        f2217i.h(aVar, context, colorStateList, dimension, dimension2, f11);
    }

    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return f2217i.e(this.f2224g);
    }

    public float getCardElevation() {
        return f2217i.i(this.f2224g);
    }

    public int getContentPaddingBottom() {
        return this.f2222e.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f2222e.left;
    }

    public int getContentPaddingRight() {
        return this.f2222e.right;
    }

    public int getContentPaddingTop() {
        return this.f2222e.top;
    }

    public float getMaxCardElevation() {
        return f2217i.d(this.f2224g);
    }

    public boolean getPreventCornerOverlap() {
        return this.f2219b;
    }

    public float getRadius() {
        return f2217i.b(this.f2224g);
    }

    public boolean getUseCompatPadding() {
        return this.f2218a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        c cVar = f2217i;
        if (cVar instanceof androidx.cardview.widget.a) {
            super.onMeasure(i11, i12);
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(cVar.m(this.f2224g)), View.MeasureSpec.getSize(i11)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i12);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i12 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(cVar.f(this.f2224g)), View.MeasureSpec.getSize(i12)), mode2);
        }
        super.onMeasure(i11, i12);
    }

    public void setCardBackgroundColor(int i11) {
        f2217i.n(this.f2224g, ColorStateList.valueOf(i11));
    }

    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        f2217i.n(this.f2224g, colorStateList);
    }

    public void setCardElevation(float f11) {
        f2217i.c(this.f2224g, f11);
    }

    public void setContentPadding(int i11, int i12, int i13, int i14) {
        this.f2222e.set(i11, i12, i13, i14);
        f2217i.k(this.f2224g);
    }

    public void setMaxCardElevation(float f11) {
        f2217i.o(this.f2224g, f11);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i11) {
        this.f2221d = i11;
        super.setMinimumHeight(i11);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i11) {
        this.f2220c = i11;
        super.setMinimumWidth(i11);
    }

    @Override // android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i11, int i12, int i13, int i14) {
    }

    public void setPreventCornerOverlap(boolean z10) {
        if (z10 != this.f2219b) {
            this.f2219b = z10;
            f2217i.g(this.f2224g);
        }
    }

    public void setRadius(float f11) {
        f2217i.a(this.f2224g, f11);
    }

    public void setUseCompatPadding(boolean z10) {
        if (this.f2218a != z10) {
            this.f2218a = z10;
            f2217i.j(this.f2224g);
        }
    }
}
