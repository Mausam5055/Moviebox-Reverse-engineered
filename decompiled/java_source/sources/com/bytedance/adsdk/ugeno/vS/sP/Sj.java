package com.bytedance.adsdk.ugeno.vS.sP;

import android.view.View;
import com.bytedance.adsdk.ugeno.Dq.TKC;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements TKC.HiB {
    final float Sj = 0.8f;
    final float sP = 0.5f;

    @Override // com.bytedance.adsdk.ugeno.Dq.TKC.HiB
    public void Sj(View view, float f11) {
        float f12 = ((f11 < 0.0f ? 0.19999999f : -0.19999999f) * f11) + 1.0f;
        float f13 = (f11 * (f11 < 0.0f ? 0.5f : -0.5f)) + 1.0f;
        if (f11 < 0.0f) {
            view.setPivotX(view.getWidth());
            view.setPivotY(view.getHeight() / 2);
        } else {
            view.setPivotX(0.0f);
            view.setPivotY(view.getHeight() / 2);
        }
        view.setScaleX(f12);
        view.setScaleY(f12);
        view.setAlpha(Math.abs(f13));
    }
}
