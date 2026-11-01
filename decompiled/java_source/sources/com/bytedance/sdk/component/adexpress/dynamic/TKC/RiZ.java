package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.vS.wE;
import com.bytedance.sdk.component.utils.ib;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class RiZ implements Jcg<wE> {
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg EjP;
    private String HiB;
    private wE Sj;
    private com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB TKC;
    private Context sP;
    private com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ vS;

    public RiZ(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg, String str, com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ teq) {
        this.sP = context;
        this.TKC = hiB;
        this.EjP = jcg;
        this.HiB = str;
        this.vS = teq;
        HiB();
    }

    private void HiB() {
        int iNdK = this.EjP.ndK();
        final com.bytedance.sdk.component.adexpress.dynamic.vS.Sj dynamicClickListener = this.TKC.getDynamicClickListener();
        try {
            new JSONObject().put("convertActionType", 2);
        } catch (Throwable unused) {
        }
        if ("18".equals(this.HiB)) {
            Context context = this.sP;
            wE wEVar = new wE(context, com.bytedance.sdk.component.adexpress.TKC.Sj.uA(context), this.vS);
            this.Sj = wEVar;
            if (wEVar.getWriggleLayout() != null) {
                this.Sj.getWriggleLayout().setOnClickListener((View.OnClickListener) dynamicClickListener);
            }
            if (this.Sj.getTopTextView() != null) {
                if (TextUtils.isEmpty(this.EjP.Uc())) {
                    this.Sj.getTopTextView().setText(ib.sP(this.sP, "tt_splash_wriggle_top_text_style_17"));
                } else {
                    this.Sj.getTopTextView().setText(this.EjP.Uc());
                }
            }
        } else {
            Context context2 = this.sP;
            this.Sj = new wE(context2, com.bytedance.sdk.component.adexpress.TKC.Sj.uA(context2), this.vS);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        this.Sj.setTranslationY(-((int) com.bytedance.sdk.component.adexpress.EjP.Jcg.Sj(this.sP, iNdK)));
        this.Sj.setLayoutParams(layoutParams);
        this.Sj.setShakeText(this.EjP.sdp());
        this.Sj.setClipChildren(false);
        final View wriggleProgressIv = this.Sj.getWriggleProgressIv();
        this.Sj.setOnShakeViewListener(new wE.Sj() { // from class: com.bytedance.sdk.component.adexpress.dynamic.TKC.RiZ.1
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public wE TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void Sj() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.TKC.Jcg
    public void sP() {
        this.Sj.clearAnimation();
    }
}
