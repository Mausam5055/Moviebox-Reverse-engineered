package com.google.android.material.chip;

import ab.j;
import ab.n;
import ab.q;
import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.internal.l;
import java.util.List;
import oa.h;
import xa.d;
import xa.f;

/* JADX INFO: loaded from: classes4.dex */
public class Chip extends AppCompatCheckBox implements com.google.android.material.chip.a.InterfaceC0393a, q, l {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f28673t = R$style.Widget_MaterialComponents_Chip_Action;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Rect f28674u = new Rect();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int[] f28675v = {R.attr.state_selected};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int[] f28676w = {R.attr.state_checkable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.material.chip.a f28677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InsetDrawable f28678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RippleDrawable f28679c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View.OnClickListener f28680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CompoundButton.OnCheckedChangeListener f28681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l.a f28682f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f28683g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f28684h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f28685i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f28686j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f28687k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f28688l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f28689m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CharSequence f28690n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c f28691o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f28692p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Rect f28693q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final RectF f28694r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final f f28695s;

    class a extends f {
        a() {
        }

        @Override // xa.f
        public void a(int i11) {
        }

        @Override // xa.f
        public void b(Typeface typeface, boolean z10) {
            Chip chip = Chip.this;
            chip.setText(chip.f28677a.W2() ? Chip.this.f28677a.p1() : Chip.this.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (Chip.this.f28677a != null) {
                Chip.this.f28677a.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    private class c extends androidx.customview.widget.a {
        c(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.a
        protected void B(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.isCheckable());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            accessibilityNodeInfoCompat.setClassName(Chip.this.getAccessibilityClassName());
            accessibilityNodeInfoCompat.setText(Chip.this.getText());
        }

        @Override // androidx.customview.widget.a
        protected void C(int i11, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i11 != 1) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.f28674u);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = Chip.this.getText();
                accessibilityNodeInfoCompat.setContentDescription(Chip.this.getContext().getString(R$string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
            }
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
        }

        @Override // androidx.customview.widget.a
        protected void D(int i11, boolean z10) {
            if (i11 == 1) {
                Chip.this.f28686j = z10;
                Chip.this.refreshDrawableState();
            }
        }

        @Override // androidx.customview.widget.a
        protected int o(float f11, float f12) {
            return (Chip.this.l() && Chip.this.getCloseIconTouchBounds().contains(f11, f12)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.a
        protected void p(List list) {
            list.add(0);
            if (Chip.this.l() && Chip.this.isCloseIconVisible() && Chip.this.f28680d != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.a
        protected boolean y(int i11, int i12, Bundle bundle) {
            if (i12 != 16) {
                return false;
            }
            if (i11 == 0) {
                return Chip.this.performClick();
            }
            if (i11 == 1) {
                return Chip.this.performCloseIconClick();
            }
            return false;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.chipStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Chip(Context context, AttributeSet attributeSet, int i11) {
        int i12 = f28673t;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f28693q = new Rect();
        this.f28694r = new RectF();
        this.f28695s = new a();
        Context context2 = getContext();
        x(attributeSet);
        com.google.android.material.chip.a aVarD0 = com.google.android.material.chip.a.D0(context2, attributeSet, i11, i12);
        m(context2, attributeSet, i11);
        setChipDrawable(aVarD0);
        aVarD0.c0(ViewCompat.getElevation(this));
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.Chip, i11, i12, new int[0]);
        boolean zHasValue = typedArrayI.hasValue(R$styleable.Chip_shapeAppearance);
        typedArrayI.recycle();
        this.f28691o = new c(this);
        s();
        if (!zHasValue) {
            n();
        }
        setChecked(this.f28683g);
        setText(aVarD0.p1());
        setEllipsize(aVarD0.j1());
        w();
        if (!this.f28677a.W2()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        v();
        if (shouldEnsureMinTouchTargetSize()) {
            setMinHeight(this.f28689m);
        }
        this.f28688l = ViewCompat.getLayoutDirection(this);
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: ra.b
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                this.f74230a.p(compoundButton, z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.f28694r.setEmpty();
        if (l() && this.f28680d != null) {
            this.f28677a.g1(this.f28694r);
        }
        return this.f28694r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.f28693q.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.f28693q;
    }

    @Nullable
    private d getTextAppearance() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.q1();
        }
        return null;
    }

    private void i(com.google.android.material.chip.a aVar) {
        aVar.z2(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    private int[] j() {
        ?? IsEnabled = isEnabled();
        int i11 = IsEnabled;
        if (this.f28686j) {
            i11 = IsEnabled + 1;
        }
        int i12 = i11;
        if (this.f28685i) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (this.f28684h) {
            i13 = i12 + 1;
        }
        int i14 = i13;
        if (isChecked()) {
            i14 = i13 + 1;
        }
        int[] iArr = new int[i14];
        int i15 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i15 = 1;
        }
        if (this.f28686j) {
            iArr[i15] = 16842908;
            i15++;
        }
        if (this.f28685i) {
            iArr[i15] = 16843623;
            i15++;
        }
        if (this.f28684h) {
            iArr[i15] = 16842919;
            i15++;
        }
        if (isChecked()) {
            iArr[i15] = 16842913;
        }
        return iArr;
    }

    private void k() {
        if (getBackgroundDrawable() == this.f28678b && this.f28677a.getCallback() == null) {
            this.f28677a.setCallback(this.f28678b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        com.google.android.material.chip.a aVar = this.f28677a;
        return (aVar == null || aVar.Z0() == null) ? false : true;
    }

    private void m(Context context, AttributeSet attributeSet, int i11) {
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.Chip, i11, f28673t, new int[0]);
        this.f28687k = typedArrayI.getBoolean(R$styleable.Chip_ensureMinTouchTargetSize, false);
        this.f28689m = (int) Math.ceil(typedArrayI.getDimension(R$styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(f0.g(getContext(), 48))));
        typedArrayI.recycle();
    }

    private void n() {
        setOutlineProvider(new b());
    }

    private void o(int i11, int i12, int i13, int i14) {
        this.f28678b = new InsetDrawable((Drawable) this.f28677a, i11, i12, i13, i14);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(CompoundButton compoundButton, boolean z10) {
        l.a aVar = this.f28682f;
        if (aVar != null) {
            aVar.a(this, z10);
        }
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.f28681e;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(compoundButton, z10);
        }
    }

    private void q() {
        if (this.f28678b != null) {
            this.f28678b = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            t();
        }
    }

    private void r(com.google.android.material.chip.a aVar) {
        if (aVar != null) {
            aVar.z2(null);
        }
    }

    private void s() {
        if (l() && isCloseIconVisible() && this.f28680d != null) {
            ViewCompat.setAccessibilityDelegate(this, this.f28691o);
            this.f28692p = true;
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.f28692p = false;
        }
    }

    private void setCloseIconHovered(boolean z10) {
        if (this.f28685i != z10) {
            this.f28685i = z10;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z10) {
        if (this.f28684h != z10) {
            this.f28684h = z10;
            refreshDrawableState();
        }
    }

    private void t() {
        if (ya.b.f78956a) {
            u();
            return;
        }
        this.f28677a.V2(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        v();
        k();
    }

    private void u() {
        this.f28679c = new RippleDrawable(ya.b.d(this.f28677a.n1()), getBackgroundDrawable(), null);
        this.f28677a.V2(false);
        ViewCompat.setBackground(this, this.f28679c);
        v();
    }

    private void v() {
        com.google.android.material.chip.a aVar;
        if (TextUtils.isEmpty(getText()) || (aVar = this.f28677a) == null) {
            return;
        }
        int iR0 = (int) (aVar.R0() + this.f28677a.r1() + this.f28677a.y0());
        int iW0 = (int) (this.f28677a.W0() + this.f28677a.s1() + this.f28677a.u0());
        if (this.f28678b != null) {
            Rect rect = new Rect();
            this.f28678b.getPadding(rect);
            iW0 += rect.left;
            iR0 += rect.right;
        }
        ViewCompat.setPaddingRelative(this, iW0, getPaddingTop(), iR0, getPaddingBottom());
    }

    private void w() {
        TextPaint paint = getPaint();
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            paint.drawableState = aVar.getState();
        }
        d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.n(getContext(), paint, this.f28695s);
        }
    }

    private void x(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        }
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.f28692p) {
            return this.f28691o.i(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f28692p) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (!this.f28691o.j(keyEvent) || this.f28691o.n() == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        com.google.android.material.chip.a aVar = this.f28677a;
        if ((aVar == null || !aVar.z1()) ? false : this.f28677a.v2(j())) {
            invalidate();
        }
    }

    public boolean ensureAccessibleTouchTarget(int i11) {
        this.f28689m = i11;
        if (!shouldEnsureMinTouchTargetSize()) {
            if (this.f28678b != null) {
                q();
            } else {
                t();
            }
            return false;
        }
        int iMax = Math.max(0, i11 - this.f28677a.getIntrinsicHeight());
        int iMax2 = Math.max(0, i11 - this.f28677a.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            if (this.f28678b != null) {
                q();
            } else {
                t();
            }
            return false;
        }
        int i12 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i13 = iMax > 0 ? iMax / 2 : 0;
        if (this.f28678b != null) {
            Rect rect = new Rect();
            this.f28678b.getPadding(rect);
            if (rect.top == i13 && rect.bottom == i13 && rect.left == i12 && rect.right == i12) {
                t();
                return true;
            }
        }
        if (getMinHeight() != i11) {
            setMinHeight(i11);
        }
        if (getMinWidth() != i11) {
            setMinWidth(i11);
        }
        o(i12, i13, i12, i13);
        t();
        return true;
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f28690n)) {
            return this.f28690n;
        }
        if (!isCheckable()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).isSingleSelection()) ? "android.widget.RadioButton" : "android.widget.Button";
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f28678b;
        return insetDrawable == null ? this.f28677a : insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.N0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.O0();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.P0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return Math.max(0.0f, aVar.Q0());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f28677a;
    }

    public float getChipEndPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.R0();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.S0();
        }
        return null;
    }

    public float getChipIconSize() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.T0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.U0();
        }
        return null;
    }

    public float getChipMinHeight() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.V0();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.W0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.X0();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.Y0();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.Z0();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.a1();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.b1();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.c1();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.d1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.f1();
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.j1();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.f28692p && (this.f28691o.n() == 1 || this.f28691o.k() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public h getHideMotionSpec() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.k1();
        }
        return null;
    }

    public float getIconEndPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.l1();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.m1();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.n1();
        }
        return null;
    }

    @NonNull
    public n getShapeAppearanceModel() {
        return this.f28677a.G();
    }

    @Nullable
    public h getShowMotionSpec() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.o1();
        }
        return null;
    }

    public float getTextEndPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.r1();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            return aVar.s1();
        }
        return 0.0f;
    }

    public boolean isCheckable() {
        com.google.android.material.chip.a aVar = this.f28677a;
        return aVar != null && aVar.w1();
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public boolean isCheckedIconVisible() {
        com.google.android.material.chip.a aVar = this.f28677a;
        return aVar != null && aVar.x1();
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public boolean isChipIconVisible() {
        com.google.android.material.chip.a aVar = this.f28677a;
        return aVar != null && aVar.y1();
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public boolean isCloseIconVisible() {
        com.google.android.material.chip.a aVar = this.f28677a;
        return aVar != null && aVar.A1();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        j.f(this, this.f28677a);
    }

    @Override // com.google.android.material.chip.a.InterfaceC0393a
    public void onChipDrawableSizeChange() {
        ensureAccessibleTouchTarget(this.f28689m);
        requestLayout();
        invalidateOutline();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28675v);
        }
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f28676w);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z10, int i11, Rect rect) {
        super.onFocusChanged(z10, i11, rect);
        if (this.f28692p) {
            this.f28691o.x(z10, i11, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.getRowIndex(this), 1, chipGroup.isSingleLine() ? chipGroup.e(this) : -1, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i11) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i11);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i11) {
        super.onRtlPropertiesChanged(i11);
        if (this.f28688l != i11) {
            this.f28688l = i11;
            v();
        }
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z10;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.f28684h) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z10 = true;
                }
                z10 = false;
            } else {
                if (this.f28684h) {
                    performCloseIconClick();
                    z10 = true;
                }
                setCloseIconPressed(false);
            }
            z10 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 || super.onTouchEvent(motionEvent);
    }

    public boolean performCloseIconClick() {
        boolean z10 = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.f28680d;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z10 = true;
        }
        if (this.f28692p) {
            this.f28691o.J(1, 1);
        }
        return z10;
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.f28690n = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f28679c) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f28679c) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i11) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z10) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.H1(z10);
        }
    }

    public void setCheckableResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.I1(i11);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar == null) {
            this.f28683g = z10;
        } else if (aVar.w1()) {
            super.setChecked(z10);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.J1(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z10) {
        setCheckedIconVisible(z10);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i11) {
        setCheckedIconVisible(i11);
    }

    public void setCheckedIconResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.K1(i11);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.L1(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.M1(i11);
        }
    }

    public void setCheckedIconVisible(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.N1(i11);
        }
    }

    public void setCheckedIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.O1(z10);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.P1(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.Q1(i11);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.R1(f11);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.S1(i11);
        }
    }

    public void setChipDrawable(@NonNull com.google.android.material.chip.a aVar) {
        com.google.android.material.chip.a aVar2 = this.f28677a;
        if (aVar2 != aVar) {
            r(aVar2);
            this.f28677a = aVar;
            aVar.K2(false);
            i(this.f28677a);
            ensureAccessibleTouchTarget(this.f28689m);
        }
    }

    public void setChipEndPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.T1(f11);
        }
    }

    public void setChipEndPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.U1(i11);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.V1(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z10) {
        setChipIconVisible(z10);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i11) {
        setChipIconVisible(i11);
    }

    public void setChipIconResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.W1(i11);
        }
    }

    public void setChipIconSize(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.X1(f11);
        }
    }

    public void setChipIconSizeResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.Y1(i11);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.Z1(colorStateList);
        }
    }

    public void setChipIconTintResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.a2(i11);
        }
    }

    public void setChipIconVisible(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.b2(i11);
        }
    }

    public void setChipIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.c2(z10);
        }
    }

    public void setChipMinHeight(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.d2(f11);
        }
    }

    public void setChipMinHeightResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.e2(i11);
        }
    }

    public void setChipStartPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.f2(f11);
        }
    }

    public void setChipStartPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.g2(i11);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.h2(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.i2(i11);
        }
    }

    public void setChipStrokeWidth(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.j2(f11);
        }
    }

    public void setChipStrokeWidthResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.k2(i11);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i11) {
        setText(getResources().getString(i11));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.m2(drawable);
        }
        s();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.n2(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z10) {
        setCloseIconVisible(z10);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i11) {
        setCloseIconVisible(i11);
    }

    public void setCloseIconEndPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.o2(f11);
        }
    }

    public void setCloseIconEndPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.p2(i11);
        }
    }

    public void setCloseIconResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.q2(i11);
        }
        s();
    }

    public void setCloseIconSize(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.r2(f11);
        }
    }

    public void setCloseIconSizeResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.s2(i11);
        }
    }

    public void setCloseIconStartPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.t2(f11);
        }
    }

    public void setCloseIconStartPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.u2(i11);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.w2(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.x2(i11);
        }
    }

    public void setCloseIconVisible(int i11) {
        setCloseIconVisible(getResources().getBoolean(i11));
    }

    public void setCloseIconVisible(boolean z10) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.y2(z10);
        }
        s();
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i11, int i12, int i13, int i14) {
        if (i11 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i13 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i11, i12, i13, i14);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i11, int i12, int i13, int i14) {
        if (i11 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i13 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i11, i12, i13, i14);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.view.View
    public void setElevation(float f11) {
        super.setElevation(f11);
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.c0(f11);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f28677a == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.A2(truncateAt);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z10) {
        this.f28687k = z10;
        ensureAccessibleTouchTarget(this.f28689m);
    }

    @Override // android.widget.TextView
    public void setGravity(int i11) {
        if (i11 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i11);
        }
    }

    public void setHideMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.B2(hVar);
        }
    }

    public void setHideMotionSpecResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.C2(i11);
        }
    }

    public void setIconEndPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.D2(f11);
        }
    }

    public void setIconEndPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.E2(i11);
        }
    }

    public void setIconStartPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.F2(f11);
        }
    }

    public void setIconStartPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.G2(i11);
        }
    }

    @Override // com.google.android.material.internal.l
    public void setInternalOnCheckedChangeListener(@Nullable l.a aVar) {
        this.f28682f = aVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i11) {
        if (this.f28677a == null) {
            return;
        }
        super.setLayoutDirection(i11);
    }

    @Override // android.widget.TextView
    public void setLines(int i11) {
        if (i11 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i11);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i11) {
        if (i11 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i11);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i11) {
        super.setMaxWidth(i11);
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.H2(i11);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i11) {
        if (i11 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i11);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f28681e = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f28680d = onClickListener;
        s();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.I2(colorStateList);
        }
        if (this.f28677a.u1()) {
            return;
        }
        u();
    }

    public void setRippleColorResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.J2(i11);
            if (this.f28677a.u1()) {
                return;
            }
            u();
        }
    }

    @Override // ab.q
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.f28677a.setShapeAppearanceModel(nVar);
    }

    public void setShowMotionSpec(@Nullable h hVar) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.L2(hVar);
        }
    }

    public void setShowMotionSpecResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.M2(i11);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z10) {
        if (!z10) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z10);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(aVar.W2() ? null : charSequence, bufferType);
        com.google.android.material.chip.a aVar2 = this.f28677a;
        if (aVar2 != null) {
            aVar2.N2(charSequence);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i11) {
        super.setTextAppearance(i11);
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.P2(i11);
        }
        w();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i11) {
        super.setTextAppearance(context, i11);
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.P2(i11);
        }
        w();
    }

    public void setTextAppearance(@Nullable d dVar) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.O2(dVar);
        }
        w();
    }

    public void setTextAppearanceResource(int i11) {
        setTextAppearance(getContext(), i11);
    }

    public void setTextEndPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.Q2(f11);
        }
    }

    public void setTextEndPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.R2(i11);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i11, float f11) {
        super.setTextSize(i11, f11);
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.S2(TypedValue.applyDimension(i11, f11, getResources().getDisplayMetrics()));
        }
        w();
    }

    public void setTextStartPadding(float f11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.T2(f11);
        }
    }

    public void setTextStartPaddingResource(int i11) {
        com.google.android.material.chip.a aVar = this.f28677a;
        if (aVar != null) {
            aVar.U2(i11);
        }
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return this.f28687k;
    }
}
