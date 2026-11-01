package com.google.android.material.card;

import ab.j;
import ab.n;
import ab.q;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialCardView extends CardView implements Checkable, q {
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_END = 8388693;
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_START = 8388691;
    public static final int CHECKED_ICON_GRAVITY_TOP_END = 8388661;
    public static final int CHECKED_ICON_GRAVITY_TOP_START = 8388659;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int[] f28537n = {R.attr.state_checkable};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f28538o = {R.attr.state_checked};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f28539p = {R$attr.state_dragged};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f28540q = R$style.Widget_MaterialComponents_CardView;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f28541j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f28542k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f28543l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f28544m;

    public interface a {
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialCardViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i11) {
        int i12 = f28540q;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28543l = false;
        this.f28544m = false;
        this.f28542k = true;
        TypedArray typedArrayI = b0.i(getContext(), attributeSet, R$styleable.MaterialCardView, i11, i12, new int[0]);
        b bVar = new b(this, attributeSet, i11, i12);
        this.f28541j = bVar;
        bVar.M(super.getCardBackgroundColor());
        bVar.c0(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        bVar.J(typedArrayI);
        typedArrayI.recycle();
    }

    private void c() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f28541j.k();
        }
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f28541j.l().getBounds());
        return rectF;
    }

    void d(int i11, int i12, int i13, int i14) {
        super.setContentPadding(i11, i12, i13, i14);
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f28541j.m();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f28541j.n();
    }

    float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f28541j.o();
    }

    public int getCheckedIconGravity() {
        return this.f28541j.p();
    }

    public int getCheckedIconMargin() {
        return this.f28541j.q();
    }

    public int getCheckedIconSize() {
        return this.f28541j.r();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f28541j.s();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f28541j.C().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f28541j.C().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f28541j.C().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f28541j.C().top;
    }

    public float getProgress() {
        return this.f28541j.w();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f28541j.u();
    }

    public ColorStateList getRippleColor() {
        return this.f28541j.x();
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return this.f28541j.y();
    }

    @Deprecated
    public int getStrokeColor() {
        return this.f28541j.z();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f28541j.A();
    }

    public int getStrokeWidth() {
        return this.f28541j.B();
    }

    public boolean isCheckable() {
        b bVar = this.f28541j;
        return bVar != null && bVar.F();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f28543l;
    }

    public boolean isDragged() {
        return this.f28544m;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f28541j.g0();
        j.f(this, this.f28541j.l());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 3);
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28537n);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28538o);
        }
        if (isDragged()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28539p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        this.f28541j.K(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f28542k) {
            if (!this.f28541j.E()) {
                this.f28541j.L(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i11) {
        this.f28541j.M(ColorStateList.valueOf(i11));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f28541j.M(colorStateList);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f11) {
        super.setCardElevation(f11);
        this.f28541j.i0();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f28541j.N(colorStateList);
    }

    public void setCheckable(boolean z10) {
        this.f28541j.O(z10);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (this.f28543l != z10) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f28541j.R(drawable);
    }

    public void setCheckedIconGravity(int i11) {
        if (this.f28541j.p() != i11) {
            this.f28541j.S(i11);
        }
    }

    public void setCheckedIconMargin(int i11) {
        this.f28541j.T(i11);
    }

    public void setCheckedIconMarginResource(int i11) {
        if (i11 != -1) {
            this.f28541j.T(getResources().getDimensionPixelSize(i11));
        }
    }

    public void setCheckedIconResource(int i11) {
        this.f28541j.R(g.a.b(getContext(), i11));
    }

    public void setCheckedIconSize(int i11) {
        this.f28541j.U(i11);
    }

    public void setCheckedIconSizeResource(int i11) {
        if (i11 != 0) {
            this.f28541j.U(getResources().getDimensionPixelSize(i11));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f28541j.V(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z10) {
        super.setClickable(z10);
        b bVar = this.f28541j;
        if (bVar != null) {
            bVar.g0();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i11, int i12, int i13, int i14) {
        this.f28541j.c0(i11, i12, i13, i14);
    }

    public void setDragged(boolean z10) {
        if (this.f28544m != z10) {
            this.f28544m = z10;
            refreshDrawableState();
            c();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f11) {
        super.setMaxCardElevation(f11);
        this.f28541j.k0();
    }

    public void setOnCheckedChangeListener(@Nullable a aVar) {
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z10) {
        super.setPreventCornerOverlap(z10);
        this.f28541j.k0();
        this.f28541j.h0();
    }

    public void setProgress(float f11) {
        this.f28541j.X(f11);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f11) {
        super.setRadius(f11);
        this.f28541j.W(f11);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f28541j.Y(colorStateList);
    }

    public void setRippleColorResource(int i11) {
        this.f28541j.Y(g.a.a(getContext(), i11));
    }

    @Override // ab.q
    public void setShapeAppearanceModel(@NonNull n nVar) {
        setClipToOutline(nVar.u(getBoundsAsRectF()));
        this.f28541j.Z(nVar);
    }

    public void setStrokeColor(int i11) {
        setStrokeColor(ColorStateList.valueOf(i11));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f28541j.a0(colorStateList);
        invalidate();
    }

    public void setStrokeWidth(int i11) {
        this.f28541j.b0(i11);
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z10) {
        super.setUseCompatPadding(z10);
        this.f28541j.k0();
        this.f28541j.h0();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (isCheckable() && isEnabled()) {
            this.f28543l = !this.f28543l;
            refreshDrawableState();
            c();
            this.f28541j.Q(this.f28543l, true);
        }
    }
}
