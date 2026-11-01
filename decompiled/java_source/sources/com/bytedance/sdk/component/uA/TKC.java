package com.bytedance.sdk.component.uA;

import android.content.Context;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TKC implements View.OnTouchListener {
    private ViewConfiguration Sj;
    private int sP = -1;

    abstract void Sj(View.OnTouchListener onTouchListener);

    boolean Sj(float f11, float f12, float f13, float f14, Context context) {
        if (this.Sj == null) {
            this.Sj = ViewConfiguration.get(context);
        }
        if (this.sP == -1) {
            this.sP = this.Sj.getScaledTouchSlop();
        }
        return Math.abs(f11 - f13) <= ((float) this.sP) && Math.abs(f12 - f14) <= ((float) this.sP);
    }
}
