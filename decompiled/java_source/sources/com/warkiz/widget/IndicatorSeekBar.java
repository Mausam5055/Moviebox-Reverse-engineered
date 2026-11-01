package com.warkiz.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes7.dex */
public class IndicatorSeekBar extends View {
    private float[] A;
    private int A0;
    private boolean B;
    private Drawable B0;
    private boolean C;
    private Bitmap C0;
    private boolean D;
    private int D0;
    private int E;
    private boolean E0;
    private String[] F;
    private float F0;
    private float[] G;
    private int G0;
    private float[] H;
    private boolean H0;
    private float I;
    private boolean I0;
    private int J;
    private Typeface K;
    private int L;
    private int M;
    private int N;
    private CharSequence[] O;
    private d P;
    private int Q;
    private int R;
    private boolean S;
    private int T;
    private View U;
    private View V;
    private int W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f60700a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private String f60701a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f60702b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private float[] f60703b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextPaint f60704c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private int f60705c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f60706d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private int f60707d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Rect f60708e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private int f60709e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f60710f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private float f60711f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f60712g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private Bitmap f60713g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f60714h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private Bitmap f60715h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f60716i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private Drawable f60717i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f60718j;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private int f60719j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f f60720k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private boolean f60721k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f60722l;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private boolean f60723l0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f60724m;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private int f60725m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f60726n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private boolean f60727n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f60728o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private RectF f60729o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f60730p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private RectF f60731p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f60732q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private int f60733q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f60734r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private int f60735r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f60736s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f60737s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f60738t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f60739t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f60740u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private int[] f60741u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f60742v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private boolean f60743v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f60744w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private float f60745w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f60746x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private float f60747x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f60748y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private Bitmap f60749y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f60750z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private int f60751z0;

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f60752a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f60753b;

        a(float f11, int i11) {
            this.f60752a = f11;
            this.f60753b = i11;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            IndicatorSeekBar indicatorSeekBar = IndicatorSeekBar.this;
            indicatorSeekBar.f60712g = indicatorSeekBar.f60740u;
            if (this.f60752a - IndicatorSeekBar.this.A[this.f60753b] > 0.0f) {
                IndicatorSeekBar.this.f60740u = this.f60752a - ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else {
                IndicatorSeekBar.this.f60740u = this.f60752a + ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
            IndicatorSeekBar indicatorSeekBar2 = IndicatorSeekBar.this;
            indicatorSeekBar2.X(indicatorSeekBar2.f60740u);
            IndicatorSeekBar.this.setSeekListener(false);
            if (IndicatorSeekBar.this.P != null && IndicatorSeekBar.this.S) {
                IndicatorSeekBar.this.P.j();
                IndicatorSeekBar.this.a0();
            }
            IndicatorSeekBar.this.invalidate();
        }
    }

    public IndicatorSeekBar(Context context) {
        this(context, null);
    }

    public IndicatorSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f60714h = -1.0f;
        this.f60716i = -1.0f;
        this.f60744w = 1;
        this.f60700a = context;
        A(context, attributeSet);
        D();
    }

    public IndicatorSeekBar(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f60714h = -1.0f;
        this.f60716i = -1.0f;
        this.f60744w = 1;
        this.f60700a = context;
        A(context, attributeSet);
        D();
    }

    private void A(Context context, AttributeSet attributeSet) {
        com.warkiz.widget.a aVar = new com.warkiz.widget.a(context);
        if (attributeSet == null) {
            l(aVar);
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.IndicatorSeekBar);
        this.f60736s = typedArrayObtainStyledAttributes.getFloat(R$styleable.IndicatorSeekBar_isb_max, aVar.f60756b);
        this.f60738t = typedArrayObtainStyledAttributes.getFloat(R$styleable.IndicatorSeekBar_isb_min, aVar.f60757c);
        this.f60740u = typedArrayObtainStyledAttributes.getFloat(R$styleable.IndicatorSeekBar_isb_progress, aVar.f60758d);
        this.f60742v = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_progress_value_float, aVar.f60759e);
        this.f60746x = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_user_seekable, aVar.f60762h);
        this.f60718j = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_clear_default_padding, aVar.f60764j);
        this.f60748y = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_only_thumb_draggable, aVar.f60763i);
        this.f60750z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_seek_smoothly, aVar.f60760f);
        this.B = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_r2l, aVar.f60761g);
        this.f60733q0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_track_background_size, aVar.f60771q);
        this.f60735r0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_track_progress_size, aVar.f60773s);
        this.f60737s0 = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_track_background_color, aVar.f60772r);
        this.f60739t0 = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_track_progress_color, aVar.f60774t);
        this.f60727n0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_track_rounded_corners, aVar.f60775u);
        this.A0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_thumb_size, aVar.f60778x);
        this.B0 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.IndicatorSeekBar_isb_thumb_drawable);
        this.I0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_thumb_adjust_auto, true);
        L(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.IndicatorSeekBar_isb_thumb_color), aVar.f60779y);
        this.E0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_show_thumb_text, aVar.f60777w);
        this.G0 = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_thumb_text_color, aVar.f60776v);
        this.f60705c0 = typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_ticks_count, aVar.H);
        this.f60719j0 = typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_show_tick_marks_type, aVar.I);
        this.f60725m0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_tick_marks_size, aVar.K);
        N(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.IndicatorSeekBar_isb_tick_marks_color), aVar.J);
        this.f60717i0 = typedArrayObtainStyledAttributes.getDrawable(R$styleable.IndicatorSeekBar_isb_tick_marks_drawable);
        this.f60723l0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_tick_marks_swept_hide, aVar.N);
        this.f60721k0 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_tick_marks_ends_hide, aVar.M);
        this.C = typedArrayObtainStyledAttributes.getBoolean(R$styleable.IndicatorSeekBar_isb_show_tick_texts, aVar.B);
        this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_tick_texts_size, aVar.D);
        O(typedArrayObtainStyledAttributes.getColorStateList(R$styleable.IndicatorSeekBar_isb_tick_texts_color), aVar.C);
        this.O = typedArrayObtainStyledAttributes.getTextArray(R$styleable.IndicatorSeekBar_isb_tick_texts_array);
        J(typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_tick_texts_typeface, -1), aVar.F);
        this.W = typedArrayObtainStyledAttributes.getInt(R$styleable.IndicatorSeekBar_isb_show_indicator, aVar.f60765k);
        this.Q = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_indicator_color, aVar.f60766l);
        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.IndicatorSeekBar_isb_indicator_text_size, aVar.f60768n);
        this.R = typedArrayObtainStyledAttributes.getColor(R$styleable.IndicatorSeekBar_isb_indicator_text_color, aVar.f60767m);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.IndicatorSeekBar_isb_indicator_content_layout, 0);
        if (resourceId > 0) {
            this.U = View.inflate(this.f60700a, resourceId, null);
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.IndicatorSeekBar_isb_indicator_top_content_layout, 0);
        if (resourceId2 > 0) {
            this.V = View.inflate(this.f60700a, resourceId2, null);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void B() {
        if (this.f60718j) {
            return;
        }
        int iA = g.a(this.f60700a, 16.0f);
        if (getPaddingLeft() == 0) {
            setPadding(iA, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        if (getPaddingRight() == 0) {
            setPadding(getPaddingLeft(), getPaddingTop(), iA, getPaddingBottom());
        }
    }

    private void C() {
        int i11 = this.W;
        if (i11 != 0 && this.P == null) {
            d dVar = new d(this.f60700a, this, this.Q, i11, this.T, this.R, this.U, this.V);
            this.P = dVar;
            this.U = dVar.d();
        }
    }

    private void D() {
        E();
        int i11 = this.f60733q0;
        int i12 = this.f60735r0;
        if (i11 > i12) {
            this.f60733q0 = i12;
        }
        if (this.B0 == null) {
            float f11 = this.A0 / 2.0f;
            this.f60745w0 = f11;
            this.f60747x0 = f11 * 1.2f;
        } else {
            float fMin = Math.min(g.a(this.f60700a, 30.0f), this.A0) / 2.0f;
            this.f60745w0 = fMin;
            this.f60747x0 = fMin;
        }
        if (this.f60717i0 == null) {
            this.f60711f0 = this.f60725m0 / 2.0f;
        } else {
            this.f60711f0 = Math.min(g.a(this.f60700a, 30.0f), this.f60725m0) / 2.0f;
        }
        this.f60710f = Math.max(this.f60747x0, this.f60711f0) * 2.0f;
        G();
        S();
        this.f60712g = this.f60740u;
        q();
        this.f60729o0 = new RectF();
        this.f60731p0 = new RectF();
        B();
        C();
    }

    private void E() {
        float f11 = this.f60736s;
        float f12 = this.f60738t;
        if (f11 < f12) {
            throw new IllegalArgumentException("the Argument: MAX's value must be larger than MIN's.");
        }
        if (this.f60740u < f12) {
            this.f60740u = f12;
        }
        if (this.f60740u > f11) {
            this.f60740u = f11;
        }
    }

    private void F() {
        this.f60726n = getMeasuredWidth();
        this.f60722l = getPaddingStart();
        this.f60724m = getPaddingEnd();
        this.f60728o = getPaddingTop();
        float f11 = (this.f60726n - this.f60722l) - this.f60724m;
        this.f60730p = f11;
        int i11 = this.f60705c0;
        this.f60732q = f11 / (i11 + (-1) > 0 ? i11 - 1 : 1);
    }

    private void G() {
        if (this.f60702b == null) {
            this.f60702b = new Paint();
        }
        if (this.f60727n0) {
            this.f60702b.setStrokeCap(Paint.Cap.ROUND);
        }
        this.f60702b.setAntiAlias(true);
        int i11 = this.f60733q0;
        if (i11 > this.f60735r0) {
            this.f60735r0 = i11;
        }
    }

    private void H() {
        if (this.f60704c == null) {
            TextPaint textPaint = new TextPaint();
            this.f60704c = textPaint;
            textPaint.setAntiAlias(true);
            this.f60704c.setTextAlign(Paint.Align.CENTER);
            this.f60704c.setTextSize(this.J);
        }
        if (this.f60708e == null) {
            this.f60708e = new Rect();
        }
    }

    private void I() {
        int i11 = this.f60705c0;
        if (i11 == 0) {
            return;
        }
        if (this.C) {
            this.F = new String[i11];
        }
        for (int i12 = 0; i12 < this.f60703b0.length; i12++) {
            if (this.C) {
                this.F[i12] = z(i12);
                TextPaint textPaint = this.f60704c;
                String str = this.F[i12];
                textPaint.getTextBounds(str, 0, str.length(), this.f60708e);
                this.G[i12] = this.f60708e.width();
                this.H[i12] = this.f60722l + (this.f60732q * i12);
            }
            this.f60703b0[i12] = this.f60722l + (this.f60732q * i12);
        }
    }

    private void J(int i11, Typeface typeface) {
        if (i11 == 0) {
            this.K = Typeface.DEFAULT;
            return;
        }
        if (i11 == 1) {
            this.K = Typeface.MONOSPACE;
            return;
        }
        if (i11 == 2) {
            this.K = Typeface.SANS_SERIF;
            return;
        }
        if (i11 == 3) {
            this.K = Typeface.SERIF;
        } else if (typeface == null) {
            this.K = Typeface.DEFAULT;
        } else {
            this.K = typeface;
        }
    }

    private void K() {
        Drawable drawable = this.B0;
        if (drawable == null) {
            return;
        }
        if (!(drawable instanceof StateListDrawable)) {
            Bitmap bitmapW = w(drawable, true);
            this.f60749y0 = bitmapW;
            this.C0 = bitmapW;
            return;
        }
        try {
            StateListDrawable stateListDrawable = (StateListDrawable) drawable;
            Class<?> cls = stateListDrawable.getClass();
            int iIntValue = ((Integer) cls.getMethod("getStateCount", null).invoke(stateListDrawable, null)).intValue();
            if (iIntValue != 2) {
                throw new IllegalArgumentException("the format of the selector thumb drawable is wrong!");
            }
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("getStateSet", cls2);
            Method method2 = cls.getMethod("getStateDrawable", cls2);
            for (int i11 = 0; i11 < iIntValue; i11++) {
                int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i11));
                if (iArr.length <= 0) {
                    this.f60749y0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i11)), true);
                } else {
                    if (iArr[0] != 16842919) {
                        throw new IllegalArgumentException("the state of the selector thumb drawable is wrong!");
                    }
                    this.C0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i11)), true);
                }
            }
        } catch (Exception unused) {
            Bitmap bitmapW2 = w(this.B0, true);
            this.f60749y0 = bitmapW2;
            this.C0 = bitmapW2;
        }
    }

    private void L(ColorStateList colorStateList, int i11) {
        if (colorStateList == null) {
            this.f60751z0 = i11;
            this.D0 = i11;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i12 = iArr2[0];
                this.f60751z0 = i12;
                this.D0 = i12;
            } else {
                if (iArr.length != 2) {
                    throw new IllegalArgumentException("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
                }
                for (int i13 = 0; i13 < iArr.length; i13++) {
                    int[] iArr3 = iArr[i13];
                    if (iArr3.length == 0) {
                        this.D0 = iArr2[i13];
                    } else {
                        if (iArr3[0] != 16842919) {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_thumb_color is in wrong format.");
                        }
                        this.f60751z0 = iArr2[i13];
                    }
                }
            }
        } catch (Exception unused) {
            throw new RuntimeException("Something wrong happened when parseing thumb selector color.");
        }
    }

    private void M() {
        Drawable drawable = this.f60717i0;
        if (!(drawable instanceof StateListDrawable)) {
            Bitmap bitmapW = w(drawable, false);
            this.f60713g0 = bitmapW;
            this.f60715h0 = bitmapW;
            return;
        }
        StateListDrawable stateListDrawable = (StateListDrawable) drawable;
        try {
            Class<?> cls = stateListDrawable.getClass();
            int iIntValue = ((Integer) cls.getMethod("getStateCount", null).invoke(stateListDrawable, null)).intValue();
            if (iIntValue != 2) {
                throw new IllegalArgumentException("the format of the selector TickMarks drawable is wrong!");
            }
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("getStateSet", cls2);
            Method method2 = cls.getMethod("getStateDrawable", cls2);
            for (int i11 = 0; i11 < iIntValue; i11++) {
                int[] iArr = (int[]) method.invoke(stateListDrawable, Integer.valueOf(i11));
                if (iArr.length <= 0) {
                    this.f60713g0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i11)), false);
                } else {
                    if (iArr[0] != 16842913) {
                        throw new IllegalArgumentException("the state of the selector TickMarks drawable is wrong!");
                    }
                    this.f60715h0 = w((Drawable) method2.invoke(stateListDrawable, Integer.valueOf(i11)), false);
                }
            }
        } catch (Exception unused) {
            Bitmap bitmapW2 = w(this.f60717i0, false);
            this.f60713g0 = bitmapW2;
            this.f60715h0 = bitmapW2;
        }
    }

    private void N(ColorStateList colorStateList, int i11) {
        if (colorStateList == null) {
            this.f60709e0 = i11;
            this.f60707d0 = i11;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i12 = iArr2[0];
                this.f60709e0 = i12;
                this.f60707d0 = i12;
            } else {
                if (iArr.length != 2) {
                    throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
                }
                for (int i13 = 0; i13 < iArr.length; i13++) {
                    int[] iArr3 = iArr[i13];
                    if (iArr3.length == 0) {
                        this.f60707d0 = iArr2[i13];
                    } else {
                        if (iArr3[0] != 16842913) {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_marks_color is in wrong format.");
                        }
                        this.f60709e0 = iArr2[i13];
                    }
                }
            }
        } catch (Exception e11) {
            throw new RuntimeException("Something wrong happened when parsing thumb selector color." + e11.getMessage());
        }
    }

    private void O(ColorStateList colorStateList, int i11) {
        if (colorStateList == null) {
            this.M = i11;
            this.L = i11;
            this.N = i11;
            return;
        }
        try {
            int[][] iArr = null;
            int[] iArr2 = null;
            for (Field field : colorStateList.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                if ("mStateSpecs".equals(field.getName())) {
                    iArr = (int[][]) field.get(colorStateList);
                }
                if ("mColors".equals(field.getName())) {
                    iArr2 = (int[]) field.get(colorStateList);
                }
            }
            if (iArr == null || iArr2 == null) {
                return;
            }
            if (iArr.length == 1) {
                int i12 = iArr2[0];
                this.M = i12;
                this.L = i12;
                this.N = i12;
                return;
            }
            if (iArr.length != 3) {
                throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
            }
            for (int i13 = 0; i13 < iArr.length; i13++) {
                int[] iArr3 = iArr[i13];
                if (iArr3.length == 0) {
                    this.M = iArr2[i13];
                } else {
                    int i14 = iArr3[0];
                    if (i14 == 16842913) {
                        this.L = iArr2[i13];
                    } else {
                        if (i14 != 16843623) {
                            throw new IllegalArgumentException("the selector color file you set for the argument: isb_tick_texts_color is in wrong format.");
                        }
                        this.N = iArr2[i13];
                    }
                }
            }
        } catch (Exception unused) {
            throw new RuntimeException("Something wrong happened when parseing thumb selector color.");
        }
    }

    private void P() {
        if (!this.B) {
            RectF rectF = this.f60729o0;
            rectF.left = this.f60722l;
            rectF.top = this.f60728o + this.f60747x0;
            rectF.right = (((this.f60740u - this.f60738t) * this.f60730p) / getAmplitude()) + this.f60722l;
            RectF rectF2 = this.f60729o0;
            float f11 = rectF2.top;
            rectF2.bottom = f11;
            RectF rectF3 = this.f60731p0;
            rectF3.left = rectF2.right;
            rectF3.top = f11;
            rectF3.right = this.f60726n - this.f60724m;
            rectF3.bottom = f11;
            return;
        }
        RectF rectF4 = this.f60731p0;
        int i11 = this.f60722l;
        rectF4.left = i11;
        rectF4.top = this.f60728o + this.f60747x0;
        rectF4.right = i11 + (this.f60730p * (1.0f - ((this.f60740u - this.f60738t) / getAmplitude())));
        RectF rectF5 = this.f60731p0;
        float f12 = rectF5.top;
        rectF5.bottom = f12;
        RectF rectF6 = this.f60729o0;
        rectF6.left = rectF5.right;
        rectF6.top = f12;
        rectF6.right = this.f60726n - this.f60724m;
        rectF6.bottom = f12;
    }

    private boolean Q(float f11, float f12) {
        if (this.f60714h == -1.0f) {
            this.f60714h = g.a(this.f60700a, 5.0f);
        }
        float f13 = this.f60722l;
        float f14 = this.f60714h;
        boolean z10 = f11 >= f13 - (f14 * 2.0f) && f11 <= ((float) (this.f60726n - this.f60724m)) + (2.0f * f14);
        float f15 = this.f60729o0.top;
        float f16 = this.f60747x0;
        return z10 && ((f12 > ((f15 - f16) - f14) ? 1 : (f12 == ((f15 - f16) - f14) ? 0 : -1)) >= 0 && (f12 > ((f15 + f16) + f14) ? 1 : (f12 == ((f15 + f16) + f14) ? 0 : -1)) <= 0);
    }

    private boolean R(float f11) {
        X(this.f60740u);
        float f12 = this.B ? this.f60731p0.right : this.f60729o0.right;
        int i11 = this.A0;
        return f12 - (((float) i11) / 2.0f) <= f11 && f11 <= f12 + (((float) i11) / 2.0f);
    }

    private void S() {
        if (T()) {
            H();
            this.f60704c.setTypeface(this.K);
            this.f60704c.getTextBounds("j", 0, 1, this.f60708e);
            this.E = this.f60708e.height() + g.a(this.f60700a, 3.0f);
        }
    }

    private boolean T() {
        return this.E0 || (this.f60705c0 != 0 && this.C);
    }

    private boolean U() {
        if (this.f60742v) {
            return this.f60712g != this.f60740u;
        }
        return Math.round(this.f60712g) != Math.round(this.f60740u);
    }

    private void V(MotionEvent motionEvent) {
        X(n(o(k(motionEvent))));
        setSeekListener(true);
        invalidate();
        Z();
    }

    private void W() {
        P();
        if (T()) {
            this.f60704c.getTextBounds("j", 0, 1, this.f60708e);
            float fRound = this.f60728o + this.f60710f + Math.round(this.f60708e.height() - this.f60704c.descent()) + g.a(this.f60700a, 3.0f);
            this.I = fRound;
            this.F0 = fRound;
        }
        if (this.f60703b0 == null) {
            return;
        }
        I();
        if (this.f60705c0 > 2) {
            float f11 = this.A[getClosestIndex()];
            this.f60740u = f11;
            this.f60712g = f11;
        }
        X(this.f60740u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(float f11) {
        if (this.B) {
            this.f60731p0.right = this.f60722l + (this.f60730p * (1.0f - ((f11 - this.f60738t) / getAmplitude())));
            this.f60729o0.left = this.f60731p0.right;
            return;
        }
        this.f60729o0.right = (((f11 - this.f60738t) * this.f60730p) / getAmplitude()) + this.f60722l;
        this.f60731p0.left = this.f60729o0.right;
    }

    private void Z() {
        if (this.S) {
            a0();
            return;
        }
        d dVar = this.P;
        if (dVar == null) {
            return;
        }
        dVar.g();
        if (this.P.i()) {
            this.P.p(getThumbCenterX());
        } else {
            this.P.o(getThumbCenterX());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        d dVar;
        int i11;
        if (!this.S || (dVar = this.P) == null) {
            return;
        }
        dVar.l(getIndicatorTextString());
        int thumbCenterX = 0;
        this.U.measure(0, 0);
        int measuredWidth = this.U.getMeasuredWidth();
        float thumbCenterX2 = getThumbCenterX();
        if (this.f60716i == -1.0f) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) this.f60700a.getSystemService("window");
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                this.f60716i = displayMetrics.widthPixels;
            }
        }
        float f11 = measuredWidth / 2;
        float f12 = f11 + thumbCenterX2;
        int i12 = this.f60726n;
        if (f12 > i12) {
            thumbCenterX = i12 - measuredWidth;
            i11 = (int) ((thumbCenterX2 - thumbCenterX) - f11);
        } else if (thumbCenterX2 - f11 < 0.0f) {
            i11 = -((int) (f11 - thumbCenterX2));
        } else {
            thumbCenterX = (int) (getThumbCenterX() - f11);
            i11 = 0;
        }
        this.P.r(thumbCenterX);
        this.P.q(i11);
    }

    private float getAmplitude() {
        float f11 = this.f60736s;
        float f12 = this.f60738t;
        if (f11 - f12 > 0.0f) {
            return f11 - f12;
        }
        return 1.0f;
    }

    private int getClosestIndex() {
        float fAbs = Math.abs(this.f60736s - this.f60738t);
        int i11 = 0;
        int i12 = 0;
        while (true) {
            float[] fArr = this.A;
            if (i11 >= fArr.length) {
                return i12;
            }
            float fAbs2 = Math.abs(fArr[i11] - this.f60740u);
            if (fAbs2 <= fAbs) {
                i12 = i11;
                fAbs = fAbs2;
            }
            i11++;
        }
    }

    private int getLeftSideTickColor() {
        return this.B ? this.f60707d0 : this.f60709e0;
    }

    private int getLeftSideTickTextsColor() {
        return this.B ? this.M : this.L;
    }

    private int getLeftSideTrackSize() {
        return this.B ? this.f60733q0 : this.f60735r0;
    }

    private int getRightSideTickColor() {
        return this.B ? this.f60709e0 : this.f60707d0;
    }

    private int getRightSideTickTextsColor() {
        return this.B ? this.L : this.M;
    }

    private int getRightSideTrackSize() {
        return this.B ? this.f60735r0 : this.f60733q0;
    }

    private float getThumbCenterX() {
        return this.B ? this.f60731p0.right : this.f60729o0.right;
    }

    private int getThumbPosOnTick() {
        if (this.f60705c0 != 0) {
            return Math.round((getThumbCenterX() - this.f60722l) / this.f60732q);
        }
        return 0;
    }

    private float getThumbPosOnTickFloat() {
        if (this.f60705c0 != 0) {
            return (getThumbCenterX() - this.f60722l) / this.f60732q;
        }
        return 0.0f;
    }

    private float k(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        int i11 = this.f60722l;
        if (x10 >= i11) {
            float x11 = motionEvent.getX();
            int i12 = this.f60726n;
            int i13 = this.f60724m;
            if (x11 <= i12 - i13) {
                return motionEvent.getX();
            }
            i11 = i12 - i13;
        }
        return i11;
    }

    private void l(com.warkiz.widget.a aVar) {
        this.f60736s = aVar.f60756b;
        this.f60738t = aVar.f60757c;
        this.f60740u = aVar.f60758d;
        this.f60742v = aVar.f60759e;
        this.f60705c0 = aVar.H;
        this.f60750z = aVar.f60760f;
        this.B = aVar.f60761g;
        this.f60746x = aVar.f60762h;
        this.f60718j = aVar.f60764j;
        this.f60748y = aVar.f60763i;
        this.W = aVar.f60765k;
        this.Q = aVar.f60766l;
        this.R = aVar.f60767m;
        this.T = aVar.f60768n;
        this.U = aVar.f60769o;
        this.V = aVar.f60770p;
        this.f60733q0 = aVar.f60771q;
        this.f60737s0 = aVar.f60772r;
        this.f60735r0 = aVar.f60773s;
        this.f60739t0 = aVar.f60774t;
        this.f60727n0 = aVar.f60775u;
        this.A0 = aVar.f60778x;
        this.B0 = aVar.A;
        this.G0 = aVar.f60776v;
        L(aVar.f60780z, aVar.f60779y);
        this.E0 = aVar.f60777w;
        this.f60719j0 = aVar.I;
        this.f60725m0 = aVar.K;
        this.f60717i0 = aVar.L;
        this.f60721k0 = aVar.M;
        this.f60723l0 = aVar.N;
        N(aVar.O, aVar.J);
        this.C = aVar.B;
        this.J = aVar.D;
        this.O = aVar.E;
        this.K = aVar.F;
        O(aVar.G, aVar.C);
    }

    private boolean m() {
        if (this.f60705c0 < 3 || !this.f60750z || !this.I0) {
            return false;
        }
        int closestIndex = getClosestIndex();
        float f11 = this.f60740u;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, Math.abs(f11 - this.A[closestIndex]));
        valueAnimatorOfFloat.start();
        valueAnimatorOfFloat.addUpdateListener(new a(f11, closestIndex));
        return true;
    }

    private float n(float f11) {
        this.f60712g = this.f60740u;
        float amplitude = this.f60738t + ((getAmplitude() * (f11 - this.f60722l)) / this.f60730p);
        this.f60740u = amplitude;
        return amplitude;
    }

    private float o(float f11) {
        if (this.f60705c0 > 2 && !this.f60750z) {
            f11 = this.f60722l + (this.f60732q * Math.round((f11 - this.f60722l) / this.f60732q));
        }
        return this.B ? (this.f60730p - f11) + (this.f60722l * 2) : f11;
    }

    private f p(boolean z10) {
        String[] strArr;
        if (this.f60720k == null) {
            this.f60720k = new f(this);
        }
        this.f60720k.f60799b = getProgress();
        this.f60720k.f60800c = getProgressFloat();
        this.f60720k.f60801d = z10;
        if (this.f60705c0 > 2) {
            int thumbPosOnTick = getThumbPosOnTick();
            if (this.C && (strArr = this.F) != null) {
                this.f60720k.f60803f = strArr[thumbPosOnTick];
            }
            if (this.B) {
                this.f60720k.f60802e = (this.f60705c0 - thumbPosOnTick) - 1;
            } else {
                this.f60720k.f60802e = thumbPosOnTick;
            }
        }
        return this.f60720k;
    }

    private void q() {
        int i11 = this.f60705c0;
        if (i11 < 0 || i11 > 50) {
            throw new IllegalArgumentException("the Argument: TICK COUNT must be limited between (0-50), Now is " + this.f60705c0);
        }
        if (i11 == 0) {
            return;
        }
        this.f60703b0 = new float[i11];
        if (this.C) {
            this.H = new float[i11];
            this.G = new float[i11];
        }
        this.A = new float[i11];
        int i12 = 0;
        while (true) {
            float[] fArr = this.A;
            if (i12 >= fArr.length) {
                return;
            }
            float f11 = this.f60738t;
            float f12 = i12 * (this.f60736s - f11);
            int i13 = this.f60705c0;
            fArr[i12] = f11 + (f12 / (i13 + (-1) > 0 ? i13 - 1 : 1));
            i12++;
        }
    }

    private void r(Canvas canvas) {
        if (this.H0) {
            return;
        }
        float thumbCenterX = getThumbCenterX();
        if (this.B0 == null) {
            if (this.f60734r) {
                this.f60702b.setColor(this.D0);
            } else {
                this.f60702b.setColor(this.f60751z0);
            }
            canvas.drawCircle(thumbCenterX, this.f60729o0.top, this.f60734r ? this.f60747x0 : this.f60745w0, this.f60702b);
            return;
        }
        if (this.f60749y0 == null || this.C0 == null) {
            K();
        }
        if (this.f60749y0 == null || this.C0 == null) {
            throw new IllegalArgumentException("the format of the selector thumb drawable is wrong!");
        }
        this.f60702b.setAlpha(255);
        if (this.f60734r) {
            Bitmap bitmap = this.C0;
            canvas.drawBitmap(bitmap, thumbCenterX - (bitmap.getWidth() / 2.0f), this.f60729o0.top - (this.C0.getHeight() / 2.0f), this.f60702b);
        } else {
            Bitmap bitmap2 = this.f60749y0;
            canvas.drawBitmap(bitmap2, thumbCenterX - (bitmap2.getWidth() / 2.0f), this.f60729o0.top - (this.f60749y0.getHeight() / 2.0f), this.f60702b);
        }
    }

    private void s(Canvas canvas) {
        if (this.E0) {
            if (!this.C || this.f60705c0 <= 2) {
                this.f60704c.setColor(this.G0);
                canvas.drawText(y(this.f60740u), getThumbCenterX(), this.F0, this.f60704c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSeekListener(boolean z10) {
        if (this.f60706d != null && U()) {
            this.f60706d.c(p(z10));
        }
    }

    private void t(Canvas canvas) {
        Bitmap bitmap;
        if (this.f60705c0 != 0) {
            if (this.f60719j0 == 0 && this.f60717i0 == null) {
                return;
            }
            float thumbCenterX = getThumbCenterX();
            for (int i11 = 0; i11 < this.f60703b0.length; i11++) {
                float thumbPosOnTickFloat = getThumbPosOnTickFloat();
                if ((!this.f60723l0 || thumbCenterX < this.f60703b0[i11]) && ((!this.f60721k0 || (i11 != 0 && i11 != this.f60703b0.length - 1)) && (i11 != getThumbPosOnTick() || this.f60705c0 <= 2 || this.f60750z))) {
                    float f11 = i11;
                    if (f11 <= thumbPosOnTickFloat) {
                        this.f60702b.setColor(getLeftSideTickColor());
                    } else {
                        this.f60702b.setColor(getRightSideTickColor());
                    }
                    if (this.f60717i0 != null) {
                        if (this.f60715h0 == null || this.f60713g0 == null) {
                            M();
                        }
                        Bitmap bitmap2 = this.f60715h0;
                        if (bitmap2 == null || (bitmap = this.f60713g0) == null) {
                            throw new IllegalArgumentException("the format of the selector TickMarks drawable is wrong!");
                        }
                        if (f11 <= thumbPosOnTickFloat) {
                            canvas.drawBitmap(bitmap2, this.f60703b0[i11] - (bitmap.getWidth() / 2.0f), this.f60729o0.top - (this.f60713g0.getHeight() / 2.0f), this.f60702b);
                        } else {
                            canvas.drawBitmap(bitmap, this.f60703b0[i11] - (bitmap.getWidth() / 2.0f), this.f60729o0.top - (this.f60713g0.getHeight() / 2.0f), this.f60702b);
                        }
                    } else {
                        int i12 = this.f60719j0;
                        if (i12 == 1) {
                            canvas.drawCircle(this.f60703b0[i11], this.f60729o0.top, this.f60711f0, this.f60702b);
                        } else if (i12 == 3) {
                            int iA = g.a(this.f60700a, 1.0f);
                            float leftSideTrackSize = thumbCenterX >= this.f60703b0[i11] ? getLeftSideTrackSize() : getRightSideTrackSize();
                            float f12 = this.f60703b0[i11];
                            float f13 = iA;
                            float f14 = this.f60729o0.top;
                            float f15 = leftSideTrackSize / 2.0f;
                            canvas.drawRect(f12 - f13, f14 - f15, f12 + f13, f14 + f15, this.f60702b);
                        } else if (i12 == 2) {
                            float f16 = this.f60703b0[i11];
                            int i13 = this.f60725m0;
                            float f17 = this.f60729o0.top;
                            canvas.drawRect(f16 - (i13 / 2.0f), f17 - (i13 / 2.0f), f16 + (i13 / 2.0f), f17 + (i13 / 2.0f), this.f60702b);
                        }
                    }
                }
            }
        }
    }

    private void u(Canvas canvas) {
        if (this.F == null) {
            return;
        }
        float thumbPosOnTickFloat = getThumbPosOnTickFloat();
        int i11 = 0;
        while (true) {
            String[] strArr = this.F;
            if (i11 >= strArr.length) {
                return;
            }
            if (!this.D || i11 == 0 || i11 == strArr.length - 1) {
                if (i11 == getThumbPosOnTick() && i11 == thumbPosOnTickFloat) {
                    this.f60704c.setColor(this.N);
                } else if (i11 < thumbPosOnTickFloat) {
                    this.f60704c.setColor(getLeftSideTickTextsColor());
                } else {
                    this.f60704c.setColor(getRightSideTickTextsColor());
                }
                int length = this.B ? (this.F.length - i11) - 1 : i11;
                if (i11 == 0) {
                    canvas.drawText(this.F[length], this.H[i11] + (this.G[length] / 2.0f), this.I, this.f60704c);
                } else {
                    String[] strArr2 = this.F;
                    if (i11 == strArr2.length - 1) {
                        canvas.drawText(strArr2[length], this.H[i11] - (this.G[length] / 2.0f), this.I, this.f60704c);
                    } else {
                        canvas.drawText(strArr2[length], this.H[i11], this.I, this.f60704c);
                    }
                }
            }
            i11++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0078  */
    /* JADX WARN: Code duplicated, block: B:21:0x0083  */
    private void v(Canvas canvas) {
        if (!this.f60743v0) {
            this.f60702b.setColor(this.f60739t0);
            this.f60702b.setStrokeWidth(this.f60735r0);
            RectF rectF = this.f60729o0;
            canvas.drawLine(rectF.left, rectF.top, rectF.right, rectF.bottom, this.f60702b);
            this.f60702b.setColor(this.f60737s0);
            this.f60702b.setStrokeWidth(this.f60733q0);
            RectF rectF2 = this.f60731p0;
            canvas.drawLine(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom, this.f60702b);
            return;
        }
        int i11 = this.f60705c0;
        int i12 = i11 + (-1) > 0 ? i11 - 1 : 1;
        for (int i13 = 0; i13 < i12; i13++) {
            if (this.B) {
                this.f60702b.setColor(this.f60741u0[(i12 - i13) - 1]);
            } else {
                this.f60702b.setColor(this.f60741u0[i13]);
            }
            float thumbPosOnTickFloat = getThumbPosOnTickFloat();
            float f11 = i13;
            if (f11 < thumbPosOnTickFloat) {
                int i14 = i13 + 1;
                if (thumbPosOnTickFloat < i14) {
                    float thumbCenterX = getThumbCenterX();
                    this.f60702b.setStrokeWidth(getLeftSideTrackSize());
                    float f12 = this.f60703b0[i13];
                    RectF rectF3 = this.f60729o0;
                    canvas.drawLine(f12, rectF3.top, thumbCenterX, rectF3.bottom, this.f60702b);
                    this.f60702b.setStrokeWidth(getRightSideTrackSize());
                    RectF rectF4 = this.f60729o0;
                    canvas.drawLine(thumbCenterX, rectF4.top, this.f60703b0[i14], rectF4.bottom, this.f60702b);
                } else {
                    if (f11 < thumbPosOnTickFloat) {
                        this.f60702b.setStrokeWidth(getLeftSideTrackSize());
                    } else {
                        this.f60702b.setStrokeWidth(getRightSideTrackSize());
                    }
                    float[] fArr = this.f60703b0;
                    float f13 = fArr[i13];
                    RectF rectF5 = this.f60729o0;
                    canvas.drawLine(f13, rectF5.top, fArr[i13 + 1], rectF5.bottom, this.f60702b);
                }
            } else {
                if (f11 < thumbPosOnTickFloat) {
                    this.f60702b.setStrokeWidth(getLeftSideTrackSize());
                } else {
                    this.f60702b.setStrokeWidth(getRightSideTrackSize());
                }
                float[] fArr2 = this.f60703b0;
                float f14 = fArr2[i13];
                RectF rectF6 = this.f60729o0;
                canvas.drawLine(f14, rectF6.top, fArr2[i13 + 1], rectF6.bottom, this.f60702b);
            }
        }
    }

    private Bitmap w(Drawable drawable, boolean z10) {
        int intrinsicHeight;
        if (drawable == null) {
            return null;
        }
        int iA = g.a(this.f60700a, 30.0f);
        if (drawable.getIntrinsicWidth() > iA) {
            int i11 = z10 ? this.A0 : this.f60725m0;
            intrinsicHeight = x(drawable, i11);
            if (i11 > iA) {
                intrinsicHeight = x(drawable, iA);
            } else {
                iA = i11;
            }
        } else {
            iA = drawable.getIntrinsicWidth();
            intrinsicHeight = drawable.getIntrinsicHeight();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iA, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static com.warkiz.widget.a with(@NonNull Context context) {
        return new com.warkiz.widget.a(context);
    }

    private int x(Drawable drawable, int i11) {
        return Math.round(((i11 * 1.0f) * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth());
    }

    private String y(float f11) {
        return this.f60742v ? c.b(f11, this.f60744w) : String.valueOf(Math.round(f11));
    }

    private String z(int i11) {
        CharSequence[] charSequenceArr = this.O;
        if (charSequenceArr == null) {
            return y(this.A[i11]);
        }
        return i11 < charSequenceArr.length ? String.valueOf(charSequenceArr[i11]) : "";
    }

    void Y() {
        this.U.setVisibility(4);
        postDelayed(new Runnable() { // from class: com.warkiz.widget.IndicatorSeekBar.3
            @Override // java.lang.Runnable
            public void run() {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
                alphaAnimation.setDuration(180L);
                IndicatorSeekBar.this.U.setAnimation(alphaAnimation);
                IndicatorSeekBar.this.a0();
                IndicatorSeekBar.this.U.setVisibility(0);
            }
        }, 300L);
    }

    public void customSectionTrackColor(@NonNull b bVar) {
        int i11 = this.f60705c0;
        int i12 = i11 + (-1) > 0 ? i11 - 1 : 1;
        int[] iArr = new int[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            iArr[i13] = this.f60737s0;
        }
        this.f60743v0 = bVar.a(iArr);
        this.f60741u0 = iArr;
        invalidate();
    }

    public void customTickTexts(@NonNull String[] strArr) {
        this.O = strArr;
        if (this.F != null) {
            int i11 = 0;
            while (i11 < this.F.length) {
                String strValueOf = i11 < strArr.length ? String.valueOf(strArr[i11]) : "";
                int i12 = this.B ? (this.f60705c0 - 1) - i11 : i11;
                this.F[i12] = strValueOf;
                TextPaint textPaint = this.f60704c;
                if (textPaint != null && this.f60708e != null) {
                    textPaint.getTextBounds(strValueOf, 0, strValueOf.length(), this.f60708e);
                    this.G[i12] = this.f60708e.width();
                }
                i11++;
            }
            invalidate();
        }
    }

    public void customTickTextsTypeface(@NonNull Typeface typeface) {
        this.K = typeface;
        S();
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewParent parent = getParent();
        if (parent == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            parent.requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public d getIndicator() {
        return this.P;
    }

    View getIndicatorContentView() {
        return this.U;
    }

    String getIndicatorTextString() {
        String[] strArr;
        String str = this.f60701a0;
        if (str == null || !str.contains("${TICK_TEXT}")) {
            String str2 = this.f60701a0;
            if (str2 != null && str2.contains("${PROGRESS}")) {
                return this.f60701a0.replace("${PROGRESS}", y(this.f60740u));
            }
        } else if (this.f60705c0 > 2 && (strArr = this.F) != null) {
            return this.f60701a0.replace("${TICK_TEXT}", strArr[getThumbPosOnTick()]);
        }
        return y(this.f60740u);
    }

    public float getMax() {
        return this.f60736s;
    }

    public float getMin() {
        return this.f60738t;
    }

    public e getOnSeekChangeListener() {
        return this.f60706d;
    }

    public int getProgress() {
        return Math.round(this.f60740u);
    }

    public synchronized float getProgressFloat() {
        return BigDecimal.valueOf(this.f60740u).setScale(this.f60744w, 4).floatValue();
    }

    public int getTickCount() {
        return this.f60705c0;
    }

    public void hideThumb(boolean z10) {
        this.H0 = z10;
        invalidate();
    }

    public void hideThumbText(boolean z10) {
        this.E0 = !z10;
        invalidate();
    }

    @Override // android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        v(canvas);
        t(canvas);
        u(canvas);
        r(canvas);
        s(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        setMeasuredDimension(View.resolveSize(g.a(this.f60700a, 170.0f), i11), Math.round(this.f60710f + getPaddingTop() + getPaddingBottom()) + this.E);
        F();
        W();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        setProgress(bundle.getFloat("isb_progress"));
        super.onRestoreInstanceState(bundle.getParcelable("isb_instance_state"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("isb_instance_state", super.onSaveInstanceState());
        bundle.putFloat("isb_progress", this.f60740u);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        post(new Runnable() { // from class: com.warkiz.widget.IndicatorSeekBar.1
            @Override // java.lang.Runnable
            public void run() {
                IndicatorSeekBar.this.requestLayout();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0020  */
    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0036  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        e eVar;
        d dVar;
        if (!this.f60746x || !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            performClick();
            float x10 = motionEvent.getX();
            if (Q(x10, motionEvent.getY())) {
                if (this.f60748y && !R(x10)) {
                    return false;
                }
                this.f60734r = true;
                e eVar2 = this.f60706d;
                if (eVar2 != null) {
                    eVar2.a(this);
                }
                V(motionEvent);
                return true;
            }
        } else if (action == 1) {
            this.f60734r = false;
            eVar = this.f60706d;
            if (eVar != null) {
                eVar.b(this);
            }
            if (!m()) {
                invalidate();
            }
            dVar = this.P;
            if (dVar != null) {
                dVar.f();
            }
        } else if (action == 2) {
            V(motionEvent);
        } else if (action == 3) {
            this.f60734r = false;
            eVar = this.f60706d;
            if (eVar != null) {
                eVar.b(this);
            }
            if (!m()) {
                invalidate();
            }
            dVar = this.P;
            if (dVar != null) {
                dVar.f();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setDecimalScale(int i11) {
        this.f60744w = i11;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        if (z10 == isEnabled()) {
            return;
        }
        super.setEnabled(z10);
        if (isEnabled()) {
            setAlpha(1.0f);
            if (this.S) {
                this.U.setAlpha(1.0f);
                return;
            }
            return;
        }
        setAlpha(0.3f);
        if (this.S) {
            this.U.setAlpha(0.3f);
        }
    }

    void setIndicatorStayAlways(boolean z10) {
        this.S = z10;
    }

    public void setIndicatorTextFormat(String str) {
        this.f60701a0 = str;
        I();
        a0();
    }

    public synchronized void setMax(float f11) {
        this.f60736s = Math.max(this.f60738t, f11);
        E();
        q();
        W();
        invalidate();
        a0();
    }

    public synchronized void setMin(float f11) {
        this.f60738t = Math.min(this.f60736s, f11);
        E();
        q();
        W();
        invalidate();
        a0();
    }

    public void setOnSeekChangeListener(@NonNull e eVar) {
        this.f60706d = eVar;
    }

    public synchronized void setProgress(float f11) {
        try {
            this.f60712g = this.f60740u;
            float f12 = this.f60738t;
            if (f11 < f12) {
                f11 = f12;
            } else {
                f12 = this.f60736s;
                if (f11 > f12) {
                    f11 = f12;
                }
            }
            this.f60740u = f11;
            if (!this.f60750z && this.f60705c0 > 2) {
                this.f60740u = this.A[getClosestIndex()];
            }
            setSeekListener(false);
            X(this.f60740u);
            postInvalidate();
            a0();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void setR2L(boolean z10) {
        this.B = z10;
        requestLayout();
        invalidate();
        a0();
    }

    public void setThumbAdjustAuto(boolean z10) {
        this.I0 = z10;
    }

    public void setThumbDrawable(Drawable drawable) {
        if (drawable == null) {
            this.B0 = null;
            this.f60749y0 = null;
            this.C0 = null;
        } else {
            this.B0 = drawable;
            float fMin = Math.min(g.a(this.f60700a, 30.0f), this.A0) / 2.0f;
            this.f60745w0 = fMin;
            this.f60747x0 = fMin;
            this.f60710f = Math.max(fMin, this.f60711f0) * 2.0f;
            K();
        }
        requestLayout();
        invalidate();
    }

    public synchronized void setTickCount(int i11) {
        int i12 = this.f60705c0;
        if (i12 < 0 || i12 > 50) {
            throw new IllegalArgumentException("the Argument: TICK COUNT must be limited between (0-50), Now is " + this.f60705c0);
        }
        this.f60705c0 = i11;
        q();
        I();
        F();
        W();
        invalidate();
        a0();
    }

    public void setTickMarksDrawable(Drawable drawable) {
        if (drawable == null) {
            this.f60717i0 = null;
            this.f60713g0 = null;
            this.f60715h0 = null;
        } else {
            this.f60717i0 = drawable;
            float fMin = Math.min(g.a(this.f60700a, 30.0f), this.f60725m0) / 2.0f;
            this.f60711f0 = fMin;
            this.f60710f = Math.max(this.f60747x0, fMin) * 2.0f;
            M();
        }
        invalidate();
    }

    public void setUserSeekAble(boolean z10) {
        this.f60746x = z10;
    }

    public void showBothEndsTickTextsOnly(boolean z10) {
        this.D = z10;
    }

    public void thumbColor(int i11) {
        this.f60751z0 = i11;
        this.D0 = i11;
        invalidate();
    }

    public void thumbColorStateList(@NonNull ColorStateList colorStateList) {
        L(colorStateList, this.f60751z0);
        invalidate();
    }

    public void tickMarksColor(int i11) {
        this.f60709e0 = i11;
        this.f60707d0 = i11;
        invalidate();
    }

    public void tickMarksColor(@NonNull ColorStateList colorStateList) {
        N(colorStateList, this.f60709e0);
        invalidate();
    }

    public void tickTextsColor(int i11) {
        this.M = i11;
        this.L = i11;
        this.N = i11;
        invalidate();
    }

    public void tickTextsColorStateList(@NonNull ColorStateList colorStateList) {
        O(colorStateList, this.L);
        invalidate();
    }
}
