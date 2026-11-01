package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends com.bytedance.sdk.openadsdk.core.HiB.Dq {
    private int EjP;
    private Paint Sj;
    private boolean TKC;
    private float sP;

    public Sj(Context context) {
        super(context);
        Sj();
    }

    private float Sj(float f11, String str) {
        this.Sj.setTextSize(f11);
        return this.Sj.measureText(str);
    }

    private void Sj() {
        this.sP = FPG.Sj(getContext(), 8.0f);
        this.Sj = new Paint();
    }

    private void Sj(String str, int i11) {
        if (!this.TKC && i11 > 0) {
            float textSize = getTextSize();
            this.Sj.set(getPaint());
            int paddingLeft = (i11 - getPaddingLeft()) - getPaddingRight();
            float fSj = Sj(textSize, str);
            while (fSj > paddingLeft) {
                textSize -= 1.0f;
                this.Sj.setTextSize(textSize);
                if (textSize <= this.sP) {
                    break;
                } else {
                    fSj = Sj(textSize, str);
                }
            }
            setTextSize(0, textSize);
            this.TKC = true;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Sj(getText().toString(), getWidth());
    }

    @Override // com.bytedance.sdk.openadsdk.core.HiB.Dq, android.widget.TextView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        this.EjP = getMeasuredHeight();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, this.EjP);
        } else {
            layoutParams.height = this.EjP;
        }
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.HiB.Dq, android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        int i11 = this.EjP;
        if (i11 == 0 || layoutParams == null) {
            return;
        }
        layoutParams.height = i11;
    }

    public void setMinTextSize(float f11) {
        if (f11 <= 0.0f) {
            return;
        }
        this.sP = f11;
    }
}
