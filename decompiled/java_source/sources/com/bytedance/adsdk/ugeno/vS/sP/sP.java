package com.bytedance.adsdk.ugeno.vS.sP;

import android.view.View;
import com.bytedance.adsdk.ugeno.Dq.TKC;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements TKC.HiB {
    @Override // com.bytedance.adsdk.ugeno.Dq.TKC.HiB
    public void Sj(View view, float f11) {
        if (f11 < -1.0f || f11 > 1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        view.setAlpha(1.0f);
        view.setTranslationX(view.getWidth() * (-f11));
        view.setTranslationY(f11 * view.getHeight());
    }
}
