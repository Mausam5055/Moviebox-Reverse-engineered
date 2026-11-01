package com.bytedance.sdk.openadsdk.Ym.Sj;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends com.bytedance.sdk.component.Sj.EjP<JSONObject, JSONObject> {
    private final WeakReference<Yf> Sj;

    public TKC(Yf yf2) {
        this.Sj = new WeakReference<>(yf2);
    }

    public static void Sj(dNu dnu, final Yf yf2) {
        dnu.Sj("newClickEvent", new com.bytedance.sdk.component.Sj.EjP.sP() { // from class: com.bytedance.sdk.openadsdk.Ym.Sj.TKC.1
            @Override // com.bytedance.sdk.component.Sj.EjP.sP
            public com.bytedance.sdk.component.Sj.EjP Sj() {
                return new TKC(yf2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.Sj.EjP
    public void Sj(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        Yf yf2 = this.Sj.get();
        if (yf2 == null) {
            TKC();
        } else {
            yf2.HiB(jSONObject);
        }
    }
}
