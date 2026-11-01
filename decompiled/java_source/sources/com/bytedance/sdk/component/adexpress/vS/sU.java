package com.bytedance.sdk.component.adexpress.vS;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sU extends RiZ {
    private TextView Sj;

    public sU(@NonNull Context context, View view, int i11, int i12, int i13, JSONObject jSONObject) {
        super(context, view, i11, i12, i13, jSONObject);
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.RiZ
    protected void Sj(Context context, View view) {
        addView(view);
        this.Sj = (TextView) findViewById(2097610747);
    }

    @Override // com.bytedance.sdk.component.adexpress.vS.RiZ
    public void setShakeText(String str) {
        if (this.Sj == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.Sj.setText(str);
            return;
        }
        try {
            this.Sj.setText(com.bytedance.sdk.component.utils.ib.sP(this.Sj.getContext(), "tt_splash_default_click_shake"));
        } catch (Exception e11) {
            e11.getMessage();
        }
    }
}
