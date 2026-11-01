package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class vS extends com.bytedance.sdk.openadsdk.core.HiB.EjP {
    private float Sj;
    private int sP;

    public vS(Context context) {
        super(context);
        this.Sj = 2.25f;
        this.sP = 12;
        Sj();
    }

    public vS(Context context, int i11, float f11) {
        super(context);
        this.Sj = f11;
        this.sP = i11;
        Sj();
    }

    public static com.bytedance.sdk.openadsdk.core.HiB.EjP Sj(Context context) {
        return new vS(context);
    }

    private void Sj() {
        setBackground(EjP.Sj());
        setImageResource(ib.EjP(getContext(), "tt_close_btn"));
        int iSP = FPG.sP(getContext(), this.Sj);
        setPadding(iSP, iSP, iSP, iSP);
        setScaleType(ImageView.ScaleType.FIT_XY);
    }

    public static com.bytedance.sdk.openadsdk.core.HiB.EjP sP(Context context) {
        return new vS(context, 28, 5.0f);
    }

    @Override // com.bytedance.sdk.openadsdk.core.HiB.EjP, android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams != null) {
            int iSP = FPG.sP(getContext(), this.sP);
            layoutParams.width = iSP;
            layoutParams.height = iSP;
        }
        super.setLayoutParams(layoutParams);
    }
}
