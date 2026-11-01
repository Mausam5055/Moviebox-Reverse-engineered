package com.cloud.tmc.miniapp.widget.pulldownrefresh.header;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.MiniRefreshState;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o extends com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0 implements OooOO0 {
    public boolean OooO;
    public int OooO0Oo;
    public boolean OooO0o;
    public int OooO0o0;
    public boolean OooO0oO;
    public boolean OooO0oo;
    public Path OooOO0;
    public Paint OooOO0O;
    public int OooOO0o;
    public int OooOOO;
    public int OooOOO0;
    public int OooOOOO;
    public float OooOOOo;
    public float OooOOo;
    public float OooOOo0;
    public float OooOOoo;
    public Animator OooOo;
    public float OooOo0;
    public int OooOo00;
    public float OooOo0O;
    public float OooOo0o;
    public RectF OooOoO0;

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.widget.pulldownrefresh.header.OooO00o$OooO00o, reason: collision with other inner class name */
    public static /* synthetic */ class C0356OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[MiniRefreshState.values().length];
            OooO00o = iArr;
            try {
                iArr[MiniRefreshState.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[MiniRefreshState.PULL_DOWN_TO_REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public class OooO0O0 implements ValueAnimator.AnimatorUpdateListener {
        public byte OooO00o;

        public OooO0O0(byte b11) {
            this.OooO00o = b11;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            byte b11 = this.OooO00o;
            if (b11 == 0) {
                OooO00o.this.OooOo0o = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (1 == b11) {
                OooO00o oooO00o = OooO00o.this;
                if (oooO00o.OooO0oo) {
                    valueAnimator.cancel();
                    return;
                }
                oooO00o.OooOOO0 = ((Integer) valueAnimator.getAnimatedValue()).intValue() / 2;
            } else if (2 == b11) {
                OooO00o.this.OooOOOo = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (3 == b11) {
                OooO00o.this.OooOOoo = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (4 == b11) {
                OooO00o.this.OooOo00 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            }
            OooO00o.this.invalidate();
        }
    }

    public OooO00o(Context context, AttributeSet attributeSet) {
        super(context, null, 0);
        this.OooO = false;
        this.OooOOO = -1;
        this.OooOOOO = 0;
        this.OooOo00 = 0;
        this.OooOo0 = 0.0f;
        this.OooOo0O = 0.0f;
        this.OooOo0o = 0.0f;
        this.OooOoO0 = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.OooO0O0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0;
        this.OooOO0 = new Path();
        Paint paint = new Paint();
        this.OooOO0O = paint;
        paint.setAntiAlias(true);
        this.OooOOo = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(7.0f);
        this.OooOo0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(20.0f);
        this.OooOo0O = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(7.0f);
        this.OooOO0O.setStrokeWidth(com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(3.0f));
        setMinimumHeight(com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(100.0f));
        if (isInEditMode()) {
            this.OooOO0o = 1000;
            this.OooOo0o = 1.0f;
            this.OooOo00 = 270;
        } else {
            this.OooOo0o = 0.0f;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, R.styleable.MiniBezierRadarHeader);
        this.OooO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniBezierRadarHeader_srlEnableHorizontalDrag, this.OooO);
        OooO00o(typedArrayObtainStyledAttributes.getColor(R.styleable.MiniBezierRadarHeader_srlAccentColor, -1));
        OooO0O0(typedArrayObtainStyledAttributes.getColor(R.styleable.MiniBezierRadarHeader_srlPrimaryColor, -14540254));
        this.OooO0oO = typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniBezierRadarHeader_srlAccentColor);
        this.OooO0o = typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniBezierRadarHeader_srlPrimaryColor);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public int OooO00o(@NonNull OooOOO oooOOO, boolean z10) {
        Animator animator = this.OooOo;
        if (animator != null) {
            animator.removeAllListeners();
            this.OooOo.end();
            this.OooOo = null;
        }
        int width = getWidth();
        int i11 = this.OooOOOO;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.OooOo0, (float) Math.sqrt(((double) ((i11 * i11) + (width * width))) * 1.0d));
        valueAnimatorOfFloat.setDuration(400L);
        valueAnimatorOfFloat.addUpdateListener(new OooO0O0((byte) 3));
        valueAnimatorOfFloat.start();
        return 400;
    }

    public OooO00o OooO00o(int i11) {
        this.OooO0Oo = i11;
        this.OooO0oO = true;
        return this;
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public void OooO00o(float f11, int i11, int i12) {
        this.OooOOO = i11;
        invalidate();
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public void OooO00o(@NonNull OooOOO oooOOO, int i11, int i12) {
        this.OooOO0o = i11 - 1;
        this.OooO0oo = false;
        com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0 oooO0O0 = new com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0(1);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(oooO0O0);
        valueAnimatorOfFloat.addUpdateListener(new OooO0O0((byte) 2));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(oooO0O0);
        valueAnimatorOfFloat2.addUpdateListener(new OooO0O0((byte) 0));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 360);
        valueAnimatorOfInt.setDuration(720L);
        valueAnimatorOfInt.setRepeatCount(-1);
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(new OooO0O0((byte) 4));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfInt);
        animatorSet.start();
        int i13 = this.OooOOO0;
        float f11 = i13;
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(i13, 0, -((int) (0.8f * f11)), 0, -((int) (f11 * 0.4f)), 0);
        valueAnimatorOfInt2.addUpdateListener(new OooO0O0((byte) 1));
        valueAnimatorOfInt2.setInterpolator(new com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0(1));
        valueAnimatorOfInt2.setDuration(800L);
        valueAnimatorOfInt2.start();
        this.OooOo = animatorSet;
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0o
    public void OooO00o(@NonNull OooOOO oooOOO, @NonNull MiniRefreshState miniRefreshState, @NonNull MiniRefreshState miniRefreshState2) {
        int i11 = C0356OooO00o.OooO00o[miniRefreshState2.ordinal()];
        if (i11 == 1 || i11 == 2) {
            this.OooOOOo = 1.0f;
            this.OooOo0o = 0.0f;
            this.OooOOoo = 0.0f;
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public void OooO00o(boolean z10, float f11, int i11, int i12, int i13) {
        this.OooOOOO = i11;
        if (z10 || this.OooO0oo) {
            this.OooO0oo = true;
            this.OooOO0o = Math.min(i12, i11);
            this.OooOOO0 = (int) (Math.max(0, i11 - i12) * 1.9f);
            this.OooOOo0 = f11;
            invalidate();
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public boolean OooO00o() {
        return this.OooO;
    }

    public OooO00o OooO0O0(int i11) {
        this.OooO0o0 = i11;
        this.OooO0o = true;
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        float f11;
        int width = getWidth();
        int height = isInEditMode() ? getHeight() : this.OooOOOO;
        this.OooOO0.reset();
        this.OooOO0.lineTo(0.0f, this.OooOO0o);
        Path path = this.OooOO0;
        int i11 = this.OooOOO;
        float f12 = i11 >= 0 ? i11 : width / 2.0f;
        int i12 = this.OooOO0o;
        float f13 = width;
        path.quadTo(f12, this.OooOOO0 + i12, f13, i12);
        this.OooOO0.lineTo(f13, 0.0f);
        this.OooOO0O.setColor(this.OooO0o0);
        canvas.drawPath(this.OooOO0, this.OooOO0O);
        if (this.OooOOOo > 0.0f) {
            this.OooOO0O.setColor(this.OooO0Oo);
            float f14 = height;
            float f15 = f14 / com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO0O0;
            float f16 = (f13 * 1.0f) / 7.0f;
            float f17 = this.OooOOo0;
            float f18 = (f16 * f17) - (f17 > 1.0f ? ((f17 - 1.0f) * f16) / f17 : 0.0f);
            float f19 = f14 - (f17 > 1.0f ? (((f17 - 1.0f) * f14) / 2.0f) / f17 : 0.0f);
            int i13 = 0;
            while (i13 < 7) {
                int i14 = i13 + 1;
                int i15 = i13 - 3;
                float f20 = f13;
                this.OooOO0O.setAlpha((int) ((1.0d - (1.0d / Math.pow((((double) f15) / 800.0d) + 1.0d, 15.0d))) * ((double) (this.OooOOOo * ((float) ((1.0d - ((((double) Math.abs(i15)) / 7.0d) * 2.0d)) * 255.0d))))));
                float f21 = (1.0f - (1.0f / ((f15 / 10.0f) + 1.0f))) * this.OooOOo;
                canvas.drawCircle((i15 * f18) + ((f20 / 2.0f) - (f21 / 2.0f)), f19 / 2.0f, f21, this.OooOO0O);
                i13 = i14;
                f13 = f20;
            }
            f11 = f13;
            this.OooOO0O.setAlpha(255);
        } else {
            f11 = f13;
        }
        if (this.OooOo != null || isInEditMode()) {
            float f22 = this.OooOo0;
            float f23 = this.OooOo0o;
            float f24 = f22 * f23;
            float f25 = this.OooOo0O * f23;
            this.OooOO0O.setColor(this.OooO0Oo);
            Paint paint = this.OooOO0O;
            Paint.Style style = Paint.Style.FILL;
            paint.setStyle(style);
            float f26 = f11 / 2.0f;
            float f27 = height / 2.0f;
            canvas.drawCircle(f26, f27, f24, this.OooOO0O);
            Paint paint2 = this.OooOO0O;
            Paint.Style style2 = Paint.Style.STROKE;
            paint2.setStyle(style2);
            float f28 = f24 + f25;
            canvas.drawCircle(f26, f27, f28, this.OooOO0O);
            this.OooOO0O.setColor((this.OooO0o0 & 16777215) | 1426063360);
            this.OooOO0O.setStyle(style);
            this.OooOoO0.set(f26 - f24, f27 - f24, f26 + f24, f24 + f27);
            canvas.drawArc(this.OooOoO0, 270.0f, this.OooOo00, true, this.OooOO0O);
            this.OooOO0O.setStyle(style2);
            this.OooOoO0.set(f26 - f28, f27 - f28, f26 + f28, f27 + f28);
            canvas.drawArc(this.OooOoO0, 270.0f, this.OooOo00, false, this.OooOO0O);
            this.OooOO0O.setStyle(style);
        }
        if (this.OooOOoo > 0.0f) {
            this.OooOO0O.setColor(this.OooO0Oo);
            canvas.drawCircle(f11 / 2.0f, height / 2.0f, this.OooOOoo, this.OooOO0O);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.OooOo;
        if (animator != null) {
            animator.removeAllListeners();
            this.OooOo.end();
            this.OooOo = null;
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    @Deprecated
    public void setPrimaryColors(int... iArr) {
        if (iArr.length > 0 && !this.OooO0o) {
            this.OooO0o0 = iArr[0];
            this.OooO0o = false;
        }
        if (iArr.length <= 1 || this.OooO0oO) {
            return;
        }
        this.OooO0Oo = iArr[1];
        this.OooO0oO = false;
    }
}
