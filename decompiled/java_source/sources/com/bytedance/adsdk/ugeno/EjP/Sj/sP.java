package com.bytedance.adsdk.ugeno.EjP.Sj;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements TKC {
    private List<EjP> Sj = new CopyOnWriteArrayList();

    @Override // com.bytedance.adsdk.ugeno.EjP.Sj.TKC
    public void Sj(EjP ejP) {
        this.Sj.add(ejP);
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.Sj.TKC
    public void Sj(String str) {
        if (this.Sj.isEmpty()) {
            return;
        }
        Iterator<EjP> it = this.Sj.iterator();
        while (it.hasNext()) {
            it.next().Sj(str);
        }
    }
}
