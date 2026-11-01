package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Looper;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.tn.lib.widget.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
public class YuanProgressBar extends AppCompatButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f41098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f41099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RectF f41100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RectF f41101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f41102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f41103f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f41104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f41105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f41106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f41107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f41108k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f41109l;

    public YuanProgressBar(Context context) {
        super(context);
        this.f41102e = 100;
        this.f41103f = 0;
        this.f41106i = Color.parseColor("#99ffffff");
        this.f41107j = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        this.f41108k = 0;
        this.f41109l = 0;
        init(context, null);
    }

    public YuanProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f41102e = 100;
        this.f41103f = 0;
        this.f41106i = Color.parseColor("#99ffffff");
        this.f41107j = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        this.f41108k = 0;
        this.f41109l = 0;
        init(context, attributeSet);
    }

    public YuanProgressBar(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f41102e = 100;
        this.f41103f = 0;
        this.f41106i = Color.parseColor("#99ffffff");
        this.f41107j = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        this.f41108k = 0;
        this.f41109l = 0;
        init(context, attributeSet);
    }

    private void a(Canvas canvas) {
        Paint paint;
        canvas.save();
        if (this.f41105h == 0) {
            this.f41105h = oh.h.f71021a.a(getContext(), 1.0f);
        }
        int i11 = this.f41103f;
        if (i11 != 0 && (paint = this.f41104g) != null) {
            paint.setColor(i11);
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, (getWidth() / 2.0f) - this.f41105h, this.f41104g);
        }
        this.f41098a.setColor(this.f41106i);
        if (this.f41108k <= 0) {
            this.f41108k = this.f41105h;
        }
        this.f41098a.setStrokeWidth(this.f41108k);
        canvas.drawArc(this.f41100c, -90.0f, 360.0f, false, this.f41098a);
        this.f41098a.setColor(this.f41107j);
        if (this.f41109l <= 0) {
            this.f41109l = this.f41105h * 3;
        }
        this.f41098a.setStrokeWidth(this.f41109l);
        canvas.drawArc(this.f41100c, -90.0f, (this.f41099b * 360.0f) / this.f41102e, false, this.f41098a);
        canvas.restore();
    }

    private void init(Context context, AttributeSet attributeSet) {
        setWillNotDraw(false);
        Paint paint = new Paint();
        this.f41098a = paint;
        paint.setAntiAlias(true);
        this.f41098a.setColor(Color.parseColor("#2f9ceb"));
        this.f41100c = new RectF();
        this.f41101d = new RectF();
        this.f41098a.setStyle(Paint.Style.STROKE);
        this.f41098a.setStrokeWidth(oh.h.f71021a.a(getContext(), 2.0f));
        this.f41098a.setStrokeCap(Paint.Cap.ROUND);
        setBackground(null);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Base_YuanProgressBar);
            this.f41103f = typedArrayObtainStyledAttributes.getColor(R$styleable.Base_YuanProgressBar_base_insideColor, 0);
            this.f41106i = typedArrayObtainStyledAttributes.getColor(R$styleable.Base_YuanProgressBar_base_circleColor, this.f41106i);
            this.f41107j = typedArrayObtainStyledAttributes.getColor(R$styleable.Base_YuanProgressBar_base_yuan_progressColor, this.f41107j);
            this.f41108k = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Base_YuanProgressBar_base_yuanCircleStrokeWidth, this.f41108k);
            this.f41109l = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.Base_YuanProgressBar_base_yuanProgressStrokeWidth, this.f41109l);
            Paint paint2 = new Paint();
            this.f41104g = paint2;
            paint2.setAntiAlias(true);
            typedArrayObtainStyledAttributes.recycle();
        }
        setTextSize(2, 12.0f);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        a(canvas);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        RectF rectF = this.f41100c;
        oh.h hVar = oh.h.f71021a;
        rectF.left = hVar.a(getContext(), 2.0f);
        this.f41100c.top = hVar.a(getContext(), 2.0f);
        this.f41100c.right = i11 - hVar.a(getContext(), 2.0f);
        this.f41100c.bottom = i12 - hVar.a(getContext(), 2.0f);
        this.f41101d.left = hVar.a(getContext(), 4.0f);
        this.f41101d.top = hVar.a(getContext(), 4.0f);
        this.f41101d.right = i11 - hVar.a(getContext(), 4.0f);
        this.f41101d.bottom = i12 - hVar.a(getContext(), 4.0f);
    }

    public void setColorNetDetect() {
        this.f41106i = Color.parseColor("#33000000");
        this.f41107j = Color.parseColor("#3ECAF2");
    }

    public void setProgress(float f11) {
        this.f41099b = f11;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            invalidate();
        } else {
            postInvalidate();
        }
    }
}
