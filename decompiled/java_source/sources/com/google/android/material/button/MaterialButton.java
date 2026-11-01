package com.google.android.material.button;

import ab.j;
import ab.n;
import ab.q;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.m;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import xa.c;

/* JADX INFO: loaded from: classes4.dex */
public class MaterialButton extends AppCompatButton implements Checkable, q {
    public static final int ICON_GRAVITY_END = 3;
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_END = 4;
    public static final int ICON_GRAVITY_TEXT_START = 2;
    public static final int ICON_GRAVITY_TEXT_TOP = 32;
    public static final int ICON_GRAVITY_TOP = 16;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f28479o = {R.attr.state_checkable};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f28480p = {R.attr.state_checked};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f28481q = R$style.Widget_MaterialComponents_Button;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.material.button.a f28482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashSet f28483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f28484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PorterDuff.Mode f28485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorStateList f28486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f28487f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f28488g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28489h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f28490i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f28491j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f28492k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f28493l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f28494m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f28495n;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f28496a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            a(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void a(Parcel parcel) {
            this.f28496a = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeInt(this.f28496a ? 1 : 0);
        }
    }

    public interface a {
    }

    interface b {
        void a(MaterialButton materialButton, boolean z10);
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = f28481q;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28483b = new LinkedHashSet();
        this.f28493l = false;
        this.f28494m = false;
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialButton, i11, i12, new int[0]);
        this.f28492k = typedArrayI.getDimensionPixelSize(R$styleable.MaterialButton_iconPadding, 0);
        this.f28485d = f0.r(typedArrayI.getInt(R$styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f28486e = c.a(getContext(), typedArrayI, R$styleable.MaterialButton_iconTint);
        this.f28487f = c.e(getContext(), typedArrayI, R$styleable.MaterialButton_icon);
        this.f28495n = typedArrayI.getInteger(R$styleable.MaterialButton_iconGravity, 1);
        this.f28489h = typedArrayI.getDimensionPixelSize(R$styleable.MaterialButton_iconSize, 0);
        com.google.android.material.button.a aVar = new com.google.android.material.button.a(this, n.e(context2, attributeSet, i11, i12).m());
        this.f28482a = aVar;
        aVar.r(typedArrayI);
        typedArrayI.recycle();
        setCompoundDrawablePadding(this.f28492k);
        g(this.f28487f != null);
    }

    private boolean a() {
        int i11 = this.f28495n;
        return i11 == 3 || i11 == 4;
    }

    private boolean b() {
        int i11 = this.f28495n;
        return i11 == 1 || i11 == 2;
    }

    private boolean c() {
        int i11 = this.f28495n;
        return i11 == 16 || i11 == 32;
    }

    private boolean d() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    private boolean e() {
        com.google.android.material.button.a aVar = this.f28482a;
        return (aVar == null || aVar.o()) ? false : true;
    }

    private void f() {
        if (b()) {
            m.k(this, this.f28487f, null, null, null);
        } else if (a()) {
            m.k(this, null, null, this.f28487f, null);
        } else if (c()) {
            m.k(this, null, this.f28487f, null, null);
        }
    }

    private void g(boolean z10) {
        Drawable drawable = this.f28487f;
        if (drawable != null) {
            Drawable drawableMutate = a1.a.r(drawable).mutate();
            this.f28487f = drawableMutate;
            a1.a.o(drawableMutate, this.f28486e);
            PorterDuff.Mode mode = this.f28485d;
            if (mode != null) {
                a1.a.p(this.f28487f, mode);
            }
            int intrinsicWidth = this.f28489h;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f28487f.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f28489h;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f28487f.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f28487f;
            int i11 = this.f28490i;
            int i12 = this.f28491j;
            drawable2.setBounds(i11, i12, intrinsicWidth + i11, intrinsicHeight + i12);
            this.f28487f.setVisible(true, z10);
        }
        if (z10) {
            f();
            return;
        }
        Drawable[] drawableArrA = m.a(this);
        Drawable drawable3 = drawableArrA[0];
        Drawable drawable4 = drawableArrA[1];
        Drawable drawable5 = drawableArrA[2];
        if ((!b() || drawable3 == this.f28487f) && ((!a() || drawable5 == this.f28487f) && (!c() || drawable4 == this.f28487f))) {
            return;
        }
        f();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i11 = 0; i11 < lineCount; i11++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i11));
        }
        return (int) Math.ceil(fMax);
    }

    private void h(int i11, int i12) {
        if (this.f28487f == null || getLayout() == null) {
            return;
        }
        if (!b() && !a()) {
            if (c()) {
                this.f28490i = 0;
                if (this.f28495n == 16) {
                    this.f28491j = 0;
                    g(false);
                    return;
                }
                int intrinsicHeight = this.f28489h;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f28487f.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i12 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f28492k) - getPaddingBottom()) / 2);
                if (this.f28491j != iMax) {
                    this.f28491j = iMax;
                    g(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f28491j = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i13 = this.f28495n;
        if (i13 == 1 || i13 == 3 || ((i13 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i13 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f28490i = 0;
            g(false);
            return;
        }
        int intrinsicWidth = this.f28489h;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f28487f.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i11 - getTextLayoutWidth()) - ViewCompat.getPaddingEnd(this)) - intrinsicWidth) - this.f28492k) - ViewCompat.getPaddingStart(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if (d() != (this.f28495n == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f28490i != textLayoutWidth) {
            this.f28490i = textLayoutWidth;
            g(false);
        }
    }

    public void addOnCheckedChangeListener(@NonNull a aVar) {
        this.f28483b.add(aVar);
    }

    public void clearOnCheckedChangeListeners() {
        this.f28483b.clear();
    }

    @NonNull
    String getA11yClassName() {
        if (TextUtils.isEmpty(this.f28488g)) {
            return (isCheckable() ? CompoundButton.class : Button.class).getName();
        }
        return this.f28488g;
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (e()) {
            return this.f28482a.b();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f28487f;
    }

    public int getIconGravity() {
        return this.f28495n;
    }

    public int getIconPadding() {
        return this.f28492k;
    }

    public int getIconSize() {
        return this.f28489h;
    }

    public ColorStateList getIconTint() {
        return this.f28486e;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f28485d;
    }

    public int getInsetBottom() {
        return this.f28482a.c();
    }

    public int getInsetTop() {
        return this.f28482a.d();
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (e()) {
            return this.f28482a.h();
        }
        return null;
    }

    @NonNull
    public n getShapeAppearanceModel() {
        if (e()) {
            return this.f28482a.i();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.f28482a.j();
        }
        return null;
    }

    public int getStrokeWidth() {
        if (e()) {
            return this.f28482a.k();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.f28482a.l() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return e() ? this.f28482a.m() : super.getSupportBackgroundTintMode();
    }

    public boolean isCheckable() {
        com.google.android.material.button.a aVar = this.f28482a;
        return aVar != null && aVar.p();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f28493l;
    }

    public boolean isToggleCheckedStateOnClick() {
        return this.f28482a.q();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            j.f(this, this.f28482a.f());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 2);
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28479o);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28480p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f28496a);
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f28496a = this.f28493l;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        super.onTextChanged(charSequence, i11, i12, i13);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        if (this.f28482a.q()) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f28487f != null) {
            if (this.f28487f.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void removeOnCheckedChangeListener(@NonNull a aVar) {
        this.f28483b.remove(aVar);
    }

    void setA11yClassName(@Nullable String str) {
        this.f28488g = str;
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        if (e()) {
            this.f28482a.s(i11);
        } else {
            super.setBackgroundColor(i11);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!e()) {
            super.setBackgroundDrawable(drawable);
        } else {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            }
            Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
            this.f28482a.t();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i11) {
        setBackgroundDrawable(i11 != 0 ? g.a.b(getContext(), i11) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z10) {
        if (e()) {
            this.f28482a.u(z10);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (isCheckable() && isEnabled() && this.f28493l != z10) {
            this.f28493l = z10;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                ((MaterialButtonToggleGroup) getParent()).j(this, this.f28493l);
            }
            if (this.f28494m) {
                return;
            }
            this.f28494m = true;
            Iterator it = this.f28483b.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
            this.f28494m = false;
        }
    }

    public void setCornerRadius(int i11) {
        if (e()) {
            this.f28482a.v(i11);
        }
    }

    public void setCornerRadiusResource(int i11) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i11));
        }
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        if (e()) {
            this.f28482a.f().c0(f11);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f28487f != drawable) {
            this.f28487f = drawable;
            g(true);
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i11) {
        if (this.f28495n != i11) {
            this.f28495n = i11;
            h(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i11) {
        if (this.f28492k != i11) {
            this.f28492k = i11;
            setCompoundDrawablePadding(i11);
        }
    }

    public void setIconResource(int i11) {
        setIcon(i11 != 0 ? g.a.b(getContext(), i11) : null);
    }

    public void setIconSize(int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f28489h != i11) {
            this.f28489h = i11;
            g(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f28486e != colorStateList) {
            this.f28486e = colorStateList;
            g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f28485d != mode) {
            this.f28485d = mode;
            g(false);
        }
    }

    public void setIconTintResource(int i11) {
        setIconTint(g.a.a(getContext(), i11));
    }

    public void setInsetBottom(int i11) {
        this.f28482a.w(i11);
    }

    public void setInsetTop(int i11) {
        this.f28482a.x(i11);
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    void setOnPressedChangeListenerInternal(@Nullable b bVar) {
        this.f28484c = bVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        b bVar = this.f28484c;
        if (bVar != null) {
            bVar.a(this, z10);
        }
        super.setPressed(z10);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            this.f28482a.y(colorStateList);
        }
    }

    public void setRippleColorResource(int i11) {
        if (e()) {
            setRippleColor(g.a.a(getContext(), i11));
        }
    }

    @Override // ab.q
    public void setShapeAppearanceModel(@NonNull n nVar) {
        if (!e()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f28482a.z(nVar);
    }

    void setShouldDrawSurfaceColorStroke(boolean z10) {
        if (e()) {
            this.f28482a.A(z10);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            this.f28482a.B(colorStateList);
        }
    }

    public void setStrokeColorResource(int i11) {
        if (e()) {
            setStrokeColor(g.a.a(getContext(), i11));
        }
    }

    public void setStrokeWidth(int i11) {
        if (e()) {
            this.f28482a.C(i11);
        }
    }

    public void setStrokeWidthResource(int i11) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i11));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (e()) {
            this.f28482a.D(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (e()) {
            this.f28482a.E(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i11) {
        super.setTextAlignment(i11);
        h(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z10) {
        this.f28482a.F(z10);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f28493l);
    }
}
