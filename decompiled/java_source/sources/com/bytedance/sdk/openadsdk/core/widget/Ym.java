package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class Ym extends com.bytedance.sdk.openadsdk.core.HiB.TKC {
    public float Sj;

    public Ym(Context context) {
        this(context, null);
    }

    public Ym(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Ym(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.Sj = 0.0f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.HiB.TKC, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        int i13 = getLayoutParams().width;
        int i14 = getLayoutParams().height;
        float f11 = this.Sj;
        if (f11 > 0.0f) {
            if (i13 == -2) {
                size = (int) (size2 * f11);
                mode = 1073741824;
            } else if (i14 == -2) {
                size2 = (int) (size / f11);
                mode2 = 1073741824;
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2));
    }

    public void setRatio(float f11) {
        this.Sj = f11;
    }
}
