package com.bytedance.sdk.component.HiB.Sj;

import com.bytedance.sdk.component.HiB.aa;
import com.bytedance.sdk.component.HiB.uA;
import com.bytedance.sdk.component.utils.uvD;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public static aa Sj() {
        return new aa() { // from class: com.bytedance.sdk.component.HiB.Sj.sP.1
            private WeakHashMap<String, String> Sj = new WeakHashMap<>();

            private String Sj(String str) {
                String str2 = this.Sj.get(str);
                if (str2 != null) {
                    return str2;
                }
                String strSj = uvD.Sj(str);
                this.Sj.put(str, strSj);
                return strSj;
            }

            @Override // com.bytedance.sdk.component.HiB.aa
            public String Sj(uA uAVar) {
                return Sj(uAVar.Sj() + "#width=" + uAVar.sP() + "#height=" + uAVar.TKC() + "#scaletype=" + uAVar.EjP() + "#bitmapConfig=" + uAVar.HiB());
            }

            @Override // com.bytedance.sdk.component.HiB.aa
            public String sP(uA uAVar) {
                return Sj(uAVar.Sj());
            }
        };
    }
}
