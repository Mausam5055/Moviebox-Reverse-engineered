package com.tn.lib.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.tn.lib.widget.R$style;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class SwitchButton extends View implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f41048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f41049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f41050c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f41051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f41052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Paint f41053f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f41054g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f41055h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f41056i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f41057j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RectF f41058k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f41059l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f41060m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f41061n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private State f41062o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private d f41063p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f41064q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f41065r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f41066s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f41067t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f41068u;

    private enum State {
        OPEN,
        CLOSE
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SwitchButton.this.f41061n = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SwitchButton.this.postInvalidate();
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SwitchButton.this.f41049b = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            SwitchButton.this.f41053f.setColor(SwitchButton.this.f41049b);
            SwitchButton.this.postInvalidate();
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SwitchButton.this.setClickable(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            SwitchButton.this.setClickable(false);
        }
    }

    public interface d {
        void a(SwitchButton switchButton, boolean z10);
    }

    public SwitchButton(Context context) {
        this(context, null);
    }

    public SwitchButton(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwitchButton(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41057j = 10.0f;
        this.f41068u = true;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.SwitchView, i11, R$style.def_switch_view);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i12 = 0; i12 < indexCount; i12++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i12);
            if (index == R$styleable.SwitchView_switch_bg_color) {
                this.f41049b = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_ball_color) {
                this.f41051d = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_checked_bg_color) {
                this.f41050c = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_radius) {
                this.f41057j = typedArrayObtainStyledAttributes.getInteger(index, 10);
            } else if (index == R$styleable.SwitchView_switch_gradient_start_color) {
                this.f41066s = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            } else if (index == R$styleable.SwitchView_switch_gradient_end_color) {
                this.f41067t = typedArrayObtainStyledAttributes.getColor(index, ViewCompat.MEASURED_STATE_MASK);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        i();
    }

    private void e(int i11, int i12, int i13, int i14) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(i11, i12);
        valueAnimatorOfFloat.addUpdateListener(new a());
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i13), Integer.valueOf(i14));
        valueAnimatorOfObject.addUpdateListener(new b());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfObject);
        animatorSet.setDuration(50L);
        animatorSet.addListener(new c());
        animatorSet.start();
    }

    private Paint f(int i11, int i12, Paint.Style style, int i13) {
        Paint paint = new Paint(1);
        paint.setColor(i11);
        paint.setStrokeWidth(i13);
        paint.setDither(true);
        paint.setTextSize(i12);
        paint.setStyle(style);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        return paint;
    }

    private void g(Canvas canvas) {
        this.f41052e.setColor(this.f41051d);
        canvas.drawCircle(this.f41061n, this.f41056i, this.f41057j, this.f41052e);
    }

    private void h(Canvas canvas) {
        if (this.f41062o != State.OPEN) {
            RectF rectF = this.f41058k;
            int i11 = this.f41056i;
            canvas.drawRoundRect(rectF, i11, i11, this.f41053f);
        } else {
            Paint paint = new Paint();
            paint.setShader(new LinearGradient(0.0f, 0.0f, this.f41055h, 0.0f, this.f41066s, this.f41067t, Shader.TileMode.CLAMP));
            RectF rectF2 = this.f41058k;
            int i12 = this.f41056i;
            canvas.drawRoundRect(rectF2, i12, i12, paint);
        }
    }

    private void i() {
        this.f41064q = this.f41049b;
        this.f41065r = this.f41050c;
        int i11 = this.f41051d;
        Paint.Style style = Paint.Style.FILL;
        this.f41052e = f(i11, 0, style, 0);
        this.f41053f = f(this.f41049b, 0, style, 0);
        this.f41062o = State.CLOSE;
        setOnClickListener(this);
        this.f41053f.setColor(this.f41049b);
        this.f41057j = oh.h.f71021a.a(getContext(), this.f41057j);
    }

    public boolean isChecked() {
        return this.f41060m;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f41068u) {
            State state = this.f41062o;
            State state2 = State.CLOSE;
            State state3 = state == state2 ? State.OPEN : state2;
            this.f41062o = state3;
            if (state3 == state2) {
                e(this.f41059l, this.f41056i, this.f41065r, this.f41064q);
            } else {
                e(this.f41056i, this.f41059l, this.f41064q, this.f41065r);
            }
            d dVar = this.f41063p;
            if (dVar != null) {
                dVar.a(this, this.f41062o == State.OPEN);
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        h(canvas);
        g(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            i11 = View.MeasureSpec.makeMeasureSpec((int) TypedValue.applyDimension(1, 44.0f, getResources().getDisplayMetrics()), 1073741824);
        }
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            i12 = View.MeasureSpec.makeMeasureSpec((int) TypedValue.applyDimension(1, 24.0f, getResources().getDisplayMetrics()), 1073741824);
        }
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        this.f41054g = i12;
        this.f41055h = i11;
        this.f41048a = (i11 * 1.0f) / 30.0f;
        int i15 = i12 / 2;
        this.f41056i = i15;
        int i16 = i11 - i15;
        this.f41059l = i16;
        this.f41061n = this.f41060m ? i16 : i15;
        this.f41058k = new RectF(0.0f, 0.0f, this.f41055h, this.f41054g);
    }

    public void setChecked(boolean z10) {
        this.f41060m = z10;
        State state = z10 ? State.OPEN : State.CLOSE;
        if (this.f41062o == state) {
            return;
        }
        this.f41062o = state;
        if (z10 && this.f41059l == 0) {
            this.f41061n = oh.h.f71021a.a(getContext(), 32.0f);
            int i11 = this.f41065r;
            this.f41049b = i11;
            this.f41053f.setColor(i11);
            postInvalidate();
        } else if (state == State.CLOSE) {
            e(this.f41059l, this.f41056i, this.f41065r, this.f41064q);
        } else {
            e(this.f41056i, this.f41059l, this.f41064q, this.f41065r);
        }
        d dVar = this.f41063p;
        if (dVar != null) {
            dVar.a(this, this.f41062o == State.OPEN);
        }
    }

    public void setColor(Integer num, Integer num2, Integer num3) {
        this.f41064q = num.intValue();
        this.f41065r = num2.intValue();
        this.f41051d = num3.intValue();
        this.f41052e.setColor(num3.intValue());
        postInvalidate();
    }

    public void setEnable(boolean z10) {
        this.f41068u = z10;
    }

    public void setGradientColors(int i11, int i12, Integer num) {
        this.f41066s = i11;
        this.f41067t = i12;
        this.f41051d = num.intValue();
        postInvalidate();
    }

    public void setOnCheckedChangeListener(d dVar) {
        this.f41063p = dVar;
    }
}
