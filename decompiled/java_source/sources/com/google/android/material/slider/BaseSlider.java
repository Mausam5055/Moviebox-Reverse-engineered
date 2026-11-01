package com.google.android.material.slider;

import ab.i;
import ab.n;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.d0;
import com.google.android.material.internal.f0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import wa.j;

/* JADX INFO: loaded from: classes4.dex */
abstract class BaseSlider extends View {

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final String f29674v0 = "BaseSlider";
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private int L;
    private int M;
    private float N;
    private MotionEvent O;
    private boolean P;
    private float Q;
    private float R;
    private ArrayList S;
    private int T;
    private int U;
    private float V;
    private float[] W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f29679a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private boolean f29680a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f29681b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f29682b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f29683c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f29684c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f29685d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f29686d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f29687e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private boolean f29688e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f29689f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private boolean f29690f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f29691g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f29692g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final d f29693h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private ColorStateList f29694h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AccessibilityManager f29695i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private ColorStateList f29696i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AccessibilityEventSender f29697j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private ColorStateList f29698j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f29699k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private ColorStateList f29700k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f29701l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private ColorStateList f29702l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f29703m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private final Path f29704m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final List f29705n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private final RectF f29706n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f29707o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private final RectF f29708o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ValueAnimator f29709p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final i f29710p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ValueAnimator f29711q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private Drawable f29712q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f29713r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private List f29714r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f29715s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private float f29716s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29717t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f29718t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f29719u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f29720u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f29721v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f29722w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f29723x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f29724y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f29725z;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    static final int f29675w0 = R$style.Widget_MaterialComponents_Slider;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final int f29676x0 = R$attr.motionDurationMedium4;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final int f29677y0 = R$attr.motionDurationShort3;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static final int f29678z0 = R$attr.motionEasingEmphasizedInterpolator;
    private static final int A0 = R$attr.motionEasingEmphasizedAccelerateInterpolator;

    private class AccessibilityEventSender implements Runnable {
        int virtualViewId;

        private AccessibilityEventSender() {
            this.virtualViewId = -1;
        }

        /* synthetic */ AccessibilityEventSender(BaseSlider baseSlider, a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.f29693h.J(this.virtualViewId, 4);
        }

        void setVirtualViewId(int i11) {
            this.virtualViewId = i11;
        }
    }

    private enum FullCornerDirection {
        BOTH,
        LEFT,
        RIGHT,
        NONE
    }

    static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f29726a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f29727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ArrayList f29728c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f29729d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f29730e;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SliderState createFromParcel(Parcel parcel) {
                return new SliderState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SliderState[] newArray(int i11) {
                return new SliderState[i11];
            }
        }

        private SliderState(Parcel parcel) {
            super(parcel);
            this.f29726a = parcel.readFloat();
            this.f29727b = parcel.readFloat();
            ArrayList arrayList = new ArrayList();
            this.f29728c = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.f29729d = parcel.readFloat();
            this.f29730e = parcel.createBooleanArray()[0];
        }

        /* synthetic */ SliderState(Parcel parcel, a aVar) {
            this(parcel);
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeFloat(this.f29726a);
            parcel.writeFloat(this.f29727b);
            parcel.writeList(this.f29728c);
            parcel.writeFloat(this.f29729d);
            parcel.writeBooleanArray(new boolean[]{this.f29730e});
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Iterator it = BaseSlider.this.f29701l.iterator();
            while (it.hasNext()) {
                ((cb.a) it.next()).D0(fFloatValue);
            }
            ViewCompat.postInvalidateOnAnimation(BaseSlider.this);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            d0 d0VarK = f0.k(BaseSlider.this);
            Iterator it = BaseSlider.this.f29701l.iterator();
            while (it.hasNext()) {
                d0VarK.b((cb.a) it.next());
            }
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f29733a;

        static {
            int[] iArr = new int[FullCornerDirection.values().length];
            f29733a = iArr;
            try {
                iArr[FullCornerDirection.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29733a[FullCornerDirection.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29733a[FullCornerDirection.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29733a[FullCornerDirection.BOTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static class d extends androidx.customview.widget.a {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private final BaseSlider f29734n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final Rect f29735o;

        d(BaseSlider baseSlider) {
            super(baseSlider);
            this.f29735o = new Rect();
            this.f29734n = baseSlider;
        }

        private String L(int i11) {
            if (i11 == this.f29734n.getValues().size() - 1) {
                return this.f29734n.getContext().getString(R$string.material_slider_range_end);
            }
            return i11 == 0 ? this.f29734n.getContext().getString(R$string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.a
        protected void C(int i11, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.f29734n.getValues();
            float fFloatValue = values.get(i11).floatValue();
            float valueFrom = this.f29734n.getValueFrom();
            float valueTo = this.f29734n.getValueTo();
            if (this.f29734n.isEnabled()) {
                if (fFloatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (fFloatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, fFloatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb2 = new StringBuilder();
            if (this.f29734n.getContentDescription() != null) {
                sb2.append(this.f29734n.getContentDescription());
                sb2.append(",");
            }
            String strA = this.f29734n.A(fFloatValue);
            String string = this.f29734n.getContext().getString(R$string.material_slider_value);
            if (values.size() > 1) {
                string = L(i11);
            }
            sb2.append(String.format(Locale.US, "%s, %s", string, strA));
            accessibilityNodeInfoCompat.setContentDescription(sb2.toString());
            this.f29734n.q0(i11, this.f29735o);
            accessibilityNodeInfoCompat.setBoundsInParent(this.f29735o);
        }

        @Override // androidx.customview.widget.a
        protected int o(float f11, float f12) {
            for (int i11 = 0; i11 < this.f29734n.getValues().size(); i11++) {
                this.f29734n.q0(i11, this.f29735o);
                if (this.f29735o.contains((int) f11, (int) f12)) {
                    return i11;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.a
        protected void p(List list) {
            for (int i11 = 0; i11 < this.f29734n.getValues().size(); i11++) {
                list.add(Integer.valueOf(i11));
            }
        }

        @Override // androidx.customview.widget.a
        protected boolean y(int i11, int i12, Bundle bundle) {
            if (!this.f29734n.isEnabled()) {
                return false;
            }
            if (i12 != 4096 && i12 != 8192) {
                if (i12 == 16908349 && bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                    if (this.f29734n.o0(i11, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                        this.f29734n.r0();
                        this.f29734n.postInvalidate();
                        r(i11);
                        return true;
                    }
                }
                return false;
            }
            float fL = this.f29734n.l(20);
            if (i12 == 8192) {
                fL = -fL;
            }
            if (this.f29734n.P()) {
                fL = -fL;
            }
            if (!this.f29734n.o0(i11, d1.a.a(this.f29734n.getValues().get(i11).floatValue() + fL, this.f29734n.getValueFrom(), this.f29734n.getValueTo()))) {
                return false;
            }
            this.f29734n.r0();
            this.f29734n.postInvalidate();
            r(i11);
            return true;
        }
    }

    public BaseSlider(Context context, AttributeSet attributeSet, int i11) {
        super(bb.a.c(context, attributeSet, i11, f29675w0), attributeSet, i11);
        this.f29701l = new ArrayList();
        this.f29703m = new ArrayList();
        this.f29705n = new ArrayList();
        this.f29707o = false;
        this.I = -1;
        this.J = -1;
        this.P = false;
        this.S = new ArrayList();
        this.T = -1;
        this.U = -1;
        this.V = 0.0f;
        this.f29680a0 = true;
        this.f29690f0 = false;
        this.f29704m0 = new Path();
        this.f29706n0 = new RectF();
        this.f29708o0 = new RectF();
        i iVar = new i();
        this.f29710p0 = iVar;
        this.f29714r0 = Collections.emptyList();
        this.f29718t0 = 0;
        this.f29720u0 = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.material.slider.c
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                this.f29736a.s0();
            }
        };
        Context context2 = getContext();
        this.f29679a = new Paint();
        this.f29681b = new Paint();
        Paint paint = new Paint(1);
        this.f29683c = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint2 = new Paint(1);
        this.f29685d = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint();
        this.f29687e = paint3;
        Paint.Style style2 = Paint.Style.STROKE;
        paint3.setStyle(style2);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint3.setStrokeCap(cap);
        Paint paint4 = new Paint();
        this.f29689f = paint4;
        paint4.setStyle(style2);
        paint4.setStrokeCap(cap);
        Paint paint5 = new Paint();
        this.f29691g = paint5;
        paint5.setStyle(style);
        paint5.setStrokeCap(cap);
        R(context2.getResources());
        g0(context2, attributeSet, i11);
        setFocusable(true);
        setClickable(true);
        iVar.k0(2);
        this.f29713r = ViewConfiguration.get(context2).getScaledTouchSlop();
        d dVar = new d(this);
        this.f29693h = dVar;
        ViewCompat.setAccessibilityDelegate(this, dVar);
        this.f29695i = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String A(float f11) {
        if (hasLabelFormatter()) {
            throw null;
        }
        return String.format(((float) ((int) f11)) == f11 ? "%.0f" : "%.2f", Float.valueOf(f11));
    }

    private void A0() {
        if (this.R <= this.Q) {
            throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", Float.valueOf(this.R), Float.valueOf(this.Q)));
        }
    }

    private float[] B() {
        float fFloatValue = ((Float) this.S.get(0)).floatValue();
        ArrayList arrayList = this.S;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (this.S.size() == 1) {
            fFloatValue = this.Q;
        }
        float fA0 = a0(fFloatValue);
        float fA1 = a0(fFloatValue2);
        return P() ? new float[]{fA1, fA0} : new float[]{fA0, fA1};
    }

    private void B0() {
        for (Float f11 : this.S) {
            if (f11.floatValue() < this.Q || f11.floatValue() > this.R) {
                throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", f11, Float.valueOf(this.Q), Float.valueOf(this.R)));
            }
            if (this.V > 0.0f && !C0(f11.floatValue())) {
                throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", f11, Float.valueOf(this.Q), Float.valueOf(this.V), Float.valueOf(this.V)));
            }
        }
    }

    private static float C(ValueAnimator valueAnimator, float f11) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f11;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return fFloatValue;
    }

    private boolean C0(float f11) {
        return N(new BigDecimal(Float.toString(f11)).subtract(new BigDecimal(Float.toString(this.Q)), MathContext.DECIMAL64).doubleValue());
    }

    private float D(int i11, float f11) {
        float minSeparation = getMinSeparation();
        if (this.f29718t0 == 0) {
            minSeparation = q(minSeparation);
        }
        if (P()) {
            minSeparation = -minSeparation;
        }
        int i12 = i11 + 1;
        int i13 = i11 - 1;
        return d1.a.a(f11, i13 < 0 ? this.Q : ((Float) this.S.get(i13)).floatValue() + minSeparation, i12 >= this.S.size() ? this.R : ((Float) this.S.get(i12)).floatValue() - minSeparation);
    }

    private float D0(float f11) {
        return (a0(f11) * this.f29686d0) + this.D;
    }

    private int E(ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private void E0() {
        float f11 = this.V;
        if (f11 == 0.0f) {
            return;
        }
        if (((int) f11) != f11) {
            Log.w(f29674v0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "stepSize", Float.valueOf(f11)));
        }
        float f12 = this.Q;
        if (((int) f12) != f12) {
            Log.w(f29674v0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueFrom", Float.valueOf(f12)));
        }
        float f13 = this.R;
        if (((int) f13) != f13) {
            Log.w(f29674v0, String.format("Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.", "valueTo", Float.valueOf(f13)));
        }
    }

    private float[] F(float f11, float f12) {
        return new float[]{f11, f11, f12, f12, f12, f12, f11, f11};
    }

    private float G() {
        double dN0 = n0(this.f29716s0);
        if (P()) {
            dN0 = 1.0d - dN0;
        }
        float f11 = this.R;
        float f12 = this.Q;
        return (float) ((dN0 * ((double) (f11 - f12))) + ((double) f12));
    }

    private float H() {
        float f11 = this.f29716s0;
        if (P()) {
            f11 = 1.0f - f11;
        }
        float f12 = this.R;
        float f13 = this.Q;
        return (f11 * (f12 - f13)) + f13;
    }

    private boolean I() {
        return this.H > 0;
    }

    private Drawable J(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        h(drawableNewDrawable);
        return drawableNewDrawable;
    }

    private void K() {
        this.f29679a.setStrokeWidth(this.C);
        this.f29681b.setStrokeWidth(this.C);
    }

    private boolean L() {
        for (ViewParent parent = getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if ((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    private static boolean M(MotionEvent motionEvent) {
        return motionEvent.getToolType(0) == 3;
    }

    private boolean N(double d11) {
        double dDoubleValue = new BigDecimal(Double.toString(d11)).divide(new BigDecimal(Float.toString(this.V)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(dDoubleValue)) - dDoubleValue) < 1.0E-4d;
    }

    private boolean O(MotionEvent motionEvent) {
        return !M(motionEvent) && L();
    }

    private boolean Q() {
        Rect rect = new Rect();
        f0.j(this).getHitRect(rect);
        return getLocalVisibleRect(rect);
    }

    private void R(Resources resources) {
        this.f29725z = resources.getDimensionPixelSize(R$dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.mtrl_slider_track_side_padding);
        this.f29715s = dimensionPixelOffset;
        this.D = dimensionPixelOffset;
        this.f29717t = resources.getDimensionPixelSize(R$dimen.mtrl_slider_thumb_radius);
        this.f29719u = resources.getDimensionPixelSize(R$dimen.mtrl_slider_track_height);
        this.f29721v = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_radius);
        this.f29722w = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_radius);
        this.f29723x = resources.getDimensionPixelSize(R$dimen.mtrl_slider_tick_min_spacing);
        this.M = resources.getDimensionPixelSize(R$dimen.mtrl_slider_label_padding);
    }

    private void S() {
        if (this.V <= 0.0f) {
            return;
        }
        w0();
        int iMin = Math.min((int) (((this.R - this.Q) / this.V) + 1.0f), (this.f29686d0 / this.f29723x) + 1);
        float[] fArr = this.W;
        if (fArr == null || fArr.length != iMin * 2) {
            this.W = new float[iMin * 2];
        }
        float f11 = this.f29686d0 / (iMin - 1);
        for (int i11 = 0; i11 < iMin * 2; i11 += 2) {
            float[] fArr2 = this.W;
            fArr2[i11] = this.D + ((i11 / 2.0f) * f11);
            fArr2[i11 + 1] = m();
        }
    }

    private void T(Canvas canvas, int i11, int i12) {
        if (l0()) {
            int iA0 = (int) (this.D + (a0(((Float) this.S.get(this.U)).floatValue()) * i11));
            if (Build.VERSION.SDK_INT < 28) {
                int i13 = this.G;
                canvas.clipRect(iA0 - i13, i12 - i13, iA0 + i13, i13 + i12, Region.Op.UNION);
            }
            canvas.drawCircle(iA0, i12, this.G, this.f29685d);
        }
    }

    private void U(Canvas canvas, int i11) {
        if (this.K <= 0) {
            return;
        }
        if (this.S.size() >= 1) {
            ArrayList arrayList = this.S;
            float fFloatValue = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
            float f11 = this.R;
            if (fFloatValue < f11) {
                canvas.drawPoint(D0(f11), i11, this.f29691g);
            }
        }
        if (this.S.size() > 1) {
            float fFloatValue2 = ((Float) this.S.get(0)).floatValue();
            float f12 = this.Q;
            if (fFloatValue2 > f12) {
                canvas.drawPoint(D0(f12), i11, this.f29691g);
            }
        }
    }

    private void V(Canvas canvas) {
        if (!this.f29680a0 || this.V <= 0.0f) {
            return;
        }
        float[] fArrB = B();
        int iCeil = (int) Math.ceil(fArrB[0] * ((this.W.length / 2.0f) - 1.0f));
        int iFloor = (int) Math.floor(fArrB[1] * ((this.W.length / 2.0f) - 1.0f));
        if (iCeil > 0) {
            canvas.drawPoints(this.W, 0, iCeil * 2, this.f29687e);
        }
        if (iCeil <= iFloor) {
            canvas.drawPoints(this.W, iCeil * 2, ((iFloor - iCeil) + 1) * 2, this.f29689f);
        }
        int i11 = (iFloor + 1) * 2;
        float[] fArr = this.W;
        if (i11 < fArr.length) {
            canvas.drawPoints(fArr, i11, fArr.length - i11, this.f29687e);
        }
    }

    private boolean W() {
        int iMax = this.f29715s + Math.max(Math.max(Math.max((this.E / 2) - this.f29717t, 0), Math.max((this.C - this.f29719u) / 2, 0)), Math.max(Math.max(this.f29682b0 - this.f29721v, 0), Math.max(this.f29684c0 - this.f29722w, 0)));
        if (this.D == iMax) {
            return false;
        }
        this.D = iMax;
        if (!ViewCompat.isLaidOut(this)) {
            return true;
        }
        u0(getWidth());
        return true;
    }

    private boolean X() {
        int iMax = Math.max(this.f29725z, Math.max(this.C + getPaddingTop() + getPaddingBottom(), this.F + getPaddingTop() + getPaddingBottom()));
        if (iMax == this.A) {
            return false;
        }
        this.A = iMax;
        return true;
    }

    private boolean Y(int i11) {
        int i12 = this.U;
        int iC = (int) d1.a.c(((long) i12) + ((long) i11), 0L, this.S.size() - 1);
        this.U = iC;
        if (iC == i12) {
            return false;
        }
        if (this.T != -1) {
            this.T = iC;
        }
        r0();
        postInvalidate();
        return true;
    }

    private boolean Z(int i11) {
        if (P()) {
            i11 = i11 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i11;
        }
        return Y(i11);
    }

    private float a0(float f11) {
        float f12 = this.Q;
        float f13 = (f11 - f12) / (this.R - f12);
        return P() ? 1.0f - f13 : f13;
    }

    private Boolean b0(int i11, KeyEvent keyEvent) {
        if (i11 == 61) {
            if (keyEvent.hasNoModifiers()) {
                return Boolean.valueOf(Y(1));
            }
            return keyEvent.isShiftPressed() ? Boolean.valueOf(Y(-1)) : Boolean.FALSE;
        }
        if (i11 != 66) {
            if (i11 != 81) {
                if (i11 == 69) {
                    Y(-1);
                    return Boolean.TRUE;
                }
                if (i11 != 70) {
                    switch (i11) {
                        case 21:
                            Z(-1);
                            return Boolean.TRUE;
                        case 22:
                            Z(1);
                            return Boolean.TRUE;
                        case 23:
                            break;
                        default:
                            return null;
                    }
                }
            }
            Y(1);
            return Boolean.TRUE;
        }
        this.T = this.U;
        postInvalidate();
        return Boolean.TRUE;
    }

    private void c0() {
        Iterator it = this.f29705n.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    private void d0() {
        Iterator it = this.f29705n.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    private void f0(cb.a aVar, float f11) {
        int iA0 = (this.D + ((int) (a0(f11) * this.f29686d0))) - (aVar.getIntrinsicWidth() / 2);
        int iM = m() - (this.M + (this.F / 2));
        aVar.setBounds(iA0, iM - aVar.getIntrinsicHeight(), aVar.getIntrinsicWidth() + iA0, iM);
        Rect rect = new Rect(aVar.getBounds());
        com.google.android.material.internal.d.c(f0.j(this), this, rect);
        aVar.setBounds(rect);
    }

    private void g0(Context context, AttributeSet attributeSet, int i11) {
        TypedArray typedArrayI = b0.i(context, attributeSet, R$styleable.Slider, i11, f29675w0, new int[0]);
        this.f29699k = typedArrayI.getResourceId(R$styleable.Slider_labelStyle, R$style.Widget_MaterialComponents_Tooltip);
        this.Q = typedArrayI.getFloat(R$styleable.Slider_android_valueFrom, 0.0f);
        this.R = typedArrayI.getFloat(R$styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.Q));
        this.V = typedArrayI.getFloat(R$styleable.Slider_android_stepSize, 0.0f);
        this.f29724y = (int) Math.ceil(typedArrayI.getDimension(R$styleable.Slider_minTouchTargetSize, (float) Math.ceil(f0.g(getContext(), 48))));
        boolean zHasValue = typedArrayI.hasValue(R$styleable.Slider_trackColor);
        int i12 = zHasValue ? R$styleable.Slider_trackColor : R$styleable.Slider_trackColorInactive;
        int i13 = zHasValue ? R$styleable.Slider_trackColor : R$styleable.Slider_trackColorActive;
        ColorStateList colorStateListA = xa.c.a(context, typedArrayI, i12);
        if (colorStateListA == null) {
            colorStateListA = g.a.a(context, R$color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateListA);
        ColorStateList colorStateListA2 = xa.c.a(context, typedArrayI, i13);
        if (colorStateListA2 == null) {
            colorStateListA2 = g.a.a(context, R$color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateListA2);
        this.f29710p0.d0(xa.c.a(context, typedArrayI, R$styleable.Slider_thumbColor));
        if (typedArrayI.hasValue(R$styleable.Slider_thumbStrokeColor)) {
            setThumbStrokeColor(xa.c.a(context, typedArrayI, R$styleable.Slider_thumbStrokeColor));
        }
        setThumbStrokeWidth(typedArrayI.getDimension(R$styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateListA3 = xa.c.a(context, typedArrayI, R$styleable.Slider_haloColor);
        if (colorStateListA3 == null) {
            colorStateListA3 = g.a.a(context, R$color.material_slider_halo_color);
        }
        setHaloTintList(colorStateListA3);
        this.f29680a0 = typedArrayI.getBoolean(R$styleable.Slider_tickVisible, true);
        boolean zHasValue2 = typedArrayI.hasValue(R$styleable.Slider_tickColor);
        int i14 = zHasValue2 ? R$styleable.Slider_tickColor : R$styleable.Slider_tickColorInactive;
        int i15 = zHasValue2 ? R$styleable.Slider_tickColor : R$styleable.Slider_tickColorActive;
        ColorStateList colorStateListA4 = xa.c.a(context, typedArrayI, i14);
        if (colorStateListA4 == null) {
            colorStateListA4 = g.a.a(context, R$color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateListA4);
        ColorStateList colorStateListA5 = xa.c.a(context, typedArrayI, i15);
        if (colorStateListA5 == null) {
            colorStateListA5 = g.a.a(context, R$color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateListA5);
        setThumbTrackGapSize(typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbTrackGapSize, 0));
        setTrackStopIndicatorSize(typedArrayI.getDimensionPixelSize(R$styleable.Slider_trackStopIndicatorSize, 0));
        setTrackInsideCornerSize(typedArrayI.getDimensionPixelSize(R$styleable.Slider_trackInsideCornerSize, 0));
        int dimensionPixelSize = typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbRadius, 0) * 2;
        int dimensionPixelSize2 = typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbWidth, dimensionPixelSize);
        int dimensionPixelSize3 = typedArrayI.getDimensionPixelSize(R$styleable.Slider_thumbHeight, dimensionPixelSize);
        setThumbWidth(dimensionPixelSize2);
        setThumbHeight(dimensionPixelSize3);
        setHaloRadius(typedArrayI.getDimensionPixelSize(R$styleable.Slider_haloRadius, 0));
        setThumbElevation(typedArrayI.getDimension(R$styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(typedArrayI.getDimensionPixelSize(R$styleable.Slider_trackHeight, 0));
        setTickActiveRadius(typedArrayI.getDimensionPixelSize(R$styleable.Slider_tickRadiusActive, this.K / 2));
        setTickInactiveRadius(typedArrayI.getDimensionPixelSize(R$styleable.Slider_tickRadiusInactive, this.K / 2));
        setLabelBehavior(typedArrayI.getInt(R$styleable.Slider_labelBehavior, 0));
        if (!typedArrayI.getBoolean(R$styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        typedArrayI.recycle();
    }

    private void h(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 && intrinsicHeight == -1) {
            drawable.setBounds(0, 0, this.E, this.F);
        } else {
            float fMax = Math.max(this.E, this.F) / Math.max(intrinsicWidth, intrinsicHeight);
            drawable.setBounds(0, 0, (int) (intrinsicWidth * fMax), (int) (intrinsicHeight * fMax));
        }
    }

    private void h0(int i11) {
        AccessibilityEventSender accessibilityEventSender = this.f29697j;
        if (accessibilityEventSender == null) {
            this.f29697j = new AccessibilityEventSender(this, null);
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        this.f29697j.setVirtualViewId(i11);
        postDelayed(this.f29697j, 200L);
    }

    private void i(cb.a aVar) {
        aVar.C0(f0.j(this));
    }

    private void i0(cb.a aVar, float f11) {
        aVar.E0(A(f11));
        f0(aVar, f11);
        f0.k(this).a(aVar);
    }

    private Float j(int i11) {
        float fL = this.f29690f0 ? l(20) : k();
        if (i11 == 21) {
            if (!P()) {
                fL = -fL;
            }
            return Float.valueOf(fL);
        }
        if (i11 == 22) {
            if (P()) {
                fL = -fL;
            }
            return Float.valueOf(fL);
        }
        if (i11 == 69) {
            return Float.valueOf(-fL);
        }
        if (i11 == 70 || i11 == 81) {
            return Float.valueOf(fL);
        }
        return null;
    }

    private void j0(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("At least one value must be set");
        }
        Collections.sort(arrayList);
        if (this.S.size() == arrayList.size() && this.S.equals(arrayList)) {
            return;
        }
        this.S = arrayList;
        this.f29692g0 = true;
        this.U = 0;
        r0();
        o();
        s();
        postInvalidate();
    }

    private float k() {
        float f11 = this.V;
        if (f11 == 0.0f) {
            return 1.0f;
        }
        return f11;
    }

    private boolean k0() {
        return this.B == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float l(int i11) {
        float fK = k();
        float f11 = (this.R - this.Q) / fK;
        float f12 = i11;
        return f11 <= f12 ? fK : Math.round(f11 / f12) * fK;
    }

    private boolean l0() {
        return this.f29688e0 || !(getBackground() instanceof RippleDrawable);
    }

    private int m() {
        return (this.A / 2) + ((this.B == 1 || k0()) ? ((cb.a) this.f29701l.get(0)).getIntrinsicHeight() : 0);
    }

    private boolean m0(float f11) {
        return o0(this.T, f11);
    }

    private ValueAnimator n(boolean z10) {
        int iF;
        TimeInterpolator timeInterpolatorG;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(C(z10 ? this.f29711q : this.f29709p, z10 ? 0.0f : 1.0f), z10 ? 1.0f : 0.0f);
        if (z10) {
            iF = j.f(getContext(), f29676x0, 83);
            timeInterpolatorG = j.g(getContext(), f29678z0, oa.a.f70922e);
        } else {
            iF = j.f(getContext(), f29677y0, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
            timeInterpolatorG = j.g(getContext(), A0, oa.a.f70920c);
        }
        valueAnimatorOfFloat.setDuration(iF);
        valueAnimatorOfFloat.setInterpolator(timeInterpolatorG);
        valueAnimatorOfFloat.addUpdateListener(new a());
        return valueAnimatorOfFloat;
    }

    private double n0(float f11) {
        float f12 = this.V;
        if (f12 <= 0.0f) {
            return f11;
        }
        int i11 = (int) ((this.R - this.Q) / f12);
        return ((double) Math.round(f11 * i11)) / ((double) i11);
    }

    private void o() {
        if (this.f29701l.size() > this.S.size()) {
            List<cb.a> listSubList = this.f29701l.subList(this.S.size(), this.f29701l.size());
            for (cb.a aVar : listSubList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    p(aVar);
                }
            }
            listSubList.clear();
        }
        while (true) {
            if (this.f29701l.size() >= this.S.size()) {
                break;
            }
            cb.a aVarW0 = cb.a.w0(getContext(), null, 0, this.f29699k);
            this.f29701l.add(aVarW0);
            if (ViewCompat.isAttachedToWindow(this)) {
                i(aVarW0);
            }
        }
        int i11 = this.f29701l.size() != 1 ? 1 : 0;
        Iterator it = this.f29701l.iterator();
        while (it.hasNext()) {
            ((cb.a) it.next()).o0(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o0(int i11, float f11) {
        this.U = i11;
        if (Math.abs(f11 - ((Float) this.S.get(i11)).floatValue()) < 1.0E-4d) {
            return false;
        }
        this.S.set(i11, Float.valueOf(D(i11, f11)));
        r(i11);
        return true;
    }

    private void p(cb.a aVar) {
        d0 d0VarK = f0.k(this);
        if (d0VarK != null) {
            d0VarK.b(aVar);
            aVar.y0(f0.j(this));
        }
    }

    private boolean p0() {
        return m0(G());
    }

    private float q(float f11) {
        if (f11 == 0.0f) {
            return 0.0f;
        }
        float f12 = (f11 - this.D) / this.f29686d0;
        float f13 = this.Q;
        return (f12 * (f13 - this.R)) + f13;
    }

    private void r(int i11) {
        Iterator it = this.f29703m.iterator();
        while (it.hasNext()) {
            ((com.google.android.material.slider.a) it.next()).a(this, ((Float) this.S.get(i11)).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.f29695i;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        h0(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0() {
        if (l0() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int iA0 = (int) ((a0(((Float) this.S.get(this.U)).floatValue()) * this.f29686d0) + this.D);
            int iM = m();
            int i11 = this.G;
            a1.a.l(background, iA0 - i11, iM - i11, iA0 + i11, iM + i11);
        }
    }

    private void s() {
        for (com.google.android.material.slider.a aVar : this.f29703m) {
            Iterator it = this.S.iterator();
            while (it.hasNext()) {
                aVar.a(this, ((Float) it.next()).floatValue(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        int i11 = this.B;
        if (i11 == 0 || i11 == 1) {
            if (this.T == -1 || !isEnabled()) {
                y();
                return;
            } else {
                x();
                return;
            }
        }
        if (i11 == 2) {
            y();
            return;
        }
        if (i11 != 3) {
            throw new IllegalArgumentException("Unexpected labelBehavior: " + this.B);
        }
        if (isEnabled() && Q()) {
            x();
        } else {
            y();
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009f  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b5 A[SYNTHETIC] */
    private void t(Canvas canvas, int i11, int i12) {
        int i13;
        float[] fArrB = B();
        int i14 = this.D;
        float f11 = i11;
        float f12 = i14 + (fArrB[1] * f11);
        float fD0 = i14 + (fArrB[0] * f11);
        if (!I()) {
            this.f29681b.setStyle(Paint.Style.STROKE);
            this.f29681b.setStrokeCap(Paint.Cap.ROUND);
            float f13 = i12;
            canvas.drawLine(fD0, f13, f12, f13, this.f29681b);
            return;
        }
        FullCornerDirection fullCornerDirection = FullCornerDirection.NONE;
        if (this.S.size() == 1) {
            fullCornerDirection = P() ? FullCornerDirection.RIGHT : FullCornerDirection.LEFT;
        }
        for (int i15 = 0; i15 < this.S.size(); i15++) {
            if (this.S.size() > 1) {
                if (i15 > 0) {
                    fD0 = D0(((Float) this.S.get(i15 - 1)).floatValue());
                }
                float fD1 = D0(((Float) this.S.get(i15)).floatValue());
                if (P()) {
                    f12 = fD0;
                    fD0 = fD1;
                } else {
                    f12 = fD1;
                }
            }
            int i16 = c.f29733a[fullCornerDirection.ordinal()];
            if (i16 != 1) {
                if (i16 == 2) {
                    fD0 -= this.C / 2.0f;
                    i13 = this.H;
                } else if (i16 == 3) {
                    fD0 += this.H;
                    f12 += this.C / 2.0f;
                }
                if (fD0 >= f12) {
                    RectF rectF = this.f29706n0;
                    float f14 = i12;
                    int i17 = this.C;
                    rectF.set(fD0, f14 - (i17 / 2.0f), f12, f14 + (i17 / 2.0f));
                    t0(canvas, this.f29681b, this.f29706n0, fullCornerDirection);
                }
            } else {
                i13 = this.H;
                fD0 += i13;
            }
            f12 -= i13;
            if (fD0 >= f12) {
                RectF rectF2 = this.f29706n0;
                float f15 = i12;
                int i18 = this.C;
                rectF2.set(fD0, f15 - (i18 / 2.0f), f12, f15 + (i18 / 2.0f));
                t0(canvas, this.f29681b, this.f29706n0, fullCornerDirection);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0042  */
    /* JADX WARN: Code duplicated, block: B:14:0x0053  */
    /* JADX WARN: Code duplicated, block: B:16:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0074  */
    /* JADX WARN: Code duplicated, block: B:18:0x0088  */
    /* JADX WARN: Code duplicated, block: B:19:0x0097  */
    private void t0(Canvas canvas, Paint paint, RectF rectF, FullCornerDirection fullCornerDirection) {
        int i11;
        float fMax;
        int i12;
        int i13 = this.C;
        float f11 = i13 / 2.0f;
        float f12 = i13 / 2.0f;
        int[] iArr = c.f29733a;
        int i14 = iArr[fullCornerDirection.ordinal()];
        if (i14 != 1) {
            if (i14 == 2) {
                i11 = this.L;
            } else if (i14 == 3) {
                f11 = this.L;
            }
            paint.setStyle(Paint.Style.FILL);
            paint.setStrokeCap(Paint.Cap.BUTT);
            paint.setAntiAlias(true);
            this.f29704m0.reset();
            if (rectF.width() >= f11 + f12) {
                this.f29704m0.addRoundRect(rectF, F(f11, f12), Path.Direction.CW);
                canvas.drawPath(this.f29704m0, paint);
                return;
            }
            float fMin = Math.min(f11, f12);
            fMax = Math.max(f11, f12);
            canvas.save();
            this.f29704m0.addRoundRect(rectF, fMin, fMin, Path.Direction.CW);
            canvas.clipPath(this.f29704m0);
            i12 = iArr[fullCornerDirection.ordinal()];
            if (i12 != 2) {
                RectF rectF2 = this.f29708o0;
                float f13 = rectF.left;
                rectF2.set(f13, rectF.top, (2.0f * fMax) + f13, rectF.bottom);
            } else if (i12 != 3) {
                this.f29708o0.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
            } else {
                RectF rectF3 = this.f29708o0;
                float f14 = rectF.right;
                rectF3.set(f14 - (2.0f * fMax), rectF.top, f14, rectF.bottom);
            }
            canvas.drawRoundRect(this.f29708o0, fMax, fMax, paint);
            canvas.restore();
        }
        i11 = this.L;
        f11 = i11;
        f12 = i11;
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        this.f29704m0.reset();
        if (rectF.width() >= f11 + f12) {
            this.f29704m0.addRoundRect(rectF, F(f11, f12), Path.Direction.CW);
            canvas.drawPath(this.f29704m0, paint);
            return;
        }
        float fMin2 = Math.min(f11, f12);
        fMax = Math.max(f11, f12);
        canvas.save();
        this.f29704m0.addRoundRect(rectF, fMin2, fMin2, Path.Direction.CW);
        canvas.clipPath(this.f29704m0);
        i12 = iArr[fullCornerDirection.ordinal()];
        if (i12 != 2) {
            RectF rectF4 = this.f29708o0;
            float f15 = rectF.left;
            rectF4.set(f15, rectF.top, (2.0f * fMax) + f15, rectF.bottom);
        } else if (i12 != 3) {
            this.f29708o0.set(rectF.centerX() - fMax, rectF.top, rectF.centerX() + fMax, rectF.bottom);
        } else {
            RectF rectF5 = this.f29708o0;
            float f16 = rectF.right;
            rectF5.set(f16 - (2.0f * fMax), rectF.top, f16, rectF.bottom);
        }
        canvas.drawRoundRect(this.f29708o0, fMax, fMax, paint);
        canvas.restore();
    }

    private void u(Canvas canvas, int i11, int i12) {
        float[] fArrB = B();
        int i13 = this.D;
        float f11 = i11;
        float f12 = i13 + (fArrB[1] * f11);
        if (f12 < i13 + i11) {
            if (I()) {
                RectF rectF = this.f29706n0;
                float f13 = f12 + this.H;
                float f14 = i12;
                int i14 = this.C;
                rectF.set(f13, f14 - (i14 / 2.0f), this.D + i11 + (i14 / 2.0f), f14 + (i14 / 2.0f));
                t0(canvas, this.f29679a, this.f29706n0, FullCornerDirection.RIGHT);
            } else {
                this.f29679a.setStyle(Paint.Style.STROKE);
                this.f29679a.setStrokeCap(Paint.Cap.ROUND);
                float f15 = i12;
                canvas.drawLine(f12, f15, this.D + i11, f15, this.f29679a);
            }
        }
        int i15 = this.D;
        float f16 = i15 + (fArrB[0] * f11);
        if (f16 > i15) {
            if (!I()) {
                this.f29679a.setStyle(Paint.Style.STROKE);
                this.f29679a.setStrokeCap(Paint.Cap.ROUND);
                float f17 = i12;
                canvas.drawLine(this.D, f17, f16, f17, this.f29679a);
                return;
            }
            RectF rectF2 = this.f29706n0;
            float f18 = this.D;
            int i16 = this.C;
            float f19 = i12;
            rectF2.set(f18 - (i16 / 2.0f), f19 - (i16 / 2.0f), f16 - this.H, f19 + (i16 / 2.0f));
            t0(canvas, this.f29679a, this.f29706n0, FullCornerDirection.LEFT);
        }
    }

    private void u0(int i11) {
        this.f29686d0 = Math.max(i11 - (this.D * 2), 0);
        S();
    }

    private void v(Canvas canvas, int i11, int i12, float f11, Drawable drawable) {
        canvas.save();
        canvas.translate((this.D + ((int) (a0(f11) * i11))) - (drawable.getBounds().width() / 2.0f), i12 - (drawable.getBounds().height() / 2.0f));
        drawable.draw(canvas);
        canvas.restore();
    }

    private void v0() {
        boolean zX = X();
        boolean zW = W();
        if (zX) {
            requestLayout();
        } else if (zW) {
            postInvalidate();
        }
    }

    private void w(Canvas canvas, int i11, int i12) {
        for (int i13 = 0; i13 < this.S.size(); i13++) {
            float fFloatValue = ((Float) this.S.get(i13)).floatValue();
            Drawable drawable = this.f29712q0;
            if (drawable != null) {
                v(canvas, i11, i12, fFloatValue, drawable);
            } else if (i13 < this.f29714r0.size()) {
                v(canvas, i11, i12, fFloatValue, (Drawable) this.f29714r0.get(i13));
            } else {
                if (!isEnabled()) {
                    canvas.drawCircle(this.D + (a0(fFloatValue) * i11), i12, getThumbRadius(), this.f29683c);
                }
                v(canvas, i11, i12, fFloatValue, this.f29710p0);
            }
        }
    }

    private void w0() {
        if (this.f29692g0) {
            z0();
            A0();
            y0();
            B0();
            x0();
            E0();
            this.f29692g0 = false;
        }
    }

    private void x() {
        if (!this.f29707o) {
            this.f29707o = true;
            ValueAnimator valueAnimatorN = n(true);
            this.f29709p = valueAnimatorN;
            this.f29711q = null;
            valueAnimatorN.start();
        }
        Iterator it = this.f29701l.iterator();
        for (int i11 = 0; i11 < this.S.size() && it.hasNext(); i11++) {
            if (i11 != this.U) {
                i0((cb.a) it.next(), ((Float) this.S.get(i11)).floatValue());
            }
        }
        if (!it.hasNext()) {
            throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.f29701l.size()), Integer.valueOf(this.S.size())));
        }
        i0((cb.a) it.next(), ((Float) this.S.get(this.U)).floatValue());
    }

    private void x0() {
        float minSeparation = getMinSeparation();
        if (minSeparation < 0.0f) {
            throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal to 0", Float.valueOf(minSeparation)));
        }
        float f11 = this.V;
        if (f11 <= 0.0f || minSeparation <= 0.0f) {
            return;
        }
        if (this.f29718t0 != 1) {
            throw new IllegalStateException(String.format("minSeparation(%s) cannot be set as a dimension when using stepSize(%s)", Float.valueOf(minSeparation), Float.valueOf(this.V)));
        }
        if (minSeparation < f11 || !N(minSeparation)) {
            throw new IllegalStateException(String.format("minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)", Float.valueOf(minSeparation), Float.valueOf(this.V), Float.valueOf(this.V)));
        }
    }

    private void y() {
        if (this.f29707o) {
            this.f29707o = false;
            ValueAnimator valueAnimatorN = n(false);
            this.f29711q = valueAnimatorN;
            this.f29709p = null;
            valueAnimatorN.addListener(new b());
            this.f29711q.start();
        }
    }

    private void y0() {
        if (this.V > 0.0f && !C0(this.R)) {
            throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.valueOf(this.V), Float.valueOf(this.Q), Float.valueOf(this.R)));
        }
    }

    private void z(int i11) {
        if (i11 == 1) {
            Y(Integer.MAX_VALUE);
            return;
        }
        if (i11 == 2) {
            Y(Integer.MIN_VALUE);
        } else if (i11 == 17) {
            Z(Integer.MAX_VALUE);
        } else {
            if (i11 != 66) {
                return;
            }
            Z(Integer.MIN_VALUE);
        }
    }

    private void z0() {
        if (this.Q >= this.R) {
            throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", Float.valueOf(this.Q), Float.valueOf(this.R)));
        }
    }

    final boolean P() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public void addOnChangeListener(com.google.android.material.slider.a aVar) {
        this.f29703m.add(aVar);
    }

    public void addOnSliderTouchListener(com.google.android.material.slider.b bVar) {
        this.f29705n.add(bVar);
    }

    public void clearOnChangeListeners() {
        this.f29703m.clear();
    }

    public void clearOnSliderTouchListeners() {
        this.f29705n.clear();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.f29693h.i(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f29679a.setColor(E(this.f29702l0));
        this.f29681b.setColor(E(this.f29700k0));
        this.f29687e.setColor(E(this.f29698j0));
        this.f29689f.setColor(E(this.f29696i0));
        this.f29691g.setColor(E(this.f29700k0));
        for (cb.a aVar : this.f29701l) {
            if (aVar.isStateful()) {
                aVar.setState(getDrawableState());
            }
        }
        if (this.f29710p0.isStateful()) {
            this.f29710p0.setState(getDrawableState());
        }
        this.f29685d.setColor(E(this.f29694h0));
        this.f29685d.setAlpha(63);
    }

    protected boolean e0() {
        if (this.T != -1) {
            return true;
        }
        float fH = H();
        float fD0 = D0(fH);
        this.T = 0;
        float fAbs = Math.abs(((Float) this.S.get(0)).floatValue() - fH);
        for (int i11 = 1; i11 < this.S.size(); i11++) {
            float fAbs2 = Math.abs(((Float) this.S.get(i11)).floatValue() - fH);
            float fD1 = D0(((Float) this.S.get(i11)).floatValue());
            if (Float.compare(fAbs2, fAbs) > 0) {
                break;
            }
            boolean z10 = !P() ? fD1 - fD0 >= 0.0f : fD1 - fD0 <= 0.0f;
            if (Float.compare(fAbs2, fAbs) < 0) {
                this.T = i11;
            } else {
                if (Float.compare(fAbs2, fAbs) != 0) {
                    continue;
                } else {
                    if (Math.abs(fD1 - fD0) < this.f29713r) {
                        this.T = -1;
                        return false;
                    }
                    if (z10) {
                        this.T = i11;
                    }
                }
            }
            fAbs = fAbs2;
        }
        return this.T != -1;
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    final int getAccessibilityFocusedVirtualViewId() {
        return this.f29693h.k();
    }

    public int getActiveThumbIndex() {
        return this.T;
    }

    public int getFocusedThumbIndex() {
        return this.U;
    }

    public int getHaloRadius() {
        return this.G;
    }

    public ColorStateList getHaloTintList() {
        return this.f29694h0;
    }

    public int getLabelBehavior() {
        return this.B;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.V;
    }

    public float getThumbElevation() {
        return this.f29710p0.y();
    }

    public int getThumbHeight() {
        return this.F;
    }

    public int getThumbRadius() {
        return this.E / 2;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.f29710p0.H();
    }

    public float getThumbStrokeWidth() {
        return this.f29710p0.J();
    }

    public ColorStateList getThumbTintList() {
        return this.f29710p0.z();
    }

    public int getThumbTrackGapSize() {
        return this.H;
    }

    public int getThumbWidth() {
        return this.E;
    }

    public int getTickActiveRadius() {
        return this.f29682b0;
    }

    public ColorStateList getTickActiveTintList() {
        return this.f29696i0;
    }

    public int getTickInactiveRadius() {
        return this.f29684c0;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.f29698j0;
    }

    public ColorStateList getTickTintList() {
        if (this.f29698j0.equals(this.f29696i0)) {
            return this.f29696i0;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    public ColorStateList getTrackActiveTintList() {
        return this.f29700k0;
    }

    public int getTrackHeight() {
        return this.C;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.f29702l0;
    }

    public int getTrackInsideCornerSize() {
        return this.L;
    }

    public int getTrackSidePadding() {
        return this.D;
    }

    public int getTrackStopIndicatorSize() {
        return this.K;
    }

    public ColorStateList getTrackTintList() {
        if (this.f29702l0.equals(this.f29700k0)) {
            return this.f29700k0;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    public int getTrackWidth() {
        return this.f29686d0;
    }

    public float getValueFrom() {
        return this.Q;
    }

    public float getValueTo() {
        return this.R;
    }

    @NonNull
    List<Float> getValues() {
        return new ArrayList(this.S);
    }

    public boolean hasLabelFormatter() {
        return false;
    }

    public boolean isTickVisible() {
        return this.f29680a0;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f29720u0);
        Iterator it = this.f29701l.iterator();
        while (it.hasNext()) {
            i((cb.a) it.next());
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        AccessibilityEventSender accessibilityEventSender = this.f29697j;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        this.f29707o = false;
        Iterator it = this.f29701l.iterator();
        while (it.hasNext()) {
            p((cb.a) it.next());
        }
        getViewTreeObserver().removeOnScrollChangedListener(this.f29720u0);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f29692g0) {
            w0();
            S();
        }
        super.onDraw(canvas);
        int iM = m();
        float fFloatValue = ((Float) this.S.get(0)).floatValue();
        ArrayList arrayList = this.S;
        float fFloatValue2 = ((Float) arrayList.get(arrayList.size() - 1)).floatValue();
        if (fFloatValue2 < this.R || (this.S.size() > 1 && fFloatValue > this.Q)) {
            u(canvas, this.f29686d0, iM);
        }
        if (fFloatValue2 > this.Q) {
            t(canvas, this.f29686d0, iM);
        }
        V(canvas);
        U(canvas, iM);
        if ((this.P || isFocused()) && isEnabled()) {
            T(canvas, this.f29686d0, iM);
        }
        s0();
        w(canvas, this.f29686d0, iM);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i11, Rect rect) {
        super.onFocusChanged(z10, i11, rect);
        if (z10) {
            z(i11);
            this.f29693h.I(this.U);
        } else {
            this.T = -1;
            this.f29693h.b(this.U);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i11, KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i11, keyEvent);
        }
        if (this.S.size() == 1) {
            this.T = 0;
        }
        if (this.T == -1) {
            Boolean boolB0 = b0(i11, keyEvent);
            return boolB0 != null ? boolB0.booleanValue() : super.onKeyDown(i11, keyEvent);
        }
        this.f29690f0 |= keyEvent.isLongPress();
        Float fJ = j(i11);
        if (fJ != null) {
            if (m0(((Float) this.S.get(this.T)).floatValue() + fJ.floatValue())) {
                r0();
                postInvalidate();
            }
            return true;
        }
        if (i11 != 23) {
            if (i11 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return Y(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return Y(-1);
                }
                return false;
            }
            if (i11 != 66) {
                return super.onKeyDown(i11, keyEvent);
            }
        }
        this.T = -1;
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i11, KeyEvent keyEvent) {
        this.f29690f0 = false;
        return super.onKeyUp(i11, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, View.MeasureSpec.makeMeasureSpec(this.A + ((this.B == 1 || k0()) ? ((cb.a) this.f29701l.get(0)).getIntrinsicHeight() : 0), 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.Q = sliderState.f29726a;
        this.R = sliderState.f29727b;
        j0(sliderState.f29728c);
        this.V = sliderState.f29729d;
        if (sliderState.f29730e) {
            requestFocus();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.f29726a = this.Q;
        sliderState.f29727b = this.R;
        sliderState.f29728c = new ArrayList(this.S);
        sliderState.f29729d = this.V;
        sliderState.f29730e = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        u0(i11);
        r0();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006f  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        int i11;
        if (!isEnabled()) {
            return false;
        }
        float x10 = motionEvent.getX();
        float f11 = (x10 - this.D) / this.f29686d0;
        this.f29716s0 = f11;
        float fMax = Math.max(0.0f, f11);
        this.f29716s0 = fMax;
        this.f29716s0 = Math.min(1.0f, fMax);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.N = x10;
            if (!O(motionEvent)) {
                getParent().requestDisallowInterceptTouchEvent(true);
                if (e0()) {
                    requestFocus();
                    this.P = true;
                    p0();
                    r0();
                    if (I()) {
                        int i12 = this.E;
                        this.I = i12;
                        this.J = this.H;
                        int iRound = Math.round(i12 * 0.5f);
                        int i13 = this.E - iRound;
                        setThumbWidth(iRound);
                        setThumbTrackGapSize(this.H - (i13 / 2));
                    }
                    invalidate();
                    c0();
                }
            }
        } else if (actionMasked == 1) {
            this.P = false;
            motionEvent2 = this.O;
            if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.O.getX() - motionEvent.getX()) <= this.f29713r && Math.abs(this.O.getY() - motionEvent.getY()) <= this.f29713r && e0()) {
                c0();
            }
            if (this.T != -1) {
                p0();
                r0();
                if (I() && (i11 = this.I) != -1 && this.J != -1) {
                    setThumbWidth(i11);
                    setThumbTrackGapSize(this.J);
                }
                this.T = -1;
                d0();
            }
            invalidate();
        } else if (actionMasked == 2) {
            if (!this.P) {
                if (O(motionEvent) && Math.abs(x10 - this.N) < this.f29713r) {
                    return false;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                c0();
            }
            if (e0()) {
                this.P = true;
                p0();
                r0();
                invalidate();
            }
        } else if (actionMasked == 3) {
            this.P = false;
            motionEvent2 = this.O;
            if (motionEvent2 != null) {
                c0();
            }
            if (this.T != -1) {
                p0();
                r0();
                if (I()) {
                    setThumbWidth(i11);
                    setThumbTrackGapSize(this.J);
                }
                this.T = -1;
                d0();
            }
            invalidate();
        }
        setPressed(this.P);
        this.O = MotionEvent.obtain(motionEvent);
        return true;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        d0 d0VarK;
        super.onVisibilityChanged(view, i11);
        if (i11 == 0 || (d0VarK = f0.k(this)) == null) {
            return;
        }
        Iterator it = this.f29701l.iterator();
        while (it.hasNext()) {
            d0VarK.b((cb.a) it.next());
        }
    }

    void q0(int i11, Rect rect) {
        int iA0 = this.D + ((int) (a0(getValues().get(i11).floatValue()) * this.f29686d0));
        int iM = m();
        int iMax = Math.max(this.E / 2, this.f29724y / 2);
        int iMax2 = Math.max(this.F / 2, this.f29724y / 2);
        rect.set(iA0 - iMax, iM - iMax2, iA0 + iMax, iM + iMax2);
    }

    public void removeOnChangeListener(com.google.android.material.slider.a aVar) {
        this.f29703m.remove(aVar);
    }

    public void removeOnSliderTouchListener(com.google.android.material.slider.b bVar) {
        this.f29705n.remove(bVar);
    }

    protected void setActiveThumbIndex(int i11) {
        this.T = i11;
    }

    void setCustomThumbDrawable(int i11) {
        setCustomThumbDrawable(getResources().getDrawable(i11));
    }

    void setCustomThumbDrawable(Drawable drawable) {
        this.f29712q0 = J(drawable);
        this.f29714r0.clear();
        postInvalidate();
    }

    void setCustomThumbDrawablesForValues(@NonNull int... iArr) {
        Drawable[] drawableArr = new Drawable[iArr.length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            drawableArr[i11] = getResources().getDrawable(iArr[i11]);
        }
        setCustomThumbDrawablesForValues(drawableArr);
    }

    void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        this.f29712q0 = null;
        this.f29714r0 = new ArrayList();
        for (Drawable drawable : drawableArr) {
            this.f29714r0.add(J(drawable));
        }
        postInvalidate();
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setLayerType(z10 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i11) {
        if (i11 < 0 || i11 >= this.S.size()) {
            throw new IllegalArgumentException("index out of range");
        }
        this.U = i11;
        this.f29693h.I(i11);
        postInvalidate();
    }

    public void setHaloRadius(int i11) {
        if (i11 == this.G) {
            return;
        }
        this.G = i11;
        Drawable background = getBackground();
        if (l0() || !(background instanceof RippleDrawable)) {
            postInvalidate();
        } else {
            com.google.android.material.drawable.d.m((RippleDrawable) background, this.G);
        }
    }

    public void setHaloRadiusResource(int i11) {
        setHaloRadius(getResources().getDimensionPixelSize(i11));
    }

    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f29694h0)) {
            return;
        }
        this.f29694h0 = colorStateList;
        Drawable background = getBackground();
        if (!l0() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.f29685d.setColor(E(colorStateList));
        this.f29685d.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i11) {
        if (this.B != i11) {
            this.B = i11;
            requestLayout();
        }
    }

    public void setLabelFormatter(com.google.android.material.slider.d dVar) {
    }

    protected void setSeparationUnit(int i11) {
        this.f29718t0 = i11;
        this.f29692g0 = true;
        postInvalidate();
    }

    public void setStepSize(float f11) {
        if (f11 < 0.0f) {
            throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", Float.valueOf(f11), Float.valueOf(this.Q), Float.valueOf(this.R)));
        }
        if (this.V != f11) {
            this.V = f11;
            this.f29692g0 = true;
            postInvalidate();
        }
    }

    public void setThumbElevation(float f11) {
        this.f29710p0.c0(f11);
    }

    public void setThumbElevationResource(int i11) {
        setThumbElevation(getResources().getDimension(i11));
    }

    public void setThumbHeight(int i11) {
        if (i11 == this.F) {
            return;
        }
        this.F = i11;
        this.f29710p0.setBounds(0, 0, this.E, i11);
        Drawable drawable = this.f29712q0;
        if (drawable != null) {
            h(drawable);
        }
        Iterator it = this.f29714r0.iterator();
        while (it.hasNext()) {
            h((Drawable) it.next());
        }
        v0();
    }

    public void setThumbHeightResource(int i11) {
        setThumbHeight(getResources().getDimensionPixelSize(i11));
    }

    public void setThumbRadius(int i11) {
        int i12 = i11 * 2;
        setThumbWidth(i12);
        setThumbHeight(i12);
    }

    public void setThumbRadiusResource(int i11) {
        setThumbRadius(getResources().getDimensionPixelSize(i11));
    }

    public void setThumbStrokeColor(ColorStateList colorStateList) {
        this.f29710p0.n0(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(int i11) {
        if (i11 != 0) {
            setThumbStrokeColor(g.a.a(getContext(), i11));
        }
    }

    public void setThumbStrokeWidth(float f11) {
        this.f29710p0.o0(f11);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(int i11) {
        if (i11 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i11));
        }
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f29710p0.z())) {
            return;
        }
        this.f29710p0.d0(colorStateList);
        invalidate();
    }

    public void setThumbTrackGapSize(int i11) {
        if (this.H == i11) {
            return;
        }
        this.H = i11;
        invalidate();
    }

    public void setThumbWidth(int i11) {
        if (i11 == this.E) {
            return;
        }
        this.E = i11;
        this.f29710p0.setShapeAppearanceModel(n.a().q(0, this.E / 2.0f).m());
        this.f29710p0.setBounds(0, 0, this.E, this.F);
        Drawable drawable = this.f29712q0;
        if (drawable != null) {
            h(drawable);
        }
        Iterator it = this.f29714r0.iterator();
        while (it.hasNext()) {
            h((Drawable) it.next());
        }
        v0();
    }

    public void setThumbWidthResource(int i11) {
        setThumbWidth(getResources().getDimensionPixelSize(i11));
    }

    public void setTickActiveRadius(int i11) {
        if (this.f29682b0 != i11) {
            this.f29682b0 = i11;
            this.f29689f.setStrokeWidth(i11 * 2);
            v0();
        }
    }

    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f29696i0)) {
            return;
        }
        this.f29696i0 = colorStateList;
        this.f29689f.setColor(E(colorStateList));
        invalidate();
    }

    public void setTickInactiveRadius(int i11) {
        if (this.f29684c0 != i11) {
            this.f29684c0 = i11;
            this.f29687e.setStrokeWidth(i11 * 2);
            v0();
        }
    }

    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f29698j0)) {
            return;
        }
        this.f29698j0 = colorStateList;
        this.f29687e.setColor(E(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z10) {
        if (this.f29680a0 != z10) {
            this.f29680a0 = z10;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f29700k0)) {
            return;
        }
        this.f29700k0 = colorStateList;
        this.f29681b.setColor(E(colorStateList));
        this.f29691g.setColor(E(this.f29700k0));
        invalidate();
    }

    public void setTrackHeight(int i11) {
        if (this.C != i11) {
            this.C = i11;
            K();
            v0();
        }
    }

    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.f29702l0)) {
            return;
        }
        this.f29702l0 = colorStateList;
        this.f29679a.setColor(E(colorStateList));
        invalidate();
    }

    public void setTrackInsideCornerSize(int i11) {
        if (this.L == i11) {
            return;
        }
        this.L = i11;
        invalidate();
    }

    public void setTrackStopIndicatorSize(int i11) {
        if (this.K == i11) {
            return;
        }
        this.K = i11;
        this.f29691g.setStrokeWidth(i11);
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f11) {
        this.Q = f11;
        this.f29692g0 = true;
        postInvalidate();
    }

    public void setValueTo(float f11) {
        this.R = f11;
        this.f29692g0 = true;
        postInvalidate();
    }

    void setValues(@NonNull List<Float> list) {
        j0(new ArrayList(list));
    }

    void setValues(@NonNull Float... fArr) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, fArr);
        j0(arrayList);
    }
}
