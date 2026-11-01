package com.bytedance.sdk.component.HiB.EjP.sP;

import com.bytedance.sdk.component.HiB.RiZ;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements vS {
    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public String Sj() {
        return "check_duplicate";
    }

    @Override // com.bytedance.sdk.component.HiB.EjP.sP.vS
    public boolean Sj(com.bytedance.sdk.component.HiB.EjP.TKC.TKC tkc, RiZ riZ, com.bytedance.sdk.component.HiB.EjP.TKC.Sj sj2) {
        List<com.bytedance.sdk.component.HiB.EjP.TKC.TKC> copyOnWriteArrayList;
        String strSU = tkc.sU();
        Map<String, List<com.bytedance.sdk.component.HiB.EjP.TKC.TKC>> mapJcg = tkc.dNu().Jcg();
        tkc.aa();
        tkc.Sj();
        synchronized (mapJcg) {
            try {
                copyOnWriteArrayList = mapJcg.get(strSU);
                if (copyOnWriteArrayList == null) {
                    copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                    mapJcg.put(strSU, copyOnWriteArrayList);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (copyOnWriteArrayList) {
            copyOnWriteArrayList.add(tkc);
            if (copyOnWriteArrayList.size() <= 1) {
                return true;
            }
            tkc.aa();
            tkc.Sj();
            return false;
        }
    }
}
