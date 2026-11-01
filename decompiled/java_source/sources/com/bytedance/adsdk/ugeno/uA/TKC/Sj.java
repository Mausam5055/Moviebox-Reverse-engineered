package com.bytedance.adsdk.ugeno.uA.TKC;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.uA.EjP.TKC;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj extends TKC {
    private int SP;

    public Sj(Context context) {
        super(context);
        this.SP = ViewCompat.MEASURED_STATE_MASK;
    }

    private String uA(String str) {
        String strJcg = Jcg(str);
        return TextUtils.isEmpty(strJcg) ? "" : "local://".concat(String.valueOf(strJcg));
    }

    public abstract String Jcg(String str);

    @Override // com.bytedance.adsdk.ugeno.uA.EjP.TKC, com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        str.hashCode();
        if (str.equals("textColor")) {
            this.SP = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.uA.EjP.TKC, com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        ((TKC) this).Sj = uA(((TKC) this).Sj);
        super.sP();
        ((com.bytedance.adsdk.ugeno.uA.EjP.Sj) this.HiB).setColorFilter(this.SP);
        ((com.bytedance.adsdk.ugeno.uA.EjP.Sj) this.HiB).setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
}
