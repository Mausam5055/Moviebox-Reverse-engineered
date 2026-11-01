package com.bytedance.sdk.component.HiB.HiB;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends Sj {
    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public String Sj() {
        return "check_duplicate";
    }

    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        List<com.bytedance.sdk.component.HiB.TKC.TKC> linkedList;
        String strZR = tkc.zR();
        Map<String, List<com.bytedance.sdk.component.HiB.TKC.TKC>> mapDq = tkc.TzV().Dq();
        synchronized (mapDq) {
            try {
                linkedList = mapDq.get(strZR);
                if (linkedList == null) {
                    linkedList = new LinkedList<>();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (linkedList) {
            try {
                linkedList.add(tkc);
                mapDq.put(strZR, linkedList);
                if (linkedList.size() <= 1) {
                    tkc.Sj(new EjP());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
