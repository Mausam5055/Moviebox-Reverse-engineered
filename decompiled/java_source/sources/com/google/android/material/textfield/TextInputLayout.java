package com.google.android.material.textfield;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.j0;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.internal.CheckableImageButton;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes4.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int BOX_BACKGROUND_FILLED = 1;
    public static final int BOX_BACKGROUND_NONE = 0;
    public static final int BOX_BACKGROUND_OUTLINE = 2;
    private static final int C0 = R$style.Widget_Design_TextInputLayout;
    private static final int[][] D0 = {new int[]{R.attr.state_pressed}, new int[0]};
    public static final int END_ICON_CLEAR_TEXT = 2;
    public static final int END_ICON_CUSTOM = -1;
    public static final int END_ICON_DROPDOWN_MENU = 3;
    public static final int END_ICON_NONE = 0;
    public static final int END_ICON_PASSWORD_TOGGLE = 1;
    private ColorStateList A;
    private boolean A0;
    private ColorStateList B;
    private boolean B0;
    private boolean C;
    private CharSequence D;
    private boolean E;
    private ab.i F;
    private ab.i G;
    private StateListDrawable H;
    private boolean I;
    private ab.i J;
    private ab.i K;
    private ab.n L;
    private boolean M;
    private final int N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private final Rect V;
    private final Rect W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f29845a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final RectF f29846a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f29847b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private Typeface f29848b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r f29849c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private Drawable f29850c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    EditText f29851d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f29852d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f29853e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final LinkedHashSet f29854e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29855f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private Drawable f29856f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29857g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private int f29858g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f29859h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private Drawable f29860h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29861i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private ColorStateList f29862i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final u f29863j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private ColorStateList f29864j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f29865k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private int f29866k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f29867l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private int f29868l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f29869m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private int f29870m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private d f29871n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private ColorStateList f29872n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private TextView f29873o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private int f29874o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f29875p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f29876p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f29877q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private int f29878q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CharSequence f29879r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private int f29880r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f29881s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f29882s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private TextView f29883t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    int f29884t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ColorStateList f29885u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private boolean f29886u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f29887v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    final com.google.android.material.internal.b f29888v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private androidx.transition.c f29889w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private boolean f29890w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private androidx.transition.c f29891x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private boolean f29892x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ColorStateList f29893y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private ValueAnimator f29894y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ColorStateList f29895z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private boolean f29896z0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CharSequence f29897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f29898b;

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

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f29897a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f29898b = parcel.readInt() == 1;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f29897a) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            TextUtils.writeToParcel(this.f29897a, parcel, i11);
            parcel.writeInt(this.f29898b ? 1 : 0);
        }
    }

    class a implements TextWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f29899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ EditText f29900b;

        a(EditText editText) {
            this.f29900b = editText;
            this.f29899a = editText.getLineCount();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.o0(!textInputLayout.A0);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f29865k) {
                textInputLayout2.e0(editable);
            }
            if (TextInputLayout.this.f29881s) {
                TextInputLayout.this.s0(editable);
            }
            int lineCount = this.f29900b.getLineCount();
            int i11 = this.f29899a;
            if (lineCount != i11) {
                if (lineCount < i11) {
                    int minimumHeight = ViewCompat.getMinimumHeight(this.f29900b);
                    int i12 = TextInputLayout.this.f29884t0;
                    if (minimumHeight != i12) {
                        this.f29900b.setMinimumHeight(i12);
                    }
                }
                this.f29899a = lineCount;
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f29888v0.z0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class c extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextInputLayout f29903a;

        public c(TextInputLayout textInputLayout) {
            this.f29903a = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f29903a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f29903a.getHint();
            CharSequence error = this.f29903a.getError();
            CharSequence placeholderText = this.f29903a.getPlaceholderText();
            int counterMaxLength = this.f29903a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f29903a.getCounterOverflowDescription();
            boolean zIsEmpty = TextUtils.isEmpty(text);
            boolean zIsEmpty2 = TextUtils.isEmpty(hint);
            boolean zL = this.f29903a.L();
            boolean zIsEmpty3 = TextUtils.isEmpty(error);
            boolean z10 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
            String string = !zIsEmpty2 ? hint.toString() : "";
            this.f29903a.f29847b.B(accessibilityNodeInfoCompat);
            if (!zIsEmpty) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.setText(string);
                if (!zL && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(string);
                } else {
                    if (!zIsEmpty) {
                        string = ((Object) text) + ", " + string;
                    }
                    accessibilityNodeInfoCompat.setText(string);
                }
                accessibilityNodeInfoCompat.setShowingHintText(zIsEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfoCompat.setMaxTextLength(counterMaxLength);
            if (z10) {
                if (zIsEmpty3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            View viewT = this.f29903a.f29863j.t();
            if (viewT != null) {
                accessibilityNodeInfoCompat.setLabelFor(viewT);
            }
            this.f29903a.f29849c.o().o(view, accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.f29903a.f29849c.o().p(view, accessibilityEvent);
        }
    }

    public interface d {
        int a(Editable editable);
    }

    public interface e {
        void a(TextInputLayout textInputLayout);
    }

    public interface f {
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.textInputStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        int i12 = C0;
        super(bb.a.c(context, attributeSet, i11, i12), attributeSet, i11);
        this.f29855f = -1;
        this.f29857g = -1;
        this.f29859h = -1;
        this.f29861i = -1;
        this.f29863j = new u(this);
        this.f29871n = new d() { // from class: com.google.android.material.textfield.g0
            @Override // com.google.android.material.textfield.TextInputLayout.d
            public final int a(Editable editable) {
                return TextInputLayout.O(editable);
            }
        };
        this.V = new Rect();
        this.W = new Rect();
        this.f29846a0 = new RectF();
        this.f29854e0 = new LinkedHashSet();
        com.google.android.material.internal.b bVar = new com.google.android.material.internal.b(this);
        this.f29888v0 = bVar;
        this.B0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f29845a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        TimeInterpolator timeInterpolator = oa.a.f70918a;
        bVar.M0(timeInterpolator);
        bVar.H0(timeInterpolator);
        bVar.k0(MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START);
        j0 j0VarJ = com.google.android.material.internal.b0.j(context2, attributeSet, R$styleable.TextInputLayout, i11, i12, R$styleable.TextInputLayout_counterTextAppearance, R$styleable.TextInputLayout_counterOverflowTextAppearance, R$styleable.TextInputLayout_errorTextAppearance, R$styleable.TextInputLayout_helperTextTextAppearance, R$styleable.TextInputLayout_hintTextAppearance);
        y yVar = new y(this, j0VarJ);
        this.f29847b = yVar;
        this.C = j0VarJ.a(R$styleable.TextInputLayout_hintEnabled, true);
        setHint(j0VarJ.p(R$styleable.TextInputLayout_android_hint));
        this.f29892x0 = j0VarJ.a(R$styleable.TextInputLayout_hintAnimationEnabled, true);
        this.f29890w0 = j0VarJ.a(R$styleable.TextInputLayout_expandedHintEnabled, true);
        if (j0VarJ.s(R$styleable.TextInputLayout_android_minEms)) {
            setMinEms(j0VarJ.k(R$styleable.TextInputLayout_android_minEms, -1));
        } else if (j0VarJ.s(R$styleable.TextInputLayout_android_minWidth)) {
            setMinWidth(j0VarJ.f(R$styleable.TextInputLayout_android_minWidth, -1));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_android_maxEms)) {
            setMaxEms(j0VarJ.k(R$styleable.TextInputLayout_android_maxEms, -1));
        } else if (j0VarJ.s(R$styleable.TextInputLayout_android_maxWidth)) {
            setMaxWidth(j0VarJ.f(R$styleable.TextInputLayout_android_maxWidth, -1));
        }
        this.L = ab.n.e(context2, attributeSet, i11, i12).m();
        this.N = context2.getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_box_label_cutout_padding);
        this.P = j0VarJ.e(R$styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.R = j0VarJ.f(R$styleable.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_default));
        this.S = j0VarJ.f(R$styleable.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(R$dimen.mtrl_textinput_box_stroke_width_focused));
        this.Q = this.R;
        float fD = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float fD2 = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float fD3 = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float fD4 = j0VarJ.d(R$styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        ab.n.b bVarV = this.L.v();
        if (fD >= 0.0f) {
            bVarV.H(fD);
        }
        if (fD2 >= 0.0f) {
            bVarV.M(fD2);
        }
        if (fD3 >= 0.0f) {
            bVarV.B(fD3);
        }
        if (fD4 >= 0.0f) {
            bVarV.w(fD4);
        }
        this.L = bVarV.m();
        ColorStateList colorStateListB = xa.c.b(context2, j0VarJ, R$styleable.TextInputLayout_boxBackgroundColor);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.f29874o0 = defaultColor;
            this.U = defaultColor;
            if (colorStateListB.isStateful()) {
                this.f29876p0 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.f29878q0 = colorStateListB.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f29880r0 = colorStateListB.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f29878q0 = this.f29874o0;
                ColorStateList colorStateListA = g.a.a(context2, R$color.mtrl_filled_background_color);
                this.f29876p0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.f29880r0 = colorStateListA.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.U = 0;
            this.f29874o0 = 0;
            this.f29876p0 = 0;
            this.f29878q0 = 0;
            this.f29880r0 = 0;
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateListC = j0VarJ.c(R$styleable.TextInputLayout_android_textColorHint);
            this.f29864j0 = colorStateListC;
            this.f29862i0 = colorStateListC;
        }
        ColorStateList colorStateListB2 = xa.c.b(context2, j0VarJ, R$styleable.TextInputLayout_boxStrokeColor);
        this.f29870m0 = j0VarJ.b(R$styleable.TextInputLayout_boxStrokeColor, 0);
        this.f29866k0 = androidx.core.content.b.getColor(context2, R$color.mtrl_textinput_default_box_stroke_color);
        this.f29882s0 = androidx.core.content.b.getColor(context2, R$color.mtrl_textinput_disabled_color);
        this.f29868l0 = androidx.core.content.b.getColor(context2, R$color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_boxStrokeErrorColor)) {
            setBoxStrokeErrorColor(xa.c.b(context2, j0VarJ, R$styleable.TextInputLayout_boxStrokeErrorColor));
        }
        if (j0VarJ.n(R$styleable.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(j0VarJ.n(R$styleable.TextInputLayout_hintTextAppearance, 0));
        }
        this.A = j0VarJ.c(R$styleable.TextInputLayout_cursorColor);
        this.B = j0VarJ.c(R$styleable.TextInputLayout_cursorErrorColor);
        int iN = j0VarJ.n(R$styleable.TextInputLayout_errorTextAppearance, 0);
        CharSequence charSequenceP = j0VarJ.p(R$styleable.TextInputLayout_errorContentDescription);
        int iK = j0VarJ.k(R$styleable.TextInputLayout_errorAccessibilityLiveRegion, 1);
        boolean zA = j0VarJ.a(R$styleable.TextInputLayout_errorEnabled, false);
        int iN2 = j0VarJ.n(R$styleable.TextInputLayout_helperTextTextAppearance, 0);
        boolean zA2 = j0VarJ.a(R$styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceP2 = j0VarJ.p(R$styleable.TextInputLayout_helperText);
        int iN3 = j0VarJ.n(R$styleable.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceP3 = j0VarJ.p(R$styleable.TextInputLayout_placeholderText);
        boolean zA3 = j0VarJ.a(R$styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(j0VarJ.k(R$styleable.TextInputLayout_counterMaxLength, -1));
        this.f29877q = j0VarJ.n(R$styleable.TextInputLayout_counterTextAppearance, 0);
        this.f29875p = j0VarJ.n(R$styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        setBoxBackgroundMode(j0VarJ.k(R$styleable.TextInputLayout_boxBackgroundMode, 0));
        setErrorContentDescription(charSequenceP);
        setErrorAccessibilityLiveRegion(iK);
        setCounterOverflowTextAppearance(this.f29875p);
        setHelperTextTextAppearance(iN2);
        setErrorTextAppearance(iN);
        setCounterTextAppearance(this.f29877q);
        setPlaceholderText(charSequenceP3);
        setPlaceholderTextAppearance(iN3);
        if (j0VarJ.s(R$styleable.TextInputLayout_errorTextColor)) {
            setErrorTextColor(j0VarJ.c(R$styleable.TextInputLayout_errorTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(j0VarJ.c(R$styleable.TextInputLayout_helperTextTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_hintTextColor)) {
            setHintTextColor(j0VarJ.c(R$styleable.TextInputLayout_hintTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_counterTextColor)) {
            setCounterTextColor(j0VarJ.c(R$styleable.TextInputLayout_counterTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(j0VarJ.c(R$styleable.TextInputLayout_counterOverflowTextColor));
        }
        if (j0VarJ.s(R$styleable.TextInputLayout_placeholderTextColor)) {
            setPlaceholderTextColor(j0VarJ.c(R$styleable.TextInputLayout_placeholderTextColor));
        }
        r rVar = new r(this, j0VarJ);
        this.f29849c = rVar;
        boolean zA4 = j0VarJ.a(R$styleable.TextInputLayout_android_enabled, true);
        j0VarJ.x();
        ViewCompat.setImportantForAccessibility(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            ViewCompat.setImportantForAutofill(this, 1);
        }
        frameLayout.addView(yVar);
        frameLayout.addView(rVar);
        addView(frameLayout);
        setEnabled(zA4);
        setHelperTextEnabled(zA2);
        setErrorEnabled(zA);
        setCounterEnabled(zA3);
        setHelperText(charSequenceP2);
    }

    private boolean A() {
        return this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof h);
    }

    private void B() {
        Iterator it = this.f29854e0.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a(this);
        }
    }

    private void C(Canvas canvas) {
        ab.i iVar;
        if (this.K == null || (iVar = this.J) == null) {
            return;
        }
        iVar.draw(canvas);
        if (this.f29851d.isFocused()) {
            Rect bounds = this.K.getBounds();
            Rect bounds2 = this.J.getBounds();
            float F = this.f29888v0.F();
            int iCenterX = bounds2.centerX();
            bounds.left = oa.a.c(iCenterX, bounds2.left, F);
            bounds.right = oa.a.c(iCenterX, bounds2.right, F);
            this.K.draw(canvas);
        }
    }

    private void D(Canvas canvas) {
        if (this.C) {
            this.f29888v0.l(canvas);
        }
    }

    private void E(boolean z10) {
        ValueAnimator valueAnimator = this.f29894y0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f29894y0.cancel();
        }
        if (z10 && this.f29892x0) {
            k(0.0f);
        } else {
            this.f29888v0.z0(0.0f);
        }
        if (A() && ((h) this.F).v0()) {
            x();
        }
        this.f29886u0 = true;
        K();
        this.f29847b.m(true);
        this.f29849c.L(true);
    }

    private ab.i F(boolean z10) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.mtrl_shape_corner_size_small_component);
        float f11 = z10 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f29851d;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(R$dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R$dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        ab.n nVarM = ab.n.a().H(f11).M(f11).w(dimensionPixelOffset).B(dimensionPixelOffset).m();
        EditText editText2 = this.f29851d;
        ab.i iVarO = ab.i.o(getContext(), popupElevation, editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null);
        iVarO.setShapeAppearanceModel(nVarM);
        iVarO.f0(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        return iVarO;
    }

    private static Drawable G(ab.i iVar, int i11, int i12, int[][] iArr) {
        return new RippleDrawable(new ColorStateList(iArr, new int[]{com.google.android.material.color.b.j(i12, i11, 0.1f), i11}), iVar, iVar);
    }

    private int H(int i11, boolean z10) {
        int compoundPaddingLeft;
        if (z10 || getPrefixText() == null) {
            compoundPaddingLeft = (!z10 || getSuffixText() == null) ? this.f29851d.getCompoundPaddingLeft() : this.f29849c.A();
        } else {
            compoundPaddingLeft = this.f29847b.c();
        }
        return i11 + compoundPaddingLeft;
    }

    private int I(int i11, boolean z10) {
        int compoundPaddingRight;
        if (z10 || getSuffixText() == null) {
            compoundPaddingRight = (!z10 || getPrefixText() == null) ? this.f29851d.getCompoundPaddingRight() : this.f29847b.c();
        } else {
            compoundPaddingRight = this.f29849c.A();
        }
        return i11 - compoundPaddingRight;
    }

    private static Drawable J(Context context, ab.i iVar, int i11, int[][] iArr) {
        int iC = com.google.android.material.color.b.c(context, R$attr.colorSurface, "TextInputLayout");
        ab.i iVar2 = new ab.i(iVar.G());
        int iJ = com.google.android.material.color.b.j(i11, iC, 0.1f);
        iVar2.d0(new ColorStateList(iArr, new int[]{iJ, 0}));
        iVar2.setTint(iC);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iJ, iC});
        ab.i iVar3 = new ab.i(iVar.G());
        iVar3.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, iVar2, iVar3), iVar});
    }

    private void K() {
        TextView textView = this.f29883t;
        if (textView == null || !this.f29881s) {
            return;
        }
        textView.setText((CharSequence) null);
        androidx.transition.s.a(this.f29845a, this.f29891x);
        this.f29883t.setVisibility(4);
    }

    private boolean M() {
        return X() || (this.f29873o != null && this.f29869m);
    }

    private boolean N() {
        return this.O == 1 && this.f29851d.getMinLines() <= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int O(Editable editable) {
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P() {
        this.f29851d.requestLayout();
    }

    private void Q() {
        o();
        l0();
        u0();
        b0();
        j();
        if (this.O != 0) {
            n0();
        }
        V();
    }

    private void R() {
        if (A()) {
            RectF rectF = this.f29846a0;
            this.f29888v0.o(rectF, this.f29851d.getWidth(), this.f29851d.getGravity());
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            n(rectF);
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.Q);
            ((h) this.F).y0(rectF);
        }
    }

    private void S() {
        if (!A() || this.f29886u0) {
            return;
        }
        x();
        R();
    }

    private static void T(ViewGroup viewGroup, boolean z10) {
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            childAt.setEnabled(z10);
            if (childAt instanceof ViewGroup) {
                T((ViewGroup) childAt, z10);
            }
        }
    }

    private void U() {
        TextView textView = this.f29883t;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void V() {
        EditText editText = this.f29851d;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i11 = this.O;
                if (i11 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i11 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    private boolean Y() {
        return (this.f29849c.J() || ((this.f29849c.C() && isEndIconVisible()) || this.f29849c.y() != null)) && this.f29849c.getMeasuredWidth() > 0;
    }

    private boolean Z() {
        return (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.f29847b.getMeasuredWidth() > 0;
    }

    private void a0() {
        if (this.f29883t == null || !this.f29881s || TextUtils.isEmpty(this.f29879r)) {
            return;
        }
        this.f29883t.setText(this.f29879r);
        androidx.transition.s.a(this.f29845a, this.f29889w);
        this.f29883t.setVisibility(0);
        this.f29883t.bringToFront();
        announceForAccessibility(this.f29879r);
    }

    private void b0() {
        if (this.O == 1) {
            if (xa.c.k(getContext())) {
                this.P = getResources().getDimensionPixelSize(R$dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (xa.c.j(getContext())) {
                this.P = getResources().getDimensionPixelSize(R$dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    private void c0(Rect rect) {
        ab.i iVar = this.J;
        if (iVar != null) {
            int i11 = rect.bottom;
            iVar.setBounds(rect.left, i11 - this.R, rect.right, i11);
        }
        ab.i iVar2 = this.K;
        if (iVar2 != null) {
            int i12 = rect.bottom;
            iVar2.setBounds(rect.left, i12 - this.S, rect.right, i12);
        }
    }

    private void d0() {
        if (this.f29873o != null) {
            EditText editText = this.f29851d;
            e0(editText == null ? null : editText.getText());
        }
    }

    private static void f0(Context context, TextView textView, int i11, int i12, boolean z10) {
        textView.setContentDescription(context.getString(z10 ? R$string.character_counter_overflowed_content_description : R$string.character_counter_content_description, Integer.valueOf(i11), Integer.valueOf(i12)));
    }

    private void g0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f29873o;
        if (textView != null) {
            W(textView, this.f29869m ? this.f29875p : this.f29877q);
            if (!this.f29869m && (colorStateList2 = this.f29893y) != null) {
                this.f29873o.setTextColor(colorStateList2);
            }
            if (!this.f29869m || (colorStateList = this.f29895z) == null) {
                return;
            }
            this.f29873o.setTextColor(colorStateList);
        }
    }

    @Nullable
    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f29851d;
        if (!(editText instanceof AutoCompleteTextView) || q.a(editText)) {
            return this.F;
        }
        int iD = com.google.android.material.color.b.d(this.f29851d, R$attr.colorControlHighlight);
        int i11 = this.O;
        if (i11 == 2) {
            return J(getContext(), this.F, iD, D0);
        }
        if (i11 == 1) {
            return G(this.F, this.U, iD, D0);
        }
        return null;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.H == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.H = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.H.addState(new int[0], F(false));
        }
        return this.H;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.G == null) {
            this.G = F(true);
        }
        return this.G;
    }

    private void h0() {
        ColorStateList colorStateList;
        ColorStateList colorStateListG = this.A;
        if (colorStateListG == null) {
            colorStateListG = com.google.android.material.color.b.g(getContext(), R$attr.colorControlActivated);
        }
        EditText editText = this.f29851d;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = a1.a.r(this.f29851d.getTextCursorDrawable()).mutate();
        if (M() && (colorStateList = this.B) != null) {
            colorStateListG = colorStateList;
        }
        a1.a.o(drawableMutate, colorStateListG);
    }

    private void i() {
        TextView textView = this.f29883t;
        if (textView != null) {
            this.f29845a.addView(textView);
            this.f29883t.setVisibility(0);
        }
    }

    private void j() {
        if (this.f29851d == null || this.O != 1) {
            return;
        }
        if (xa.c.k(getContext())) {
            EditText editText = this.f29851d;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.f29851d), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (xa.c.j(getContext())) {
            EditText editText2 = this.f29851d;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.f29851d), getResources().getDimensionPixelSize(R$dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    private void k0() {
        ViewCompat.setBackground(this.f29851d, getEditTextBoxBackground());
    }

    private void l() {
        ab.i iVar = this.F;
        if (iVar == null) {
            return;
        }
        ab.n nVarG = iVar.G();
        ab.n nVar = this.L;
        if (nVarG != nVar) {
            this.F.setShapeAppearanceModel(nVar);
        }
        if (v()) {
            this.F.l0(this.Q, this.T);
        }
        int iP = p();
        this.U = iP;
        this.F.d0(ColorStateList.valueOf(iP));
        m();
        l0();
    }

    private void m() {
        if (this.J == null || this.K == null) {
            return;
        }
        if (w()) {
            this.J.d0(this.f29851d.isFocused() ? ColorStateList.valueOf(this.f29866k0) : ColorStateList.valueOf(this.T));
            this.K.d0(ColorStateList.valueOf(this.T));
        }
        invalidate();
    }

    private boolean m0() {
        int iMax;
        if (this.f29851d == null || this.f29851d.getMeasuredHeight() >= (iMax = Math.max(this.f29849c.getMeasuredHeight(), this.f29847b.getMeasuredHeight()))) {
            return false;
        }
        this.f29851d.setMinimumHeight(iMax);
        return true;
    }

    private void n(RectF rectF) {
        float f11 = rectF.left;
        int i11 = this.N;
        rectF.left = f11 - i11;
        rectF.right += i11;
    }

    private void n0() {
        if (this.O != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f29845a.getLayoutParams();
            int iU = u();
            if (iU != layoutParams.topMargin) {
                layoutParams.topMargin = iU;
                this.f29845a.requestLayout();
            }
        }
    }

    private void o() {
        int i11 = this.O;
        if (i11 == 0) {
            this.F = null;
            this.J = null;
            this.K = null;
            return;
        }
        if (i11 == 1) {
            this.F = new ab.i(this.L);
            this.J = new ab.i();
            this.K = new ab.i();
        } else {
            if (i11 != 2) {
                throw new IllegalArgumentException(this.O + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.C || (this.F instanceof h)) {
                this.F = new ab.i(this.L);
            } else {
                this.F = h.t0(this.L);
            }
            this.J = null;
            this.K = null;
        }
    }

    private int p() {
        return this.O == 1 ? com.google.android.material.color.b.i(com.google.android.material.color.b.e(this, R$attr.colorSurface, 0), this.U) : this.U;
    }

    private void p0(boolean z10, boolean z11) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f29851d;
        boolean z12 = false;
        boolean z13 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f29851d;
        if (editText2 != null && editText2.hasFocus()) {
            z12 = true;
        }
        ColorStateList colorStateList2 = this.f29862i0;
        if (colorStateList2 != null) {
            this.f29888v0.e0(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.f29862i0;
            this.f29888v0.e0(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f29882s0) : this.f29882s0));
        } else if (X()) {
            this.f29888v0.e0(this.f29863j.r());
        } else if (this.f29869m && (textView = this.f29873o) != null) {
            this.f29888v0.e0(textView.getTextColors());
        } else if (z12 && (colorStateList = this.f29864j0) != null) {
            this.f29888v0.j0(colorStateList);
        }
        if (z13 || !this.f29890w0 || (isEnabled() && z12)) {
            if (z11 || this.f29886u0) {
                y(z10);
                return;
            }
            return;
        }
        if (z11 || !this.f29886u0) {
            E(z10);
        }
    }

    private Rect q(Rect rect) {
        if (this.f29851d == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.W;
        boolean zP = com.google.android.material.internal.f0.p(this);
        rect2.bottom = rect.bottom;
        int i11 = this.O;
        if (i11 == 1) {
            rect2.left = H(rect.left, zP);
            rect2.top = rect.top + this.P;
            rect2.right = I(rect.right, zP);
            return rect2;
        }
        if (i11 != 2) {
            rect2.left = H(rect.left, zP);
            rect2.top = getPaddingTop();
            rect2.right = I(rect.right, zP);
            return rect2;
        }
        rect2.left = rect.left + this.f29851d.getPaddingLeft();
        rect2.top = rect.top - u();
        rect2.right = rect.right - this.f29851d.getPaddingRight();
        return rect2;
    }

    private void q0() {
        EditText editText;
        if (this.f29883t == null || (editText = this.f29851d) == null) {
            return;
        }
        this.f29883t.setGravity(editText.getGravity());
        this.f29883t.setPadding(this.f29851d.getCompoundPaddingLeft(), this.f29851d.getCompoundPaddingTop(), this.f29851d.getCompoundPaddingRight(), this.f29851d.getCompoundPaddingBottom());
    }

    private int r(Rect rect, Rect rect2, float f11) {
        return N() ? (int) (rect2.top + f11) : rect.bottom - this.f29851d.getCompoundPaddingBottom();
    }

    private void r0() {
        EditText editText = this.f29851d;
        s0(editText == null ? null : editText.getText());
    }

    private int s(Rect rect, float f11) {
        return N() ? (int) (rect.centerY() - (f11 / 2.0f)) : rect.top + this.f29851d.getCompoundPaddingTop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0(Editable editable) {
        if (this.f29871n.a(editable) != 0 || this.f29886u0) {
            K();
        } else {
            a0();
        }
    }

    private void setEditText(EditText editText) {
        if (this.f29851d != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3) {
            boolean z10 = editText instanceof TextInputEditText;
        }
        this.f29851d = editText;
        int i11 = this.f29855f;
        if (i11 != -1) {
            setMinEms(i11);
        } else {
            setMinWidth(this.f29859h);
        }
        int i12 = this.f29857g;
        if (i12 != -1) {
            setMaxEms(i12);
        } else {
            setMaxWidth(this.f29861i);
        }
        this.I = false;
        Q();
        setTextInputAccessibilityDelegate(new c(this));
        this.f29888v0.O0(this.f29851d.getTypeface());
        this.f29888v0.w0(this.f29851d.getTextSize());
        int i13 = Build.VERSION.SDK_INT;
        this.f29888v0.r0(this.f29851d.getLetterSpacing());
        int gravity = this.f29851d.getGravity();
        this.f29888v0.k0((gravity & (-113)) | 48);
        this.f29888v0.v0(gravity);
        this.f29884t0 = ViewCompat.getMinimumHeight(editText);
        this.f29851d.addTextChangedListener(new a(editText));
        if (this.f29862i0 == null) {
            this.f29862i0 = this.f29851d.getHintTextColors();
        }
        if (this.C) {
            if (TextUtils.isEmpty(this.D)) {
                CharSequence hint = this.f29851d.getHint();
                this.f29853e = hint;
                setHint(hint);
                this.f29851d.setHint((CharSequence) null);
            }
            this.E = true;
        }
        if (i13 >= 29) {
            h0();
        }
        if (this.f29873o != null) {
            e0(this.f29851d.getText());
        }
        j0();
        this.f29863j.f();
        this.f29847b.bringToFront();
        this.f29849c.bringToFront();
        B();
        this.f29849c.D0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        p0(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.D)) {
            return;
        }
        this.D = charSequence;
        this.f29888v0.L0(charSequence);
        if (this.f29886u0) {
            return;
        }
        R();
    }

    private void setPlaceholderTextEnabled(boolean z10) {
        if (this.f29881s == z10) {
            return;
        }
        if (z10) {
            i();
        } else {
            U();
            this.f29883t = null;
        }
        this.f29881s = z10;
    }

    private Rect t(Rect rect) {
        if (this.f29851d == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.W;
        float fC = this.f29888v0.C();
        rect2.left = rect.left + this.f29851d.getCompoundPaddingLeft();
        rect2.top = s(rect, fC);
        rect2.right = rect.right - this.f29851d.getCompoundPaddingRight();
        rect2.bottom = r(rect, rect2, fC);
        return rect2;
    }

    private void t0(boolean z10, boolean z11) {
        int defaultColor = this.f29872n0.getDefaultColor();
        int colorForState = this.f29872n0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f29872n0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z10) {
            this.T = colorForState2;
        } else if (z11) {
            this.T = colorForState;
        } else {
            this.T = defaultColor;
        }
    }

    private int u() {
        float fR;
        if (!this.C) {
            return 0;
        }
        int i11 = this.O;
        if (i11 == 0) {
            fR = this.f29888v0.r();
        } else {
            if (i11 != 2) {
                return 0;
            }
            fR = this.f29888v0.r() / 2.0f;
        }
        return (int) fR;
    }

    private boolean v() {
        return this.O == 2 && w();
    }

    private boolean w() {
        return this.Q > -1 && this.T != 0;
    }

    private void x() {
        if (A()) {
            ((h) this.F).w0();
        }
    }

    private void y(boolean z10) {
        ValueAnimator valueAnimator = this.f29894y0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f29894y0.cancel();
        }
        if (z10 && this.f29892x0) {
            k(1.0f);
        } else {
            this.f29888v0.z0(1.0f);
        }
        this.f29886u0 = false;
        if (A()) {
            R();
        }
        r0();
        this.f29847b.m(false);
        this.f29849c.L(false);
    }

    private androidx.transition.c z() {
        androidx.transition.c cVar = new androidx.transition.c();
        cVar.X(wa.j.f(getContext(), R$attr.motionDurationShort2, 87));
        cVar.Z(wa.j.g(getContext(), R$attr.motionEasingLinearInterpolator, oa.a.f70918a));
        return cVar;
    }

    final boolean L() {
        return this.f29886u0;
    }

    void W(TextView textView, int i11) {
        try {
            androidx.core.widget.m.q(textView, i11);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        androidx.core.widget.m.q(textView, R$style.TextAppearance_AppCompat_Caption);
        textView.setTextColor(androidx.core.content.b.getColor(getContext(), R$color.design_error));
    }

    boolean X() {
        return this.f29863j.l();
    }

    public void addOnEditTextAttachedListener(@NonNull e eVar) {
        this.f29854e0.add(eVar);
        if (this.f29851d != null) {
            eVar.a(this);
        }
    }

    public void addOnEndIconChangedListener(@NonNull f fVar) {
        this.f29849c.g(fVar);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i11, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i11, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f29845a.addView(view, layoutParams2);
        this.f29845a.setLayoutParams(layoutParams);
        n0();
        setEditText((EditText) view);
    }

    public void clearOnEditTextAttachedListeners() {
        this.f29854e0.clear();
    }

    public void clearOnEndIconChangedListeners() {
        this.f29849c.j();
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i11) {
        EditText editText = this.f29851d;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i11);
            return;
        }
        if (this.f29853e != null) {
            boolean z10 = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.f29851d.setHint(this.f29853e);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i11);
                return;
            } finally {
                this.f29851d.setHint(hint);
                this.E = z10;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i11);
        onProvideAutofillVirtualStructure(viewStructure, i11);
        viewStructure.setChildCount(this.f29845a.getChildCount());
        for (int i12 = 0; i12 < this.f29845a.getChildCount(); i12++) {
            View childAt = this.f29845a.getChildAt(i12);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i12);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i11);
            if (childAt == this.f29851d) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.A0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.A0 = false;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        D(canvas);
        C(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f29896z0) {
            return;
        }
        this.f29896z0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.b bVar = this.f29888v0;
        boolean zJ0 = bVar != null ? bVar.J0(drawableState) : false;
        if (this.f29851d != null) {
            o0(ViewCompat.isLaidOut(this) && isEnabled());
        }
        j0();
        u0();
        if (zJ0) {
            invalidate();
        }
        this.f29896z0 = false;
    }

    void e0(Editable editable) {
        int iA = this.f29871n.a(editable);
        boolean z10 = this.f29869m;
        int i11 = this.f29867l;
        if (i11 == -1) {
            this.f29873o.setText(String.valueOf(iA));
            this.f29873o.setContentDescription(null);
            this.f29869m = false;
        } else {
            this.f29869m = iA > i11;
            f0(getContext(), this.f29873o, iA, this.f29867l, this.f29869m);
            if (z10 != this.f29869m) {
                g0();
            }
            this.f29873o.setText(androidx.core.text.a.c().l(getContext().getString(R$string.character_counter_pattern, Integer.valueOf(iA), Integer.valueOf(this.f29867l))));
        }
        if (this.f29851d == null || z10 == this.f29869m) {
            return;
        }
        o0(false);
        u0();
        j0();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f29851d;
        return editText != null ? editText.getBaseline() + getPaddingTop() + u() : super.getBaseline();
    }

    @NonNull
    ab.i getBoxBackground() {
        int i11 = this.O;
        if (i11 == 1 || i11 == 2) {
            return this.F;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.U;
    }

    public int getBoxBackgroundMode() {
        return this.O;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.P;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return com.google.android.material.internal.f0.p(this) ? this.L.j().a(this.f29846a0) : this.L.l().a(this.f29846a0);
    }

    public float getBoxCornerRadiusBottomStart() {
        return com.google.android.material.internal.f0.p(this) ? this.L.l().a(this.f29846a0) : this.L.j().a(this.f29846a0);
    }

    public float getBoxCornerRadiusTopEnd() {
        return com.google.android.material.internal.f0.p(this) ? this.L.r().a(this.f29846a0) : this.L.t().a(this.f29846a0);
    }

    public float getBoxCornerRadiusTopStart() {
        return com.google.android.material.internal.f0.p(this) ? this.L.t().a(this.f29846a0) : this.L.r().a(this.f29846a0);
    }

    public int getBoxStrokeColor() {
        return this.f29870m0;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.f29872n0;
    }

    public int getBoxStrokeWidth() {
        return this.R;
    }

    public int getBoxStrokeWidthFocused() {
        return this.S;
    }

    public int getCounterMaxLength() {
        return this.f29867l;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f29865k && this.f29869m && (textView = this.f29873o) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f29895z;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f29893y;
    }

    @Nullable
    public ColorStateList getCursorColor() {
        return this.A;
    }

    @Nullable
    public ColorStateList getCursorErrorColor() {
        return this.B;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.f29862i0;
    }

    @Nullable
    public EditText getEditText() {
        return this.f29851d;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.f29849c.n();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.f29849c.p();
    }

    public int getEndIconMinSize() {
        return this.f29849c.q();
    }

    public int getEndIconMode() {
        return this.f29849c.r();
    }

    @NonNull
    public ImageView.ScaleType getEndIconScaleType() {
        return this.f29849c.s();
    }

    @NonNull
    CheckableImageButton getEndIconView() {
        return this.f29849c.t();
    }

    @Nullable
    public CharSequence getError() {
        if (this.f29863j.A()) {
            return this.f29863j.p();
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f29863j.n();
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f29863j.o();
    }

    public int getErrorCurrentTextColors() {
        return this.f29863j.q();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.f29849c.u();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f29863j.B()) {
            return this.f29863j.s();
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f29863j.u();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    final float getHintCollapsedTextHeight() {
        return this.f29888v0.r();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.f29888v0.w();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.f29864j0;
    }

    @NonNull
    public d getLengthCounter() {
        return this.f29871n;
    }

    public int getMaxEms() {
        return this.f29857g;
    }

    public int getMaxWidth() {
        return this.f29861i;
    }

    public int getMinEms() {
        return this.f29855f;
    }

    public int getMinWidth() {
        return this.f29859h;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f29849c.w();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f29849c.x();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f29881s) {
            return this.f29879r;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f29887v;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f29885u;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f29847b.a();
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f29847b.b();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f29847b.d();
    }

    @NonNull
    public ab.n getShapeAppearanceModel() {
        return this.L;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f29847b.e();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f29847b.f();
    }

    public int getStartIconMinSize() {
        return this.f29847b.g();
    }

    @NonNull
    public ImageView.ScaleType getStartIconScaleType() {
        return this.f29847b.h();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.f29849c.y();
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.f29849c.z();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.f29849c.B();
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f29848b0;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    boolean i0() {
        boolean z10;
        if (this.f29851d == null) {
            return false;
        }
        boolean z11 = true;
        if (Z()) {
            int measuredWidth = this.f29847b.getMeasuredWidth() - this.f29851d.getPaddingLeft();
            if (this.f29850c0 == null || this.f29852d0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f29850c0 = colorDrawable;
                this.f29852d0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrA = androidx.core.widget.m.a(this.f29851d);
            Drawable drawable = drawableArrA[0];
            Drawable drawable2 = this.f29850c0;
            if (drawable != drawable2) {
                androidx.core.widget.m.k(this.f29851d, drawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                z10 = true;
            } else {
                z10 = false;
            }
        } else if (this.f29850c0 != null) {
            Drawable[] drawableArrA2 = androidx.core.widget.m.a(this.f29851d);
            androidx.core.widget.m.k(this.f29851d, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
            this.f29850c0 = null;
            z10 = true;
        } else {
            z10 = false;
        }
        if (Y()) {
            int measuredWidth2 = this.f29849c.B().getMeasuredWidth() - this.f29851d.getPaddingRight();
            CheckableImageButton checkableImageButtonM = this.f29849c.m();
            if (checkableImageButtonM != null) {
                measuredWidth2 = measuredWidth2 + checkableImageButtonM.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) checkableImageButtonM.getLayoutParams());
            }
            Drawable[] drawableArrA3 = androidx.core.widget.m.a(this.f29851d);
            Drawable drawable3 = this.f29856f0;
            if (drawable3 == null || this.f29858g0 == measuredWidth2) {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f29856f0 = colorDrawable2;
                    this.f29858g0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = drawableArrA3[2];
                Drawable drawable5 = this.f29856f0;
                if (drawable4 != drawable5) {
                    this.f29860h0 = drawable4;
                    androidx.core.widget.m.k(this.f29851d, drawableArrA3[0], drawableArrA3[1], drawable5, drawableArrA3[3]);
                } else {
                    z11 = z10;
                }
            } else {
                this.f29858g0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                androidx.core.widget.m.k(this.f29851d, drawableArrA3[0], drawableArrA3[1], this.f29856f0, drawableArrA3[3]);
            }
        } else {
            if (this.f29856f0 == null) {
                return z10;
            }
            Drawable[] drawableArrA4 = androidx.core.widget.m.a(this.f29851d);
            if (drawableArrA4[2] == this.f29856f0) {
                androidx.core.widget.m.k(this.f29851d, drawableArrA4[0], drawableArrA4[1], this.f29860h0, drawableArrA4[3]);
            } else {
                z11 = z10;
            }
            this.f29856f0 = null;
        }
        return z11;
    }

    public boolean isCounterEnabled() {
        return this.f29865k;
    }

    public boolean isEndIconCheckable() {
        return this.f29849c.G();
    }

    public boolean isEndIconVisible() {
        return this.f29849c.I();
    }

    public boolean isErrorEnabled() {
        return this.f29863j.A();
    }

    public boolean isExpandedHintEnabled() {
        return this.f29890w0;
    }

    public boolean isHelperTextEnabled() {
        return this.f29863j.B();
    }

    public boolean isHintAnimationEnabled() {
        return this.f29892x0;
    }

    public boolean isHintEnabled() {
        return this.C;
    }

    @Deprecated
    public boolean isPasswordVisibilityToggleEnabled() {
        return this.f29849c.K();
    }

    public boolean isProvidingHint() {
        return this.E;
    }

    public boolean isStartIconCheckable() {
        return this.f29847b.k();
    }

    public boolean isStartIconVisible() {
        return this.f29847b.l();
    }

    void j0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f29851d;
        if (editText == null || this.O != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (androidx.appcompat.widget.y.a(background)) {
            background = background.mutate();
        }
        if (X()) {
            background.setColorFilter(androidx.appcompat.widget.f.e(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f29869m && (textView = this.f29873o) != null) {
            background.setColorFilter(androidx.appcompat.widget.f.e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            a1.a.c(background);
            this.f29851d.refreshDrawableState();
        }
    }

    void k(float f11) {
        if (this.f29888v0.F() == f11) {
            return;
        }
        if (this.f29894y0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f29894y0 = valueAnimator;
            valueAnimator.setInterpolator(wa.j.g(getContext(), R$attr.motionEasingEmphasizedInterpolator, oa.a.f70919b));
            this.f29894y0.setDuration(wa.j.f(getContext(), R$attr.motionDurationMedium4, 167));
            this.f29894y0.addUpdateListener(new b());
        }
        this.f29894y0.setFloatValues(this.f29888v0.F(), f11);
        this.f29894y0.start();
    }

    void l0() {
        EditText editText = this.f29851d;
        if (editText == null || this.F == null) {
            return;
        }
        if ((this.I || editText.getBackground() == null) && this.O != 0) {
            k0();
            this.I = true;
        }
    }

    void o0(boolean z10) {
        p0(z10, false);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f29888v0.Z(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f29849c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.B0 = false;
        boolean zM0 = m0();
        boolean zI0 = i0();
        if (zM0 || zI0) {
            this.f29851d.post(new Runnable() { // from class: com.google.android.material.textfield.f0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f29920a.P();
                }
            });
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        EditText editText = this.f29851d;
        if (editText != null) {
            Rect rect = this.V;
            com.google.android.material.internal.d.a(this, editText, rect);
            c0(rect);
            if (this.C) {
                this.f29888v0.w0(this.f29851d.getTextSize());
                int gravity = this.f29851d.getGravity();
                this.f29888v0.k0((gravity & (-113)) | 48);
                this.f29888v0.v0(gravity);
                this.f29888v0.g0(q(rect));
                this.f29888v0.q0(t(rect));
                this.f29888v0.b0();
                if (!A() || this.f29886u0) {
                    return;
                }
                R();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (!this.B0) {
            this.f29849c.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.B0 = true;
        }
        q0();
        this.f29849c.D0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f29897a);
        if (savedState.f29898b) {
            post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    TextInputLayout.this.f29849c.i();
                }
            });
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i11) {
        super.onRtlPropertiesChanged(i11);
        boolean z10 = i11 == 1;
        if (z10 != this.M) {
            float fA = this.L.r().a(this.f29846a0);
            float fA2 = this.L.t().a(this.f29846a0);
            ab.n nVarM = ab.n.a().G(this.L.s()).L(this.L.q()).v(this.L.k()).A(this.L.i()).H(fA2).M(fA).w(this.L.l().a(this.f29846a0)).B(this.L.j().a(this.f29846a0)).m();
            this.M = z10;
            setShapeAppearanceModel(nVarM);
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (X()) {
            savedState.f29897a = getError();
        }
        savedState.f29898b = this.f29849c.H();
        return savedState;
    }

    @Deprecated
    public void passwordVisibilityToggleRequested(boolean z10) {
        this.f29849c.A0(z10);
    }

    public void refreshEndIconDrawableState() {
        this.f29849c.N();
    }

    public void refreshErrorIconDrawableState() {
        this.f29849c.O();
    }

    public void refreshStartIconDrawableState() {
        this.f29847b.n();
    }

    public void removeOnEditTextAttachedListener(@NonNull e eVar) {
        this.f29854e0.remove(eVar);
    }

    public void removeOnEndIconChangedListener(@NonNull f fVar) {
        this.f29849c.Q(fVar);
    }

    public void setBoxBackgroundColor(int i11) {
        if (this.U != i11) {
            this.U = i11;
            this.f29874o0 = i11;
            this.f29878q0 = i11;
            this.f29880r0 = i11;
            l();
        }
    }

    public void setBoxBackgroundColorResource(int i11) {
        setBoxBackgroundColor(androidx.core.content.b.getColor(getContext(), i11));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f29874o0 = defaultColor;
        this.U = defaultColor;
        this.f29876p0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f29878q0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f29880r0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        l();
    }

    public void setBoxBackgroundMode(int i11) {
        if (i11 == this.O) {
            return;
        }
        this.O = i11;
        if (this.f29851d != null) {
            Q();
        }
    }

    public void setBoxCollapsedPaddingTop(int i11) {
        this.P = i11;
    }

    public void setBoxCornerFamily(int i11) {
        this.L = this.L.v().F(i11, this.L.r()).K(i11, this.L.t()).u(i11, this.L.j()).z(i11, this.L.l()).m();
        l();
    }

    public void setBoxCornerRadii(float f11, float f12, float f13, float f14) {
        boolean zP = com.google.android.material.internal.f0.p(this);
        this.M = zP;
        float f15 = zP ? f12 : f11;
        if (!zP) {
            f11 = f12;
        }
        float f16 = zP ? f14 : f13;
        if (!zP) {
            f13 = f14;
        }
        ab.i iVar = this.F;
        if (iVar != null && iVar.L() == f15 && this.F.M() == f11 && this.F.u() == f16 && this.F.v() == f13) {
            return;
        }
        this.L = this.L.v().H(f15).M(f11).w(f16).B(f13).m();
        l();
    }

    public void setBoxCornerRadiiResources(int i11, int i12, int i13, int i14) {
        setBoxCornerRadii(getContext().getResources().getDimension(i11), getContext().getResources().getDimension(i12), getContext().getResources().getDimension(i14), getContext().getResources().getDimension(i13));
    }

    public void setBoxStrokeColor(int i11) {
        if (this.f29870m0 != i11) {
            this.f29870m0 = i11;
            u0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f29866k0 = colorStateList.getDefaultColor();
            this.f29882s0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f29868l0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f29870m0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f29870m0 != colorStateList.getDefaultColor()) {
            this.f29870m0 = colorStateList.getDefaultColor();
        }
        u0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.f29872n0 != colorStateList) {
            this.f29872n0 = colorStateList;
            u0();
        }
    }

    public void setBoxStrokeWidth(int i11) {
        this.R = i11;
        u0();
    }

    public void setBoxStrokeWidthFocused(int i11) {
        this.S = i11;
        u0();
    }

    public void setBoxStrokeWidthFocusedResource(int i11) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i11));
    }

    public void setBoxStrokeWidthResource(int i11) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i11));
    }

    public void setCounterEnabled(boolean z10) {
        if (this.f29865k != z10) {
            if (z10) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f29873o = appCompatTextView;
                appCompatTextView.setId(R$id.textinput_counter);
                Typeface typeface = this.f29848b0;
                if (typeface != null) {
                    this.f29873o.setTypeface(typeface);
                }
                this.f29873o.setMaxLines(1);
                this.f29863j.e(this.f29873o, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f29873o.getLayoutParams(), getResources().getDimensionPixelOffset(R$dimen.mtrl_textinput_counter_margin_start));
                g0();
                d0();
            } else {
                this.f29863j.C(this.f29873o, 2);
                this.f29873o = null;
            }
            this.f29865k = z10;
        }
    }

    public void setCounterMaxLength(int i11) {
        if (this.f29867l != i11) {
            if (i11 > 0) {
                this.f29867l = i11;
            } else {
                this.f29867l = -1;
            }
            if (this.f29865k) {
                d0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i11) {
        if (this.f29875p != i11) {
            this.f29875p = i11;
            g0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29895z != colorStateList) {
            this.f29895z = colorStateList;
            g0();
        }
    }

    public void setCounterTextAppearance(int i11) {
        if (this.f29877q != i11) {
            this.f29877q = i11;
            g0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29893y != colorStateList) {
            this.f29893y = colorStateList;
            g0();
        }
    }

    public void setCursorColor(@Nullable ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            h0();
        }
    }

    public void setCursorErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            if (M()) {
                h0();
            }
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.f29862i0 = colorStateList;
        this.f29864j0 = colorStateList;
        if (this.f29851d != null) {
            o0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        T(this, z10);
        super.setEnabled(z10);
    }

    public void setEndIconActivated(boolean z10) {
        this.f29849c.S(z10);
    }

    public void setEndIconCheckable(boolean z10) {
        this.f29849c.T(z10);
    }

    public void setEndIconContentDescription(int i11) {
        this.f29849c.U(i11);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        this.f29849c.V(charSequence);
    }

    public void setEndIconDrawable(int i11) {
        this.f29849c.W(i11);
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.f29849c.X(drawable);
    }

    public void setEndIconMinSize(int i11) {
        this.f29849c.Y(i11);
    }

    public void setEndIconMode(int i11) {
        this.f29849c.Z(i11);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f29849c.a0(onClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f29849c.b0(onLongClickListener);
    }

    public void setEndIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f29849c.c0(scaleType);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29849c.d0(colorStateList);
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29849c.e0(mode);
    }

    public void setEndIconVisible(boolean z10) {
        this.f29849c.f0(z10);
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f29863j.A()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f29863j.w();
        } else {
            this.f29863j.Q(charSequence);
        }
    }

    public void setErrorAccessibilityLiveRegion(int i11) {
        this.f29863j.E(i11);
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f29863j.F(charSequence);
    }

    public void setErrorEnabled(boolean z10) {
        this.f29863j.G(z10);
    }

    public void setErrorIconDrawable(int i11) {
        this.f29849c.g0(i11);
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.f29849c.h0(drawable);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f29849c.i0(onClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f29849c.j0(onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29849c.k0(colorStateList);
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29849c.l0(mode);
    }

    public void setErrorTextAppearance(int i11) {
        this.f29863j.H(i11);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f29863j.I(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z10) {
        if (this.f29890w0 != z10) {
            this.f29890w0 = z10;
            o0(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (isHelperTextEnabled()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!isHelperTextEnabled()) {
                setHelperTextEnabled(true);
            }
            this.f29863j.R(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f29863j.L(colorStateList);
    }

    public void setHelperTextEnabled(boolean z10) {
        this.f29863j.K(z10);
    }

    public void setHelperTextTextAppearance(int i11) {
        this.f29863j.J(i11);
    }

    public void setHint(int i11) {
        setHint(i11 != 0 ? getResources().getText(i11) : null);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z10) {
        this.f29892x0 = z10;
    }

    public void setHintEnabled(boolean z10) {
        if (z10 != this.C) {
            this.C = z10;
            if (z10) {
                CharSequence hint = this.f29851d.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.f29851d.setHint((CharSequence) null);
                }
                this.E = true;
            } else {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.f29851d.getHint())) {
                    this.f29851d.setHint(this.D);
                }
                setHintInternal(null);
            }
            if (this.f29851d != null) {
                n0();
            }
        }
    }

    public void setHintTextAppearance(int i11) {
        this.f29888v0.h0(i11);
        this.f29864j0 = this.f29888v0.p();
        if (this.f29851d != null) {
            o0(false);
            n0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29864j0 != colorStateList) {
            if (this.f29862i0 == null) {
                this.f29888v0.j0(colorStateList);
            }
            this.f29864j0 = colorStateList;
            if (this.f29851d != null) {
                o0(false);
            }
        }
    }

    public void setLengthCounter(@NonNull d dVar) {
        this.f29871n = dVar;
    }

    public void setMaxEms(int i11) {
        this.f29857g = i11;
        EditText editText = this.f29851d;
        if (editText == null || i11 == -1) {
            return;
        }
        editText.setMaxEms(i11);
    }

    public void setMaxWidth(int i11) {
        this.f29861i = i11;
        EditText editText = this.f29851d;
        if (editText == null || i11 == -1) {
            return;
        }
        editText.setMaxWidth(i11);
    }

    public void setMaxWidthResource(int i11) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i11));
    }

    public void setMinEms(int i11) {
        this.f29855f = i11;
        EditText editText = this.f29851d;
        if (editText == null || i11 == -1) {
            return;
        }
        editText.setMinEms(i11);
    }

    public void setMinWidth(int i11) {
        this.f29859h = i11;
        EditText editText = this.f29851d;
        if (editText == null || i11 == -1) {
            return;
        }
        editText.setMinWidth(i11);
    }

    public void setMinWidthResource(int i11) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i11));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i11) {
        this.f29849c.n0(i11);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.f29849c.o0(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i11) {
        this.f29849c.p0(i11);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.f29849c.q0(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z10) {
        this.f29849c.r0(z10);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.f29849c.s0(colorStateList);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29849c.t0(mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f29883t == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f29883t = appCompatTextView;
            appCompatTextView.setId(R$id.textinput_placeholder);
            ViewCompat.setImportantForAccessibility(this.f29883t, 2);
            androidx.transition.c cVarZ = z();
            this.f29889w = cVarZ;
            cVarZ.c0(67L);
            this.f29891x = z();
            setPlaceholderTextAppearance(this.f29887v);
            setPlaceholderTextColor(this.f29885u);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f29881s) {
                setPlaceholderTextEnabled(true);
            }
            this.f29879r = charSequence;
        }
        r0();
    }

    public void setPlaceholderTextAppearance(int i11) {
        this.f29887v = i11;
        TextView textView = this.f29883t;
        if (textView != null) {
            androidx.core.widget.m.q(textView, i11);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f29885u != colorStateList) {
            this.f29885u = colorStateList;
            TextView textView = this.f29883t;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f29847b.o(charSequence);
    }

    public void setPrefixTextAppearance(int i11) {
        this.f29847b.p(i11);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f29847b.q(colorStateList);
    }

    public void setShapeAppearanceModel(@NonNull ab.n nVar) {
        ab.i iVar = this.F;
        if (iVar == null || iVar.G() == nVar) {
            return;
        }
        this.L = nVar;
        l();
    }

    public void setStartIconCheckable(boolean z10) {
        this.f29847b.r(z10);
    }

    public void setStartIconContentDescription(int i11) {
        setStartIconContentDescription(i11 != 0 ? getResources().getText(i11) : null);
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        this.f29847b.s(charSequence);
    }

    public void setStartIconDrawable(int i11) {
        setStartIconDrawable(i11 != 0 ? g.a.b(getContext(), i11) : null);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f29847b.t(drawable);
    }

    public void setStartIconMinSize(int i11) {
        this.f29847b.u(i11);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f29847b.v(onClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f29847b.w(onLongClickListener);
    }

    public void setStartIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.f29847b.x(scaleType);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        this.f29847b.y(colorStateList);
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f29847b.z(mode);
    }

    public void setStartIconVisible(boolean z10) {
        this.f29847b.A(z10);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.f29849c.u0(charSequence);
    }

    public void setSuffixTextAppearance(int i11) {
        this.f29849c.v0(i11);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.f29849c.w0(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable c cVar) {
        EditText editText = this.f29851d;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, cVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f29848b0) {
            this.f29848b0 = typeface;
            this.f29888v0.O0(typeface);
            this.f29863j.N(typeface);
            TextView textView = this.f29873o;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void u0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.F == null || this.O == 0) {
            return;
        }
        boolean z10 = false;
        boolean z11 = isFocused() || ((editText2 = this.f29851d) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f29851d) != null && editText.isHovered())) {
            z10 = true;
        }
        if (!isEnabled()) {
            this.T = this.f29882s0;
        } else if (X()) {
            if (this.f29872n0 != null) {
                t0(z11, z10);
            } else {
                this.T = getErrorCurrentTextColors();
            }
        } else if (!this.f29869m || (textView = this.f29873o) == null) {
            if (z11) {
                this.T = this.f29870m0;
            } else if (z10) {
                this.T = this.f29868l0;
            } else {
                this.T = this.f29866k0;
            }
        } else if (this.f29872n0 != null) {
            t0(z11, z10);
        } else {
            this.T = textView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            h0();
        }
        this.f29849c.M();
        refreshStartIconDrawableState();
        if (this.O == 2) {
            int i11 = this.Q;
            if (z11 && isEnabled()) {
                this.Q = this.S;
            } else {
                this.Q = this.R;
            }
            if (this.Q != i11) {
                S();
            }
        }
        if (this.O == 1) {
            if (!isEnabled()) {
                this.U = this.f29876p0;
            } else if (z10 && !z11) {
                this.U = this.f29880r0;
            } else if (z11) {
                this.U = this.f29878q0;
            } else {
                this.U = this.f29874o0;
            }
        }
        l();
    }
}
