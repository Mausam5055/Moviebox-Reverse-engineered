package com.bytedance.sdk.openadsdk.adapter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.HiB.EjP;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class NiceImageView extends EjP {
    private int Dq;
    private int EjP;
    private int Fmk;
    private int HiB;
    private int Jcg;
    private final float[] RiZ;
    private final Context Sj;
    private int TEQ;
    private boolean TKC;
    private final float[] TzV;
    private int Ym;
    private int Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20981aa;
    private float dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private final RectF f20982dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private final Path f20983ib;
    private Path kF;
    private boolean sP;
    private RectF sU;
    private final Xfermode sef;
    private int uA;
    private int uvD;
    private int vS;
    private final Paint zR;

    public NiceImageView(Context context) {
        this(context, null);
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.HiB = -1;
        this.Jcg = -1;
        this.Sj = context;
        this.Dq = FPG.sP(context, 10.0f);
        this.TzV = new float[8];
        this.RiZ = new float[8];
        this.f20982dx = new RectF();
        this.sU = new RectF();
        this.zR = new Paint();
        this.f20983ib = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.sef = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.sef = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.kF = new Path();
        }
        TKC();
        EjP();
    }

    private void EjP() {
        if (this.sP) {
            return;
        }
        this.vS = 0;
    }

    private void Sj() {
        if (this.sP) {
            return;
        }
        RectF rectF = this.f20982dx;
        int i11 = this.EjP;
        rectF.set(i11 / 2.0f, i11 / 2.0f, this.Zq - (i11 / 2.0f), this.uvD - (i11 / 2.0f));
    }

    private void Sj(int i11, int i12) {
        this.f20983ib.reset();
        this.zR.setStrokeWidth(i11);
        this.zR.setColor(i12);
        this.zR.setStyle(Paint.Style.STROKE);
    }

    private void Sj(Canvas canvas) {
        if (!this.sP) {
            int i11 = this.EjP;
            if (i11 > 0) {
                Sj(canvas, i11, this.HiB, this.f20982dx, this.TzV);
                return;
            }
            return;
        }
        int i12 = this.EjP;
        if (i12 > 0) {
            Sj(canvas, i12, this.HiB, this.dNu - (i12 / 2.0f));
        }
        int i13 = this.vS;
        if (i13 > 0) {
            Sj(canvas, i13, this.Jcg, (this.dNu - this.EjP) - (i13 / 2.0f));
        }
    }

    private void Sj(Canvas canvas, int i11, int i12, float f11) {
        Sj(i11, i12);
        this.f20983ib.addCircle(this.Zq / 2.0f, this.uvD / 2.0f, f11, Path.Direction.CCW);
        canvas.drawPath(this.f20983ib, this.zR);
    }

    private void Sj(Canvas canvas, int i11, int i12, RectF rectF, float[] fArr) {
        Sj(i11, i12);
        this.f20983ib.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.f20983ib, this.zR);
    }

    private void Sj(boolean z10) {
        if (z10) {
            this.Dq = 0;
        }
        TKC();
        Sj();
        invalidate();
    }

    private void TKC() {
        if (this.sP) {
            return;
        }
        int i11 = 0;
        if (this.Dq <= 0) {
            float[] fArr = this.TzV;
            int i12 = this.uA;
            float f11 = i12;
            fArr[1] = f11;
            fArr[0] = f11;
            int i13 = this.TEQ;
            float f12 = i13;
            fArr[3] = f12;
            fArr[2] = f12;
            int i14 = this.f20981aa;
            float f13 = i14;
            fArr[5] = f13;
            fArr[4] = f13;
            int i15 = this.Ym;
            float f14 = i15;
            fArr[7] = f14;
            fArr[6] = f14;
            float[] fArr2 = this.RiZ;
            int i16 = this.EjP;
            float f15 = i12 - (i16 / 2.0f);
            fArr2[1] = f15;
            fArr2[0] = f15;
            float f16 = i13 - (i16 / 2.0f);
            fArr2[3] = f16;
            fArr2[2] = f16;
            float f17 = i14 - (i16 / 2.0f);
            fArr2[5] = f17;
            fArr2[4] = f17;
            float f18 = i15 - (i16 / 2.0f);
            fArr2[7] = f18;
            fArr2[6] = f18;
            return;
        }
        while (true) {
            float[] fArr3 = this.TzV;
            if (i11 >= fArr3.length) {
                return;
            }
            int i17 = this.Dq;
            fArr3[i11] = i17;
            this.RiZ[i11] = i17 - (this.EjP / 2.0f);
            i11++;
        }
    }

    private void sP() {
        if (!this.sP) {
            this.sU.set(0.0f, 0.0f, this.Zq, this.uvD);
            if (this.TKC) {
                this.sU = this.f20982dx;
                return;
            }
            return;
        }
        float fMin = Math.min(this.Zq, this.uvD) / 2.0f;
        this.dNu = fMin;
        RectF rectF = this.sU;
        int i11 = this.Zq;
        int i12 = this.uvD;
        rectF.set((i11 / 2.0f) - fMin, (i12 / 2.0f) - fMin, (i11 / 2.0f) + fMin, (i12 / 2.0f) + fMin);
    }

    public void isCircle(boolean z10) {
        this.sP = z10;
        EjP();
        sP();
        invalidate();
    }

    public void isCoverSrc(boolean z10) {
        this.TKC = z10;
        sP();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.sU, null, 31);
        if (!this.TKC) {
            int i11 = this.Zq;
            int i12 = this.EjP;
            int i13 = this.vS;
            int i14 = this.uvD;
            canvas.scale((((i11 - (i12 * 2)) - (i13 * 2)) * 1.0f) / i11, (((i14 - (i12 * 2)) - (i13 * 2)) * 1.0f) / i14, i11 / 2.0f, i14 / 2.0f);
        }
        super.onDraw(canvas);
        this.zR.reset();
        this.f20983ib.reset();
        if (this.sP) {
            this.f20983ib.addCircle(this.Zq / 2.0f, this.uvD / 2.0f, this.dNu, Path.Direction.CCW);
        } else {
            this.f20983ib.addRoundRect(this.sU, this.RiZ, Path.Direction.CCW);
        }
        this.zR.setAntiAlias(true);
        this.zR.setStyle(Paint.Style.FILL);
        this.zR.setXfermode(this.sef);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.f20983ib, this.zR);
        } else {
            this.kF.addRect(this.sU, Path.Direction.CCW);
            this.kF.op(this.f20983ib, Path.Op.DIFFERENCE);
            canvas.drawPath(this.kF, this.zR);
        }
        this.zR.setXfermode(null);
        int i15 = this.Fmk;
        if (i15 != 0) {
            this.zR.setColor(i15);
            canvas.drawPath(this.f20983ib, this.zR);
        }
        canvas.restore();
        Sj(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.Zq = i11;
        this.uvD = i12;
        Sj();
        sP();
    }

    public void setBorderColor(int i11) {
        this.HiB = i11;
        invalidate();
    }

    public void setBorderWidth(int i11) {
        this.EjP = FPG.sP(this.Sj, i11);
        Sj(false);
    }

    public void setCornerBottomLeftRadius(int i11) {
        this.Ym = FPG.sP(this.Sj, i11);
        Sj(true);
    }

    public void setCornerBottomRightRadius(int i11) {
        this.f20981aa = FPG.sP(this.Sj, i11);
        Sj(true);
    }

    public void setCornerRadius(int i11) {
        this.Dq = FPG.sP(this.Sj, i11);
        Sj(false);
    }

    public void setCornerTopLeftRadius(int i11) {
        this.uA = FPG.sP(this.Sj, i11);
        Sj(true);
    }

    public void setCornerTopRightRadius(int i11) {
        this.TEQ = FPG.sP(this.Sj, i11);
        Sj(true);
    }

    public void setInnerBorderColor(int i11) {
        this.Jcg = i11;
        invalidate();
    }

    public void setInnerBorderWidth(int i11) {
        this.vS = FPG.sP(this.Sj, i11);
        EjP();
        invalidate();
    }

    public void setMaskColor(int i11) {
        this.Fmk = i11;
        invalidate();
    }
}
