package com.bytedance.sdk.openadsdk.core.TEQ.sP;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ib;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends com.bytedance.adsdk.ugeno.uA.vS.sP {
    public Sj(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.uA.vS.sP
    public void Jcg(String str) {
        super.Jcg(str);
        if (TextUtils.isEmpty(str) || TextUtils.equals("null", str)) {
            return;
        }
        try {
            String str2 = String.format(ib.Sj(this.sP, "tt_comment_num"), Integer.valueOf(Integer.parseInt(str)));
            ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setText("(" + str2 + ")");
        } catch (Exception unused) {
        }
    }
}
