package com.google.android.material.materialswitch;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.j0;
import bb.a;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.drawable.d;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import z0.b;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialSwitch extends SwitchCompat {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final int f29288k0 = R$style.Widget_Material3_CompoundButton_MaterialSwitch;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final int[] f29289l0 = {R$attr.state_with_icon};
    private Drawable U;
    private Drawable V;
    private int W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private Drawable f29290a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private Drawable f29291b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private ColorStateList f29292c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private ColorStateList f29293d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private PorterDuff.Mode f29294e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private ColorStateList f29295f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private ColorStateList f29296g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private PorterDuff.Mode f29297h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private int[] f29298i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private int[] f29299j0;

    public MaterialSwitch(@NonNull Context context) {
        this(context, null);
    }

    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialSwitchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialSwitch(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f29288k0;
        super(a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.W = -1;
        Context context2 = getContext();
        this.U = super.getThumbDrawable();
        this.f29292c0 = super.getThumbTintList();
        super.setThumbTintList(null);
        this.f29290a0 = super.getTrackDrawable();
        this.f29295f0 = super.getTrackTintList();
        super.setTrackTintList(null);
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.MaterialSwitch, i11, i12, new int[0]);
        this.V = j0VarJ.g(R$styleable.MaterialSwitch_thumbIcon);
        this.W = j0VarJ.f(R$styleable.MaterialSwitch_thumbIconSize, -1);
        this.f29293d0 = j0VarJ.c(R$styleable.MaterialSwitch_thumbIconTint);
        int iK = j0VarJ.k(R$styleable.MaterialSwitch_thumbIconTintMode, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f29294e0 = f0.r(iK, mode);
        this.f29291b0 = j0VarJ.g(R$styleable.MaterialSwitch_trackDecoration);
        this.f29296g0 = j0VarJ.c(R$styleable.MaterialSwitch_trackDecorationTint);
        this.f29297h0 = f0.r(j0VarJ.k(R$styleable.MaterialSwitch_trackDecorationTintMode, -1), mode);
        j0VarJ.x();
        setEnforceSwitchWidth(false);
        p();
        q();
    }

    private void p() {
        this.U = d.c(this.U, this.f29292c0, getThumbTintMode());
        this.V = d.c(this.V, this.f29293d0, this.f29294e0);
        s();
        Drawable drawable = this.U;
        Drawable drawable2 = this.V;
        int i11 = this.W;
        super.setThumbDrawable(d.b(drawable, drawable2, i11, i11));
        refreshDrawableState();
    }

    private void q() {
        this.f29290a0 = d.c(this.f29290a0, this.f29295f0, getTrackTintMode());
        this.f29291b0 = d.c(this.f29291b0, this.f29296g0, this.f29297h0);
        s();
        Drawable layerDrawable = this.f29290a0;
        if (layerDrawable != null && this.f29291b0 != null) {
            layerDrawable = new LayerDrawable(new Drawable[]{this.f29290a0, this.f29291b0});
        } else if (layerDrawable == null) {
            layerDrawable = this.f29291b0;
        }
        if (layerDrawable != null) {
            setSwitchMinWidth(layerDrawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(layerDrawable);
    }

    private static void r(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f11) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        a1.a.n(drawable, b.d(colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0), f11));
    }

    private void s() {
        if (this.f29292c0 == null && this.f29293d0 == null && this.f29295f0 == null && this.f29296g0 == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.f29292c0;
        if (colorStateList != null) {
            r(this.U, colorStateList, this.f29298i0, this.f29299j0, thumbPosition);
        }
        ColorStateList colorStateList2 = this.f29293d0;
        if (colorStateList2 != null) {
            r(this.V, colorStateList2, this.f29298i0, this.f29299j0, thumbPosition);
        }
        ColorStateList colorStateList3 = this.f29295f0;
        if (colorStateList3 != null) {
            r(this.f29290a0, colorStateList3, this.f29298i0, this.f29299j0, thumbPosition);
        }
        ColorStateList colorStateList4 = this.f29296g0;
        if (colorStateList4 != null) {
            r(this.f29291b0, colorStateList4, this.f29298i0, this.f29299j0, thumbPosition);
        }
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getThumbDrawable() {
        return this.U;
    }

    @Nullable
    public Drawable getThumbIconDrawable() {
        return this.V;
    }

    public int getThumbIconSize() {
        return this.W;
    }

    @Nullable
    public ColorStateList getThumbIconTintList() {
        return this.f29293d0;
    }

    @NonNull
    public PorterDuff.Mode getThumbIconTintMode() {
        return this.f29294e0;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f29292c0;
    }

    @Nullable
    public Drawable getTrackDecorationDrawable() {
        return this.f29291b0;
    }

    @Nullable
    public ColorStateList getTrackDecorationTintList() {
        return this.f29296g0;
    }

    @NonNull
    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.f29297h0;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public Drawable getTrackDrawable() {
        return this.f29290a0;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f29295f0;
    }

    @Override // android.view.View
    public void invalidate() {
        s();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 1);
        if (this.V != null) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f29289l0);
        }
        this.f29298i0 = d.j(iArrOnCreateDrawableState);
        this.f29299j0 = d.f(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(@Nullable Drawable drawable) {
        this.U = drawable;
        p();
    }

    public void setThumbIconDrawable(@Nullable Drawable drawable) {
        this.V = drawable;
        p();
    }

    public void setThumbIconResource(int i11) {
        setThumbIconDrawable(g.a.b(getContext(), i11));
    }

    public void setThumbIconSize(int i11) {
        if (this.W != i11) {
            this.W = i11;
            p();
        }
    }

    public void setThumbIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29293d0 = colorStateList;
        p();
    }

    public void setThumbIconTintMode(@NonNull PorterDuff.Mode mode) {
        this.f29294e0 = mode;
        p();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f29292c0 = colorStateList;
        p();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        p();
    }

    public void setTrackDecorationDrawable(@Nullable Drawable drawable) {
        this.f29291b0 = drawable;
        q();
    }

    public void setTrackDecorationResource(int i11) {
        setTrackDecorationDrawable(g.a.b(getContext(), i11));
    }

    public void setTrackDecorationTintList(@Nullable ColorStateList colorStateList) {
        this.f29296g0 = colorStateList;
        q();
    }

    public void setTrackDecorationTintMode(@NonNull PorterDuff.Mode mode) {
        this.f29297h0 = mode;
        q();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(@Nullable Drawable drawable) {
        this.f29290a0 = drawable;
        q();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f29295f0 = colorStateList;
        q();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        q();
    }
}
