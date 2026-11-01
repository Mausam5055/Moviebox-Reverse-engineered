package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends zR {
    private sU Sj;

    public vS(Context context, int i11, int i12, int i13, JSONObject jSONObject) {
        super(context);
        Sj(context, i11, i12, i13, jSONObject);
    }

    private void Sj(Context context, int i11, int i12, int i13, JSONObject jSONObject) {
        sU sUVar = new sU(context, com.bytedance.sdk.component.adexpress.TKC.Sj.TKC(context), i11, i12, i13, jSONObject);
        this.Sj = sUVar;
        addView(sUVar);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        this.Sj.setLayoutParams(layoutParams);
    }

    public sU getShakeView() {
        return this.Sj;
    }

    public void setShakeText(String str) {
        if (this.Sj == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            this.Sj.setShakeText("");
        } else {
            this.Sj.setShakeText(str);
        }
    }
}
