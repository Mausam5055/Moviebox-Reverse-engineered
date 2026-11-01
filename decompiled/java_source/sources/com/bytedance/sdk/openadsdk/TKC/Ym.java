package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes2.dex */
public class Ym extends View {
    private final int Sj;

    public Ym(Context context) {
        this(context, Color.parseColor("#25000000"));
    }

    public Ym(Context context, int i11) {
        super(context);
        setBackgroundColor(i11);
        this.Sj = FPG.sP(getContext(), 0.66f);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        setMeasuredDimension(getMeasuredWidth(), this.Sj);
    }
}
