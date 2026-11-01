package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.c;
import bb.a;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.color.b;
import com.google.android.material.internal.b0;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f29511c = R$style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[][] f29512d = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ColorStateList f29513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f29514b;

    public MaterialRadioButton(@NonNull Context context) {
        this(context, null);
    }

    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f29511c;
        super(a.c(context, attributeSet, i11, i12), attributeSet, i11);
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialRadioButton, i11, i12, new int[0]);
        if (typedArrayI.hasValue(R$styleable.MaterialRadioButton_buttonTint)) {
            c.d(this, xa.c.a(context2, typedArrayI, R$styleable.MaterialRadioButton_buttonTint));
        }
        this.f29514b = typedArrayI.getBoolean(R$styleable.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayI.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f29513a == null) {
            int iD = b.d(this, R$attr.colorControlActivated);
            int iD2 = b.d(this, R$attr.colorOnSurface);
            int iD3 = b.d(this, R$attr.colorSurface);
            int[][] iArr = f29512d;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = b.j(iD3, iD, 1.0f);
            iArr2[1] = b.j(iD3, iD2, 0.54f);
            iArr2[2] = b.j(iD3, iD2, 0.38f);
            iArr2[3] = b.j(iD3, iD2, 0.38f);
            this.f29513a = new ColorStateList(iArr, iArr2);
        }
        return this.f29513a;
    }

    public boolean isUseMaterialThemeColors() {
        return this.f29514b;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f29514b && c.b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f29514b = z10;
        if (z10) {
            c.d(this, getMaterialThemeColorsTintList());
        } else {
            c.d(this, null);
        }
    }
}
