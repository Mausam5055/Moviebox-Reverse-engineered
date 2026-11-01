package com.google.android.material.checkbox;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.j0;
import com.google.android.material.R$attr;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.drawable.d;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    public static final int STATE_CHECKED = 1;
    public static final int STATE_INDETERMINATE = 2;
    public static final int STATE_UNCHECKED = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f28646u = R$style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int[] f28647v = {R$attr.state_indeterminate};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int[] f28648w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int[][] f28649x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f28650y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedHashSet f28651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashSet f28652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ColorStateList f28653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f28654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f28655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28656f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CharSequence f28657g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Drawable f28658h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Drawable f28659i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f28660j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ColorStateList f28661k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ColorStateList f28662l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private PorterDuff.Mode f28663m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f28664n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f28665o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f28666p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CharSequence f28667q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f28668r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final androidx.vectordrawable.graphics.drawable.c f28669s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.vectordrawable.graphics.drawable.b f28670t;

    static class SavedState extends View.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f28671a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f28671a = ((Integer) parcel.readValue(getClass().getClassLoader())).intValue();
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private String a() {
            int i11 = this.f28671a;
            if (i11 != 1) {
                return i11 != 2 ? "unchecked" : "indeterminate";
            }
            return "checked";
        }

        public String toString() {
            return "MaterialCheckBox.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " CheckedState=" + a() + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeValue(Integer.valueOf(this.f28671a));
        }
    }

    class a extends androidx.vectordrawable.graphics.drawable.b {
        a() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            ColorStateList colorStateList = MaterialCheckBox.this.f28661k;
            if (colorStateList != null) {
                a1.a.o(drawable, colorStateList);
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.b
        public void onAnimationStart(Drawable drawable) {
            super.onAnimationStart(drawable);
            MaterialCheckBox materialCheckBox = MaterialCheckBox.this;
            ColorStateList colorStateList = materialCheckBox.f28661k;
            if (colorStateList != null) {
                a1.a.n(drawable, colorStateList.getColorForState(materialCheckBox.f28665o, MaterialCheckBox.this.f28661k.getDefaultColor()));
            }
        }
    }

    public interface b {
    }

    public interface c {
    }

    static {
        int i11 = R$attr.state_error;
        f28648w = new int[]{i11};
        f28649x = new int[][]{new int[]{R.attr.state_enabled, i11}, new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
        f28650y = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkboxStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28646u;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28651a = new LinkedHashSet();
        this.f28652b = new LinkedHashSet();
        this.f28669s = androidx.vectordrawable.graphics.drawable.c.a(getContext(), R$drawable.mtrl_checkbox_button_checked_unchecked);
        this.f28670t = new a();
        Context context2 = getContext();
        this.f28658h = androidx.core.widget.c.a(this);
        this.f28661k = getSuperButtonTintList();
        setSupportButtonTintList(null);
        j0 j0VarJ = b0.j(context2, attributeSet, R$styleable.MaterialCheckBox, i11, i12, new int[0]);
        this.f28659i = j0VarJ.g(R$styleable.MaterialCheckBox_buttonIcon);
        if (this.f28658h != null && b0.g(context2) && b(j0VarJ)) {
            super.setButtonDrawable((Drawable) null);
            this.f28658h = g.a.b(context2, R$drawable.mtrl_checkbox_button);
            this.f28660j = true;
            if (this.f28659i == null) {
                this.f28659i = g.a.b(context2, R$drawable.mtrl_checkbox_button_icon);
            }
        }
        this.f28662l = xa.c.b(context2, j0VarJ, R$styleable.MaterialCheckBox_buttonIconTint);
        this.f28663m = f0.r(j0VarJ.k(R$styleable.MaterialCheckBox_buttonIconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f28654d = j0VarJ.a(R$styleable.MaterialCheckBox_useMaterialThemeColors, false);
        this.f28655e = j0VarJ.a(R$styleable.MaterialCheckBox_centerIfNoTextEnabled, true);
        this.f28656f = j0VarJ.a(R$styleable.MaterialCheckBox_errorShown, false);
        this.f28657g = j0VarJ.p(R$styleable.MaterialCheckBox_errorAccessibilityLabel);
        if (j0VarJ.s(R$styleable.MaterialCheckBox_checkedState)) {
            setCheckedState(j0VarJ.k(R$styleable.MaterialCheckBox_checkedState, 0));
        }
        j0VarJ.x();
        c();
    }

    private boolean b(j0 j0Var) {
        return j0Var.n(R$styleable.MaterialCheckBox_android_button, 0) == f28650y && j0Var.n(R$styleable.MaterialCheckBox_buttonCompat, 0) == 0;
    }

    private void c() {
        this.f28658h = d.d(this.f28658h, this.f28661k, androidx.core.widget.c.c(this));
        this.f28659i = d.d(this.f28659i, this.f28662l, this.f28663m);
        e();
        f();
        super.setButtonDrawable(d.a(this.f28658h, this.f28659i));
        refreshDrawableState();
    }

    private void d() {
        if (Build.VERSION.SDK_INT < 30 || this.f28667q != null) {
            return;
        }
        super.setStateDescription(getButtonStateDescription());
    }

    private void e() {
        androidx.vectordrawable.graphics.drawable.c cVar;
        if (this.f28660j) {
            androidx.vectordrawable.graphics.drawable.c cVar2 = this.f28669s;
            if (cVar2 != null) {
                cVar2.g(this.f28670t);
                this.f28669s.c(this.f28670t);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable = this.f28658h;
                if (!(drawable instanceof AnimatedStateListDrawable) || (cVar = this.f28669s) == null) {
                    return;
                }
                ((AnimatedStateListDrawable) drawable).addTransition(R$id.checked, R$id.unchecked, cVar, false);
                ((AnimatedStateListDrawable) this.f28658h).addTransition(R$id.indeterminate, R$id.unchecked, this.f28669s, false);
            }
        }
    }

    private void f() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Drawable drawable = this.f28658h;
        if (drawable != null && (colorStateList2 = this.f28661k) != null) {
            a1.a.o(drawable, colorStateList2);
        }
        Drawable drawable2 = this.f28659i;
        if (drawable2 == null || (colorStateList = this.f28662l) == null) {
            return;
        }
        a1.a.o(drawable2, colorStateList);
    }

    private void g() {
    }

    @NonNull
    private String getButtonStateDescription() {
        int i11 = this.f28664n;
        if (i11 == 1) {
            return getResources().getString(R$string.mtrl_checkbox_state_description_checked);
        }
        return i11 == 0 ? getResources().getString(R$string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R$string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f28653c == null) {
            int[][] iArr = f28649x;
            int[] iArr2 = new int[iArr.length];
            int iD = com.google.android.material.color.b.d(this, R$attr.colorControlActivated);
            int iD2 = com.google.android.material.color.b.d(this, R$attr.colorError);
            int iD3 = com.google.android.material.color.b.d(this, R$attr.colorSurface);
            int iD4 = com.google.android.material.color.b.d(this, R$attr.colorOnSurface);
            iArr2[0] = com.google.android.material.color.b.j(iD3, iD2, 1.0f);
            iArr2[1] = com.google.android.material.color.b.j(iD3, iD, 1.0f);
            iArr2[2] = com.google.android.material.color.b.j(iD3, iD4, 0.54f);
            iArr2[3] = com.google.android.material.color.b.j(iD3, iD4, 0.38f);
            iArr2[4] = com.google.android.material.color.b.j(iD3, iD4, 0.38f);
            this.f28653c = new ColorStateList(iArr, iArr2);
        }
        return this.f28653c;
    }

    @Nullable
    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f28661k;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    public void addOnCheckedStateChangedListener(@NonNull b bVar) {
        this.f28652b.add(bVar);
    }

    public void addOnErrorChangedListener(@NonNull c cVar) {
        this.f28651a.add(cVar);
    }

    public void clearOnCheckedStateChangedListeners() {
        this.f28652b.clear();
    }

    public void clearOnErrorChangedListeners() {
        this.f28651a.clear();
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public Drawable getButtonDrawable() {
        return this.f28658h;
    }

    @Nullable
    public Drawable getButtonIconDrawable() {
        return this.f28659i;
    }

    @Nullable
    public ColorStateList getButtonIconTintList() {
        return this.f28662l;
    }

    @NonNull
    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f28663m;
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public ColorStateList getButtonTintList() {
        return this.f28661k;
    }

    public int getCheckedState() {
        return this.f28664n;
    }

    @Nullable
    public CharSequence getErrorAccessibilityLabel() {
        return this.f28657g;
    }

    public boolean isCenterIfNoTextEnabled() {
        return this.f28655e;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public boolean isChecked() {
        return this.f28664n == 1;
    }

    public boolean isErrorShown() {
        return this.f28656f;
    }

    public boolean isUseMaterialThemeColors() {
        return this.f28654d;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f28654d && this.f28661k == null && this.f28662l == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28647v);
        }
        if (isErrorShown()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28648w);
        }
        this.f28665o = d.f(iArrOnCreateDrawableState);
        g();
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawableA;
        if (!this.f28655e || !TextUtils.isEmpty(getText()) || (drawableA = androidx.core.widget.c.a(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableA.getIntrinsicWidth()) / 2) * (f0.p(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableA.getBounds();
            a1.a.l(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@Nullable AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && isErrorShown()) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f28657g));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.f28671a);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f28671a = getCheckedState();
        return savedState;
    }

    public void removeOnCheckedStateChangedListener(@NonNull b bVar) {
        this.f28652b.remove(bVar);
    }

    public void removeOnErrorChangedListener(@NonNull c cVar) {
        this.f28651a.remove(cVar);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(int i11) {
        setButtonDrawable(g.a.b(getContext(), i11));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@Nullable Drawable drawable) {
        this.f28658h = drawable;
        this.f28660j = false;
        c();
    }

    public void setButtonIconDrawable(@Nullable Drawable drawable) {
        this.f28659i = drawable;
        c();
    }

    public void setButtonIconDrawableResource(int i11) {
        setButtonIconDrawable(g.a.b(getContext(), i11));
    }

    public void setButtonIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.f28662l == colorStateList) {
            return;
        }
        this.f28662l = colorStateList;
        c();
    }

    public void setButtonIconTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.f28663m == mode) {
            return;
        }
        this.f28663m = mode;
        c();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.f28661k == colorStateList) {
            return;
        }
        this.f28661k = colorStateList;
        c();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        c();
    }

    public void setCenterIfNoTextEnabled(boolean z10) {
        this.f28655e = z10;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        setCheckedState(z10 ? 1 : 0);
    }

    public void setCheckedState(int i11) {
        AutofillManager autofillManagerA;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f28664n != i11) {
            this.f28664n = i11;
            super.setChecked(i11 == 1);
            refreshDrawableState();
            d();
            if (this.f28666p) {
                return;
            }
            this.f28666p = true;
            LinkedHashSet linkedHashSet = this.f28652b;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
            }
            if (this.f28664n != 2 && (onCheckedChangeListener = this.f28668r) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (Build.VERSION.SDK_INT >= 26 && (autofillManagerA = x.b.a(getContext().getSystemService(x.a.a()))) != null) {
                autofillManagerA.notifyValueChanged(this);
            }
            this.f28666p = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        g();
    }

    public void setErrorAccessibilityLabel(@Nullable CharSequence charSequence) {
        this.f28657g = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i11) {
        setErrorAccessibilityLabel(i11 != 0 ? getResources().getText(i11) : null);
    }

    public void setErrorShown(boolean z10) {
        if (this.f28656f == z10) {
            return;
        }
        this.f28656f = z10;
        refreshDrawableState();
        Iterator it = this.f28651a.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f28668r = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(@Nullable CharSequence charSequence) {
        this.f28667q = charSequence;
        if (charSequence == null) {
            d();
        } else {
            super.setStateDescription(charSequence);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f28654d = z10;
        if (z10) {
            androidx.core.widget.c.d(this, getMaterialThemeColorsTintList());
        } else {
            androidx.core.widget.c.d(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }
}
