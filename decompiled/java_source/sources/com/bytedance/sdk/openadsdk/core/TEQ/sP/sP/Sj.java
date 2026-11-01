package com.bytedance.sdk.openadsdk.core.TEQ.sP.sP;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends com.bytedance.adsdk.ugeno.uA.sP.Sj {
    private final com.bytedance.adsdk.ugeno.uA.sP.Sj Sj;
    private final com.bytedance.adsdk.ugeno.uA.sP.Sj sP;

    public Sj(Context context) {
        super(context);
        com.bytedance.adsdk.ugeno.uA.sP.Sj sj2 = new com.bytedance.adsdk.ugeno.uA.sP.Sj(context);
        this.Sj = sj2;
        addView(sj2, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.adsdk.ugeno.uA.sP.Sj sj3 = new com.bytedance.adsdk.ugeno.uA.sP.Sj(context);
        this.sP = sj3;
        sj3.setBackgroundColor(0);
        addView(sj3, new FrameLayout.LayoutParams(-1, -1));
    }

    public com.bytedance.adsdk.ugeno.uA.sP.Sj getVideoView() {
        return this.Sj;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.sP.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.sP.setOnTouchListener(onTouchListener);
    }
}
