package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R$styleable;

/* JADX INFO: loaded from: classes.dex */
public class MotionTelltales extends MockView {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f7633l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    MotionLayout f7634m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float[] f7635n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Matrix f7636o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f7637p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f7638q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    float f7639r;

    public MotionTelltales(Context context) {
        super(context);
        this.f7633l = new Paint();
        this.f7635n = new float[2];
        this.f7636o = new Matrix();
        this.f7637p = 0;
        this.f7638q = -65281;
        this.f7639r = 0.25f;
        a(context, null);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7633l = new Paint();
        this.f7635n = new float[2];
        this.f7636o = new Matrix();
        this.f7637p = 0;
        this.f7638q = -65281;
        this.f7639r = 0.25f;
        a(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f7633l = new Paint();
        this.f7635n = new float[2];
        this.f7636o = new Matrix();
        this.f7637p = 0;
        this.f7638q = -65281;
        this.f7639r = 0.25f;
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionTelltales);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R$styleable.MotionTelltales_telltales_tailColor) {
                    this.f7638q = typedArrayObtainStyledAttributes.getColor(index, this.f7638q);
                } else if (index == R$styleable.MotionTelltales_telltales_velocityMode) {
                    this.f7637p = typedArrayObtainStyledAttributes.getInt(index, this.f7637p);
                } else if (index == R$styleable.MotionTelltales_telltales_tailScale) {
                    this.f7639r = typedArrayObtainStyledAttributes.getFloat(index, this.f7639r);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f7633l.setColor(this.f7638q);
        this.f7633l.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f7636o);
        if (this.f7634m == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f7634m = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i11 = 0; i11 < 5; i11++) {
            float f11 = fArr[i11];
            for (int i12 = 0; i12 < 5; i12++) {
                float f12 = fArr[i12];
                this.f7634m.getViewVelocity(this, f12, f11, this.f7635n, this.f7637p);
                this.f7636o.mapVectors(this.f7635n);
                float f13 = width * f12;
                float f14 = height * f11;
                float[] fArr2 = this.f7635n;
                float f15 = fArr2[0];
                float f16 = this.f7639r;
                float f17 = f14 - (fArr2[1] * f16);
                this.f7636o.mapVectors(fArr2);
                canvas.drawLine(f13, f14, f13 - (f15 * f16), f17, this.f7633l);
            }
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
        postInvalidate();
    }

    public void setText(CharSequence charSequence) {
        this.f7592f = charSequence.toString();
        requestLayout();
    }
}
