package com.bytedance.sdk.openadsdk.kF.sP;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends sP {
    private int EjP;

    public TKC(Integer num, View view, sU sUVar, HiB.Sj sj2) {
        super(num, view, sUVar, 1000, sj2);
        this.EjP = -1;
        sP(view);
    }

    private void sP(View view) {
        if (view != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width <= 0 || height <= 0) {
                return;
            }
            this.EjP = width * height >= 242500 ? 1 : 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    protected void EjP() {
        super.EjP();
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    protected boolean TKC() {
        WeakReference<View> weakReference = this.Sj;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        View view = this.Sj.get();
        if (this.EjP == -1) {
            sP(view);
        }
        return vS.Sj(view, this.EjP == 1, this.sP.DKj());
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    protected void sP(int i11) {
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    public int vS() {
        return 100;
    }
}
