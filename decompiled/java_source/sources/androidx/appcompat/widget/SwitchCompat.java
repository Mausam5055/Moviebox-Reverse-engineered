package androidx.appcompat.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    private static final Property S = new a(Float.class, "thumbPos");
    private static final int[] T = {R.attr.state_checked};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private boolean H;
    private final TextPaint I;
    private ColorStateList J;
    private Layout K;
    private Layout L;
    private TransformationMethod M;
    ObjectAnimator N;
    private final AppCompatTextHelper O;
    private h P;
    private b Q;
    private final Rect R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Drawable f1886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f1887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f1888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f1891f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ColorStateList f1892g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PorterDuff.Mode f1893h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f1894i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f1895j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1896k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f1897l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f1898m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f1899n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CharSequence f1900o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private CharSequence f1901p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CharSequence f1902q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CharSequence f1903r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f1904s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f1905t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f1906u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f1907v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f1908w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private VelocityTracker f1909x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f1910y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    float f1911z;

    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1911z);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(SwitchCompat switchCompat, Float f11) {
            switchCompat.setThumbPosition(f11.floatValue());
        }
    }

    static class b extends EmojiCompat.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Reference f1912a;

        b(SwitchCompat switchCompat) {
            this.f1912a = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.EmojiCompat.f
        public void a(Throwable th2) {
            SwitchCompat switchCompat = (SwitchCompat) this.f1912a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }

        @Override // androidx.emoji2.text.EmojiCompat.f
        public void b() {
            SwitchCompat switchCompat = (SwitchCompat) this.f1912a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }
    }

    public SwitchCompat(@NonNull Context context) {
        this(context, null);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchStyle);
    }

    public SwitchCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f1887b = null;
        this.f1888c = null;
        this.f1889d = false;
        this.f1890e = false;
        this.f1892g = null;
        this.f1893h = null;
        this.f1894i = false;
        this.f1895j = false;
        this.f1909x = VelocityTracker.obtain();
        this.H = true;
        this.R = new Rect();
        f0.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.I = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.SwitchCompat, i11, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.SwitchCompat, attributeSet, j0VarV.r(), i11, 0);
        Drawable drawableG = j0VarV.g(R$styleable.SwitchCompat_android_thumb);
        this.f1886a = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this);
        }
        Drawable drawableG2 = j0VarV.g(R$styleable.SwitchCompat_track);
        this.f1891f = drawableG2;
        if (drawableG2 != null) {
            drawableG2.setCallback(this);
        }
        setTextOnInternal(j0VarV.p(R$styleable.SwitchCompat_android_textOn));
        setTextOffInternal(j0VarV.p(R$styleable.SwitchCompat_android_textOff));
        this.f1904s = j0VarV.a(R$styleable.SwitchCompat_showText, true);
        this.f1896k = j0VarV.f(R$styleable.SwitchCompat_thumbTextPadding, 0);
        this.f1897l = j0VarV.f(R$styleable.SwitchCompat_switchMinWidth, 0);
        this.f1898m = j0VarV.f(R$styleable.SwitchCompat_switchPadding, 0);
        this.f1899n = j0VarV.a(R$styleable.SwitchCompat_splitTrack, false);
        ColorStateList colorStateListC = j0VarV.c(R$styleable.SwitchCompat_thumbTint);
        if (colorStateListC != null) {
            this.f1887b = colorStateListC;
            this.f1889d = true;
        }
        PorterDuff.Mode modeE = y.e(j0VarV.k(R$styleable.SwitchCompat_thumbTintMode, -1), null);
        if (this.f1888c != modeE) {
            this.f1888c = modeE;
            this.f1890e = true;
        }
        if (this.f1889d || this.f1890e) {
            b();
        }
        ColorStateList colorStateListC2 = j0VarV.c(R$styleable.SwitchCompat_trackTint);
        if (colorStateListC2 != null) {
            this.f1892g = colorStateListC2;
            this.f1894i = true;
        }
        PorterDuff.Mode modeE2 = y.e(j0VarV.k(R$styleable.SwitchCompat_trackTintMode, -1), null);
        if (this.f1893h != modeE2) {
            this.f1893h = modeE2;
            this.f1895j = true;
        }
        if (this.f1894i || this.f1895j) {
            c();
        }
        int iN = j0VarV.n(R$styleable.SwitchCompat_switchTextAppearance, 0);
        if (iN != 0) {
            setSwitchTextAppearance(context, iN);
        }
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.O = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i11);
        j0VarV.x();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1906u = viewConfiguration.getScaledTouchSlop();
        this.f1910y = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().c(attributeSet, i11);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private void a(boolean z10) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<SwitchCompat, Float>) S, z10 ? 1.0f : 0.0f);
        this.N = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        this.N.setAutoCancel(true);
        this.N.start();
    }

    private void b() {
        Drawable drawable = this.f1886a;
        if (drawable != null) {
            if (this.f1889d || this.f1890e) {
                Drawable drawableMutate = a1.a.r(drawable).mutate();
                this.f1886a = drawableMutate;
                if (this.f1889d) {
                    a1.a.o(drawableMutate, this.f1887b);
                }
                if (this.f1890e) {
                    a1.a.p(this.f1886a, this.f1888c);
                }
                if (this.f1886a.isStateful()) {
                    this.f1886a.setState(getDrawableState());
                }
            }
        }
    }

    private void c() {
        Drawable drawable = this.f1891f;
        if (drawable != null) {
            if (this.f1894i || this.f1895j) {
                Drawable drawableMutate = a1.a.r(drawable).mutate();
                this.f1891f = drawableMutate;
                if (this.f1894i) {
                    a1.a.o(drawableMutate, this.f1892g);
                }
                if (this.f1895j) {
                    a1.a.p(this.f1891f, this.f1893h);
                }
                if (this.f1891f.isStateful()) {
                    this.f1891f.setState(getDrawableState());
                }
            }
        }
    }

    private void d() {
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void e(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.setAction(3);
        super.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    private static float f(float f11, float f12, float f13) {
        if (f11 < f12) {
            return f12;
        }
        return f11 > f13 ? f13 : f11;
    }

    private CharSequence g(CharSequence charSequence) {
        TransformationMethod transformationMethodF = getEmojiTextViewHelper().f(this.M);
        return transformationMethodF != null ? transformationMethodF.getTransformation(charSequence, this) : charSequence;
    }

    @NonNull
    private h getEmojiTextViewHelper() {
        if (this.P == null) {
            this.P = new h(this);
        }
        return this.P;
    }

    private boolean getTargetCheckedState() {
        return this.f1911z > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((u0.b(this) ? 1.0f - this.f1911z : this.f1911z) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f1891f;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.R;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f1886a;
        Rect rectD = drawable2 != null ? y.d(drawable2) : y.f2126c;
        return ((((this.A - this.C) - rect.left) - rect.right) - rectD.left) - rectD.right;
    }

    private boolean h(float f11, float f12) {
        if (this.f1886a == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1886a.getPadding(this.R);
        int i11 = this.E;
        int i12 = this.f1906u;
        int i13 = i11 - i12;
        int i14 = (this.D + thumbOffset) - i12;
        int i15 = this.C + i14;
        Rect rect = this.R;
        return f11 > ((float) i14) && f11 < ((float) (((i15 + rect.left) + rect.right) + i12)) && f12 > ((float) i13) && f12 < ((float) (this.G + i12));
    }

    private Layout i(CharSequence charSequence) {
        TextPaint textPaint = this.I;
        return new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private void k() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.f1902q;
            if (string == null) {
                string = getResources().getString(R$string.abc_capital_off);
            }
            ViewCompat.setStateDescription(this, string);
        }
    }

    private void l() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence string = this.f1900o;
            if (string == null) {
                string = getResources().getString(R$string.abc_capital_on);
            }
            ViewCompat.setStateDescription(this, string);
        }
    }

    private void m(int i11, int i12) {
        Typeface typeface;
        if (i11 == 1) {
            typeface = Typeface.SANS_SERIF;
        } else if (i11 != 2) {
            typeface = i11 != 3 ? null : Typeface.MONOSPACE;
        } else {
            typeface = Typeface.SERIF;
        }
        setSwitchTypeface(typeface, i12);
    }

    private void n() {
        if (this.Q == null && this.P.b() && EmojiCompat.i()) {
            EmojiCompat emojiCompatC = EmojiCompat.c();
            int iE = emojiCompatC.e();
            if (iE == 3 || iE == 0) {
                b bVar = new b(this);
                this.Q = bVar;
                emojiCompatC.t(bVar);
            }
        }
    }

    private void o(MotionEvent motionEvent) {
        this.f1905t = 0;
        boolean targetCheckedState = true;
        boolean z10 = motionEvent.getAction() == 1 && isEnabled();
        boolean zIsChecked = isChecked();
        if (z10) {
            this.f1909x.computeCurrentVelocity(1000);
            float xVelocity = this.f1909x.getXVelocity();
            if (Math.abs(xVelocity) <= this.f1910y) {
                targetCheckedState = getTargetCheckedState();
            } else if (!u0.b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                targetCheckedState = false;
            }
        } else {
            targetCheckedState = zIsChecked;
        }
        if (targetCheckedState != zIsChecked) {
            playSoundEffect(0);
        }
        setChecked(targetCheckedState);
        e(motionEvent);
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f1902q = charSequence;
        this.f1903r = g(charSequence);
        this.L = null;
        if (this.f1904s) {
            n();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f1900o = charSequence;
        this.f1901p = g(charSequence);
        this.K = null;
        if (this.f1904s) {
            n();
        }
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        int i11;
        int i12;
        Rect rect = this.R;
        int i13 = this.D;
        int i14 = this.E;
        int i15 = this.F;
        int i16 = this.G;
        int thumbOffset = getThumbOffset() + i13;
        Drawable drawable = this.f1886a;
        Rect rectD = drawable != null ? y.d(drawable) : y.f2126c;
        Drawable drawable2 = this.f1891f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i17 = rect.left;
            thumbOffset += i17;
            if (rectD != null) {
                int i18 = rectD.left;
                if (i18 > i17) {
                    i13 += i18 - i17;
                }
                int i19 = rectD.top;
                int i20 = rect.top;
                i11 = i19 > i20 ? (i19 - i20) + i14 : i14;
                int i21 = rectD.right;
                int i22 = rect.right;
                if (i21 > i22) {
                    i15 -= i21 - i22;
                }
                int i23 = rectD.bottom;
                int i24 = rect.bottom;
                if (i23 > i24) {
                    i12 = i16 - (i23 - i24);
                }
                this.f1891f.setBounds(i13, i11, i15, i12);
            } else {
                i11 = i14;
            }
            i12 = i16;
            this.f1891f.setBounds(i13, i11, i15, i12);
        }
        Drawable drawable3 = this.f1886a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i25 = thumbOffset - rect.left;
            int i26 = thumbOffset + this.C + rect.right;
            this.f1886a.setBounds(i25, i14, i26, i16);
            Drawable background = getBackground();
            if (background != null) {
                a1.a.l(background, i25, i14, i26, i16);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f11, float f12) {
        super.drawableHotspotChanged(f11, f12);
        Drawable drawable = this.f1886a;
        if (drawable != null) {
            a1.a.k(drawable, f11, f12);
        }
        Drawable drawable2 = this.f1891f;
        if (drawable2 != null) {
            a1.a.k(drawable2, f11, f12);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1886a;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f1891f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!u0.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f1898m : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (u0.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f1898m : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.m.s(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f1904s;
    }

    public boolean getSplitTrack() {
        return this.f1899n;
    }

    public int getSwitchMinWidth() {
        return this.f1897l;
    }

    public int getSwitchPadding() {
        return this.f1898m;
    }

    public CharSequence getTextOff() {
        return this.f1902q;
    }

    public CharSequence getTextOn() {
        return this.f1900o;
    }

    public Drawable getThumbDrawable() {
        return this.f1886a;
    }

    protected final float getThumbPosition() {
        return this.f1911z;
    }

    public int getThumbTextPadding() {
        return this.f1896k;
    }

    @Nullable
    public ColorStateList getThumbTintList() {
        return this.f1887b;
    }

    @Nullable
    public PorterDuff.Mode getThumbTintMode() {
        return this.f1888c;
    }

    public Drawable getTrackDrawable() {
        return this.f1891f;
    }

    @Nullable
    public ColorStateList getTrackTintList() {
        return this.f1892g;
    }

    @Nullable
    public PorterDuff.Mode getTrackTintMode() {
        return this.f1893h;
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    void j() {
        setTextOnInternal(this.f1900o);
        setTextOffInternal(this.f1902q);
        requestLayout();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1886a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1891f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.N.end();
        this.N = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i11) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i11 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, T);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Rect rect = this.R;
        Drawable drawable = this.f1891f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i11 = this.E;
        int i12 = this.G;
        int i13 = i11 + rect.top;
        int i14 = i12 - rect.bottom;
        Drawable drawable2 = this.f1886a;
        if (drawable != null) {
            if (!this.f1899n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectD = y.d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectD.left;
                rect.right -= rectD.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        Layout layout = getTargetCheckedState() ? this.K : this.L;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.J;
            if (colorStateList != null) {
                this.I.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.I.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i13 + i14) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f1900o : this.f1902q;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(text);
            sb2.append(' ');
            sb2.append(charSequence);
            accessibilityNodeInfo.setText(sb2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int iMax;
        int width;
        int paddingLeft;
        int i15;
        int paddingTop;
        int height;
        super.onLayout(z10, i11, i12, i13, i14);
        int iMax2 = 0;
        if (this.f1886a != null) {
            Rect rect = this.R;
            Drawable drawable = this.f1891f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectD = y.d(this.f1886a);
            iMax = Math.max(0, rectD.left - rect.left);
            iMax2 = Math.max(0, rectD.right - rect.right);
        } else {
            iMax = 0;
        }
        if (u0.b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.A + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.A) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity != 16) {
            if (gravity != 80) {
                paddingTop = getPaddingTop();
                i15 = this.B;
            } else {
                height = getHeight() - getPaddingBottom();
                paddingTop = height - this.B;
            }
            this.D = paddingLeft;
            this.E = paddingTop;
            this.G = height;
            this.F = width;
        }
        int paddingTop2 = ((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2;
        i15 = this.B;
        paddingTop = paddingTop2 - (i15 / 2);
        height = i15 + paddingTop;
        this.D = paddingLeft;
        this.E = paddingTop;
        this.G = height;
        this.F = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i11, int i12) {
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.f1904s) {
            if (this.K == null) {
                this.K = i(this.f1901p);
            }
            if (this.L == null) {
                this.L = i(this.f1903r);
            }
        }
        Rect rect = this.R;
        Drawable drawable = this.f1886a;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f1886a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f1886a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.C = Math.max(this.f1904s ? Math.max(this.K.getWidth(), this.L.getWidth()) + (this.f1896k * 2) : 0, intrinsicWidth);
        Drawable drawable2 = this.f1891f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f1891f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax = rect.left;
        int iMax2 = rect.right;
        Drawable drawable3 = this.f1886a;
        if (drawable3 != null) {
            Rect rectD = y.d(drawable3);
            iMax = Math.max(iMax, rectD.left);
            iMax2 = Math.max(iMax2, rectD.right);
        }
        int iMax3 = this.H ? Math.max(this.f1897l, (this.C * 2) + iMax + iMax2) : this.f1897l;
        int iMax4 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.A = iMax3;
        this.B = iMax4;
        super.onMeasure(i11, i12);
        if (getMeasuredHeight() < iMax4) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax4);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f1900o : this.f1902q;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0089  */
    /* JADX WARN: Code duplicated, block: B:36:0x008d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0094  */
    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float f11;
        this.f1909x.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            if (isEnabled() && h(x10, y10)) {
                this.f1905t = 1;
                this.f1907v = x10;
                this.f1908w = y10;
            }
        } else if (actionMasked == 1) {
            if (this.f1905t == 2) {
                o(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f1905t = 0;
            this.f1909x.clear();
        } else if (actionMasked == 2) {
            int i11 = this.f1905t;
            if (i11 == 1) {
                float x11 = motionEvent.getX();
                float y11 = motionEvent.getY();
                if (Math.abs(x11 - this.f1907v) > this.f1906u || Math.abs(y11 - this.f1908w) > this.f1906u) {
                    this.f1905t = 2;
                    getParent().requestDisallowInterceptTouchEvent(true);
                    this.f1907v = x11;
                    this.f1908w = y11;
                    return true;
                }
            } else if (i11 == 2) {
                float x12 = motionEvent.getX();
                int thumbScrollRange = getThumbScrollRange();
                float f12 = x12 - this.f1907v;
                if (thumbScrollRange != 0) {
                    f11 = f12 / thumbScrollRange;
                } else {
                    f11 = f12 > 0.0f ? 1.0f : -1.0f;
                }
                if (u0.b(this)) {
                    f11 = -f11;
                }
                float f13 = f(this.f1911z + f11, 0.0f, 1.0f);
                if (f13 != this.f1911z) {
                    this.f1907v = x12;
                    setThumbPosition(f13);
                }
                return true;
            }
        } else if (actionMasked == 3) {
            if (this.f1905t == 2) {
                o(motionEvent);
                super.onTouchEvent(motionEvent);
                return true;
            }
            this.f1905t = 0;
            this.f1909x.clear();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        super.setChecked(z10);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            l();
        } else {
            k();
        }
        if (getWindowToken() != null && isLaidOut()) {
            a(zIsChecked);
        } else {
            d();
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.m.t(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
        setTextOnInternal(this.f1900o);
        setTextOffInternal(this.f1902q);
        requestLayout();
    }

    protected final void setEnforceSwitchWidth(boolean z10) {
        this.H = z10;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z10) {
        if (this.f1904s != z10) {
            this.f1904s = z10;
            requestLayout();
            if (z10) {
                n();
            }
        }
    }

    public void setSplitTrack(boolean z10) {
        this.f1899n = z10;
        invalidate();
    }

    public void setSwitchMinWidth(int i11) {
        this.f1897l = i11;
        requestLayout();
    }

    public void setSwitchPadding(int i11) {
        this.f1898m = i11;
        requestLayout();
    }

    public void setSwitchTextAppearance(Context context, int i11) {
        j0 j0VarT = j0.t(context, i11, R$styleable.TextAppearance);
        ColorStateList colorStateListC = j0VarT.c(R$styleable.TextAppearance_android_textColor);
        if (colorStateListC != null) {
            this.J = colorStateListC;
        } else {
            this.J = getTextColors();
        }
        int iF = j0VarT.f(R$styleable.TextAppearance_android_textSize, 0);
        if (iF != 0) {
            float f11 = iF;
            if (f11 != this.I.getTextSize()) {
                this.I.setTextSize(f11);
                requestLayout();
            }
        }
        m(j0VarT.k(R$styleable.TextAppearance_android_typeface, -1), j0VarT.k(R$styleable.TextAppearance_android_textStyle, -1));
        if (j0VarT.a(R$styleable.TextAppearance_textAllCaps, false)) {
            this.M = new i.a(getContext());
        } else {
            this.M = null;
        }
        setTextOnInternal(this.f1900o);
        setTextOffInternal(this.f1902q);
        j0VarT.x();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.I.getTypeface() == null || this.I.getTypeface().equals(typeface)) && (this.I.getTypeface() != null || typeface == null)) {
            return;
        }
        this.I.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setSwitchTypeface(Typeface typeface, int i11) {
        if (i11 <= 0) {
            this.I.setFakeBoldText(false);
            this.I.setTextSkewX(0.0f);
            setSwitchTypeface(typeface);
        } else {
            Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i11) : Typeface.create(typeface, i11);
            setSwitchTypeface(typefaceDefaultFromStyle);
            int i12 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i11;
            this.I.setFakeBoldText((i12 & 1) != 0);
            this.I.setTextSkewX((i12 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            return;
        }
        k();
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            l();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1886a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1886a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f11) {
        this.f1911z = f11;
        invalidate();
    }

    public void setThumbResource(int i11) {
        setThumbDrawable(g.a.b(getContext(), i11));
    }

    public void setThumbTextPadding(int i11) {
        this.f1896k = i11;
        requestLayout();
    }

    public void setThumbTintList(@Nullable ColorStateList colorStateList) {
        this.f1887b = colorStateList;
        this.f1889d = true;
        b();
    }

    public void setThumbTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1888c = mode;
        this.f1890e = true;
        b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1891f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1891f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i11) {
        setTrackDrawable(g.a.b(getContext(), i11));
    }

    public void setTrackTintList(@Nullable ColorStateList colorStateList) {
        this.f1892g = colorStateList;
        this.f1894i = true;
        c();
    }

    public void setTrackTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1893h = mode;
        this.f1895j = true;
        c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1886a || drawable == this.f1891f;
    }
}
