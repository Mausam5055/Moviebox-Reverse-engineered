package com.cloud.tmc.miniapp.widget.pulldownrefresh.footer;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO;
import z0.b;

/* JADX INFO: loaded from: classes3.dex */
public class OooO00o extends com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0 implements OooO {
    public float OooO;
    public boolean OooO0Oo;
    public Paint OooO0o;
    public boolean OooO0o0;
    public int OooO0oO;
    public int OooO0oo;
    public long OooOO0;
    public boolean OooOO0O;
    public TimeInterpolator OooOO0o;

    public OooO00o(Context context, @Nullable AttributeSet attributeSet) {
        super(context, null, 0);
        this.OooO0oO = -1118482;
        this.OooO0oo = -1615546;
        this.OooOO0 = 0L;
        this.OooOO0O = false;
        this.OooOO0o = new AccelerateDecelerateInterpolator();
        setMinimumHeight(com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(60.0f));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, R.styleable.MiniBallPulseFooter);
        Paint paint = new Paint();
        this.OooO0o = paint;
        paint.setColor(-1);
        this.OooO0o.setStyle(Paint.Style.FILL);
        this.OooO0o.setAntiAlias(true);
        this.OooO0O0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0Oo;
        this.OooO0O0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oo[typedArrayObtainStyledAttributes.getInt(R.styleable.MiniBallPulseFooter_srlClassicsSpinnerStyle, 0)];
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniBallPulseFooter_srlNormalColor)) {
            OooO0O0(typedArrayObtainStyledAttributes.getColor(R.styleable.MiniBallPulseFooter_srlNormalColor, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniBallPulseFooter_srlAnimatingColor)) {
            OooO00o(typedArrayObtainStyledAttributes.getColor(R.styleable.MiniBallPulseFooter_srlAnimatingColor, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.OooO = com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(4.0f);
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public int OooO00o(@NonNull OooOOO oooOOO, boolean z10) {
        this.OooOO0O = false;
        this.OooOO0 = 0L;
        this.OooO0o.setColor(this.OooO0oO);
        return 0;
    }

    public OooO00o OooO00o(int i11) {
        this.OooO0oo = i11;
        this.OooO0o0 = true;
        if (this.OooOO0O) {
            this.OooO0o.setColor(i11);
        }
        return this;
    }

    public OooO00o OooO0O0(int i11) {
        this.OooO0oO = i11;
        this.OooO0Oo = true;
        if (!this.OooOO0O) {
            this.OooO0o.setColor(i11);
        }
        return this;
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public void OooO0O0(@NonNull OooOOO oooOOO, int i11, int i12) {
        if (this.OooOO0O) {
            return;
        }
        invalidate();
        this.OooOO0O = true;
        this.OooOO0 = System.currentTimeMillis();
        this.OooO0o.setColor(this.OooO0oo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float fMin = Math.min(width, height);
        float f11 = this.OooO;
        float f12 = (fMin - (f11 * 2.0f)) / 6.0f;
        float f13 = f12 * 2.0f;
        float f14 = (width / 2.0f) - (f11 + f13);
        float f15 = height / 2.0f;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i11 = 0;
        while (i11 < 3) {
            int i12 = i11 + 1;
            long j11 = (jCurrentTimeMillis - this.OooOO0) - ((long) (i12 * 120));
            float interpolation = this.OooOO0o.getInterpolation(j11 > 0 ? (j11 % 750) / 750.0f : 0.0f);
            canvas.save();
            float f16 = i11;
            canvas.translate((this.OooO * f16) + (f13 * f16) + f14, f15);
            if (interpolation < 0.5d) {
                float f17 = 1.0f - ((interpolation * 2.0f) * 0.7f);
                canvas.scale(f17, f17);
            } else {
                float f18 = ((interpolation * 2.0f) * 0.7f) - 0.4f;
                canvas.scale(f18, f18);
            }
            canvas.drawCircle(0.0f, 0.0f, f12, this.OooO0o);
            canvas.restore();
            i11 = i12;
        }
        super.dispatchDraw(canvas);
        if (this.OooOO0O) {
            invalidate();
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    @Deprecated
    public void setPrimaryColors(int... iArr) {
        if (!this.OooO0o0 && iArr.length > 1) {
            int i11 = iArr[0];
            this.OooO0oo = i11;
            this.OooO0o0 = true;
            if (this.OooOO0O) {
                this.OooO0o.setColor(i11);
            }
            this.OooO0o0 = false;
        }
        if (this.OooO0Oo) {
            return;
        }
        if (iArr.length > 1) {
            OooO0O0(iArr[1]);
        } else if (iArr.length > 0) {
            OooO0O0(b.k(-1711276033, iArr[0]));
        }
        this.OooO0Oo = false;
    }
}
