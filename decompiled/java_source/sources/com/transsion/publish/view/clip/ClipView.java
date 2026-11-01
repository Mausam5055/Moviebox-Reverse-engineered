package com.transsion.publish.view.clip;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.b;
import com.transsion.publish.R$color;

/* JADX INFO: loaded from: classes6.dex */
public class ClipView extends View {
    public static final int BORDERDISTANCE = 0;
    public static final int CIRCLE_ZOOM = 3;
    public static final int CIRCULAR = 0;
    public static final int RECTANGULAR = 1;
    public static int TYPE_START = 0;
    public static int mHorizontalPadding = 16;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f50728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f50729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f50730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f50731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f50732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f50733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f50734g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f50735h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f50736i;
    public int innerCircle;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f50737j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f50738k;

    public ClipView(Context context) {
        this(context, null);
        this.f50729b = context;
    }

    public ClipView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.f50729b = context;
    }

    public ClipView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.innerCircle = getWidth() / 3;
        this.f50736i = true;
        this.f50737j = true;
        this.f50738k = true;
        this.f50728a = new Paint();
        this.f50729b = context;
    }

    public static int dip2px(Context context, float f11) {
        return (int) ((f11 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public int cropHeight() {
        return this.f50731d;
    }

    public int cropWidth() {
        return this.f50730c;
    }

    public int getInnerCircle() {
        return this.innerCircle;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i11;
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int i12 = this.f50730c;
        if (i12 <= 0 || (i11 = this.f50731d) <= 0 || width <= 0 || height <= 0) {
            if (TYPE_START == 0) {
                this.innerCircle = width / 3;
                this.f50728a.setColor(0);
                this.f50728a.setDither(true);
                this.f50728a.setAntiAlias(true);
                this.f50728a.setStyle(Paint.Style.STROKE);
                int i13 = width / 2;
                float f11 = i13;
                int i14 = height / 2;
                float f12 = i14;
                canvas.drawCircle(f11, f12, i13 - mHorizontalPadding, this.f50728a);
                this.f50728a.setColor(b.getColor(getContext(), R$color.cl31_50_p));
                this.f50728a.setStrokeWidth(height);
                canvas.drawCircle(f11, f12, (i13 - mHorizontalPadding) + i14, this.f50728a);
                return;
            }
            this.f50728a.setColor(b.getColor(getContext(), R$color.cl31_50_p));
            float f13 = width;
            float f14 = (height - width) / 2;
            canvas.drawRect(0.0f, 0.0f, f13, f14, this.f50728a);
            float f15 = (height + width) / 2;
            canvas.drawRect(0.0f, f15, f13, height, this.f50728a);
            canvas.drawRect(0.0f, f14, 0.0f, f15, this.f50728a);
            canvas.drawRect(width, f14, f13, f15, this.f50728a);
            this.f50728a.setColor(-1);
            this.f50728a.setStrokeWidth(2.0f);
            float f16 = width;
            canvas.drawLine(0.0f, f14, f16, f14, this.f50728a);
            canvas.drawLine(0.0f, f15, f16, f15, this.f50728a);
            canvas.drawLine(0.0f, f14, 0.0f, f15, this.f50728a);
            canvas.drawLine(f16, f14, f16, f15, this.f50728a);
            return;
        }
        if (this.f50736i) {
            int[] iArrA = this.f50738k ? mp.b.a(this.f50729b, i12, i11, width, height) : mp.b.b(this.f50729b, i12, i11, width, height, 1.0f);
            this.f50730c = iArrA[0];
            this.f50731d = iArrA[1];
        }
        int i15 = (width - this.f50730c) / 2;
        int i16 = (height - this.f50731d) / 2;
        this.f50728a.setColor(b.getColor(getContext(), R$color.cl31_50_p));
        float f17 = width;
        float f18 = i16;
        canvas.drawRect(0.0f, 0.0f, f17, f18, this.f50728a);
        canvas.drawRect(0.0f, this.f50731d + i16, f17, height, this.f50728a);
        canvas.drawRect(0.0f, f18, i15, this.f50731d + i16, this.f50728a);
        canvas.drawRect(this.f50730c + i15, f18, f17, this.f50731d + i16, this.f50728a);
        this.f50728a.setColor(b.getColor(getContext(), com.tn.lib.widget.R$color.white));
        this.f50728a.setStrokeWidth(1);
        this.f50732e = i15;
        this.f50733f = i16;
        int i17 = this.f50730c + i15;
        this.f50734g = i17;
        if (this.f50738k) {
            this.f50735h = this.f50731d + i16;
        } else {
            this.f50735h = this.f50731d - (i16 != 0 ? i16 : 1);
        }
        if (this.f50737j) {
            canvas.drawLine(i15, i16, i17, i16, this.f50728a);
            float f19 = this.f50732e;
            int i18 = this.f50735h;
            canvas.drawLine(f19, i18, this.f50734g, i18, this.f50728a);
            int i19 = this.f50732e;
            canvas.drawLine(i19, this.f50733f, i19, this.f50735h, this.f50728a);
            int i20 = this.f50734g;
            canvas.drawLine(i20, this.f50733f, i20, this.f50735h, this.f50728a);
        }
    }

    public Rect rect() {
        return new Rect(this.f50732e, this.f50733f, this.f50734g, this.f50735h);
    }

    public void setFullScreen(boolean z10) {
        this.f50738k = z10;
    }

    public void setNeedDivider(boolean z10) {
        this.f50737j = z10;
    }

    public void setSizeNeedChange(boolean z10) {
        this.f50736i = z10;
        invalidate();
    }

    public void setStart(int i11) {
        TYPE_START = i11;
    }

    public void setStartWH(int i11, int i12) {
        this.f50730c = i11;
        this.f50731d = i12;
    }
}
