package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.b0;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialToolbar extends Toolbar {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final int f28254c0 = R$style.Widget_MaterialComponents_Toolbar;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final ImageView.ScaleType[] f28255d0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    private Integer U;
    private boolean V;
    private boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private ImageView.ScaleType f28256a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private Boolean f28257b0;

    public MaterialToolbar(@NonNull Context context) {
        this(context, null);
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28254c0;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialToolbar, i11, i12, new int[0]);
        if (typedArrayI.hasValue(R$styleable.MaterialToolbar_navigationIconTint)) {
            setNavigationIconTint(typedArrayI.getColor(R$styleable.MaterialToolbar_navigationIconTint, -1));
        }
        this.V = typedArrayI.getBoolean(R$styleable.MaterialToolbar_titleCentered, false);
        this.W = typedArrayI.getBoolean(R$styleable.MaterialToolbar_subtitleCentered, false);
        int i13 = typedArrayI.getInt(R$styleable.MaterialToolbar_logoScaleType, -1);
        if (i13 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = f28255d0;
            if (i13 < scaleTypeArr.length) {
                this.f28256a0 = scaleTypeArr[i13];
            }
        }
        if (typedArrayI.hasValue(R$styleable.MaterialToolbar_logoAdjustViewBounds)) {
            this.f28257b0 = Boolean.valueOf(typedArrayI.getBoolean(R$styleable.MaterialToolbar_logoAdjustViewBounds, false));
        }
        typedArrayI.recycle();
        D(context2);
    }

    private Pair C(TextView textView, TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i11 = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i11 && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i11 && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    private void D(Context context) {
        Drawable background = getBackground();
        ColorStateList colorStateListValueOf = background == null ? ColorStateList.valueOf(0) : com.google.android.material.drawable.d.g(background);
        if (colorStateListValueOf != null) {
            ab.i iVar = new ab.i();
            iVar.d0(colorStateListValueOf);
            iVar.S(context);
            iVar.c0(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, iVar);
        }
    }

    private void E(View view, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i11 = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i12 = measuredWidth2 + i11;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i11, 0), Math.max(i12 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i11 += iMax;
            i12 -= iMax;
            view.measure(View.MeasureSpec.makeMeasureSpec(i12 - i11, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i11, view.getTop(), i12, view.getBottom());
    }

    private void F() {
        if (this.V || this.W) {
            TextView textViewI = ToolbarUtils.i(this);
            TextView textViewG = ToolbarUtils.g(this);
            if (textViewI == null && textViewG == null) {
                return;
            }
            Pair pairC = C(textViewI, textViewG);
            if (this.V && textViewI != null) {
                E(textViewI, pairC);
            }
            if (!this.W || textViewG == null) {
                return;
            }
            E(textViewG, pairC);
        }
    }

    private Drawable G(Drawable drawable) {
        if (drawable == null || this.U == null) {
            return drawable;
        }
        Drawable drawableR = a1.a.r(drawable.mutate());
        a1.a.n(drawableR, this.U.intValue());
        return drawableR;
    }

    private void H() {
        ImageView imageViewD = ToolbarUtils.d(this);
        if (imageViewD != null) {
            Boolean bool = this.f28257b0;
            if (bool != null) {
                imageViewD.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.f28256a0;
            if (scaleType != null) {
                imageViewD.setScaleType(scaleType);
            }
        }
    }

    public void clearNavigationIconTint() {
        this.U = null;
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            a1.a.o(a1.a.r(navigationIcon.mutate()), null);
            setNavigationIcon(navigationIcon);
        }
    }

    @Nullable
    public ImageView.ScaleType getLogoScaleType() {
        return this.f28256a0;
    }

    @Nullable
    public Integer getNavigationIconTint() {
        return this.U;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(int i11) {
        Menu menu = getMenu();
        boolean z10 = menu instanceof androidx.appcompat.view.menu.f;
        if (z10) {
            ((androidx.appcompat.view.menu.f) menu).i0();
        }
        super.inflateMenu(i11);
        if (z10) {
            ((androidx.appcompat.view.menu.f) menu).h0();
        }
    }

    public boolean isLogoAdjustViewBounds() {
        Boolean bool = this.f28257b0;
        return bool != null && bool.booleanValue();
    }

    public boolean isSubtitleCentered() {
        return this.W;
    }

    public boolean isTitleCentered() {
        return this.V;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ab.j.e(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        F();
        H();
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        ab.j.d(this, f11);
    }

    public void setLogoAdjustViewBounds(boolean z10) {
        Boolean bool = this.f28257b0;
        if (bool == null || bool.booleanValue() != z10) {
            this.f28257b0 = Boolean.valueOf(z10);
            requestLayout();
        }
    }

    public void setLogoScaleType(@NonNull ImageView.ScaleType scaleType) {
        if (this.f28256a0 != scaleType) {
            this.f28256a0 = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(G(drawable));
    }

    public void setNavigationIconTint(int i11) {
        this.U = Integer.valueOf(i11);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z10) {
        if (this.W != z10) {
            this.W = z10;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z10) {
        if (this.V != z10) {
            this.V = z10;
            requestLayout();
        }
    }
}
