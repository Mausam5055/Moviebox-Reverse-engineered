package com.bytedance.sdk.openadsdk.component.uA;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.core.widget.uvD;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class Dq {
    private static boolean Sj;
    private static Drawable sP;
    private TextView EjP;
    private uvD TKC;

    public static Drawable TKC() {
        return sP;
    }

    public void Sj() {
        String strDq = uA.sP().Dq();
        if (TextUtils.isEmpty(strDq)) {
            this.EjP.setVisibility(8);
        } else {
            this.EjP.setText(strDq);
        }
        sP();
        try {
            Drawable drawable = sP;
            if (drawable == null) {
                this.TKC.setVisibility(8);
                return;
            }
            this.TKC.setImageDrawable(drawable);
            if (this.EjP.getVisibility() == 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.TKC.getLayoutParams();
                marginLayoutParams.setMargins(0, 0, 0, 0);
                this.TKC.setLayoutParams(marginLayoutParams);
            }
        } catch (Throwable unused) {
            this.TKC.setVisibility(8);
        }
    }

    public void Sj(TKC tkc, sU sUVar, float f11, float f12, boolean z10) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        if (tkc != null) {
            this.TKC = tkc.getHostAppIcon();
            this.EjP = tkc.getHostAppName();
            View userInfo = tkc.getUserInfo();
            if (tkc instanceof EjP) {
                uvD uvd = this.TKC;
                if (uvd != null && (layoutParams2 = uvd.getLayoutParams()) != null) {
                    if (sUVar.liH() == 1) {
                        int iSP = FPG.sP(this.TKC.getContext(), 40.0f);
                        layoutParams2.width = iSP;
                        layoutParams2.height = iSP;
                    } else {
                        int iSP2 = FPG.sP(this.TKC.getContext(), 30.0f);
                        layoutParams2.width = iSP2;
                        layoutParams2.height = iSP2;
                    }
                    this.TKC.setLayoutParams(layoutParams2);
                }
                if (this.EjP != null) {
                    if (sUVar.liH() == 1) {
                        this.EjP.setTextSize(30.0f);
                    } else {
                        this.EjP.setTextSize(24.0f);
                    }
                }
                if (userInfo != null && (layoutParams = userInfo.getLayoutParams()) != null) {
                    if (sUVar.liH() == 1) {
                        layoutParams.height = FPG.sP(userInfo.getContext(), 107.0f);
                    } else {
                        layoutParams.height = FPG.sP(userInfo.getContext(), 60.0f);
                    }
                    userInfo.setLayoutParams(layoutParams);
                }
            }
            if (userInfo != null) {
                userInfo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.uA.Dq.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                    }
                });
            }
        }
    }

    public void sP() {
        if (Sj) {
            return;
        }
        try {
            int iUA = uA.sP().uA();
            if (iUA != 0) {
                sP = dNu.Sj().getResources().getDrawable(iUA);
            }
            Sj = true;
        } catch (Throwable unused) {
            Sj = true;
        }
    }
}
