package com.bytedance.adsdk.sP.TKC.Sj;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class sef<V, O> implements Fmk<V, O> {
    final List<com.bytedance.adsdk.sP.Jcg.Sj<V>> Sj;

    sef(List<com.bytedance.adsdk.sP.Jcg.Sj<V>> list) {
        this.Sj = list;
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public List<com.bytedance.adsdk.sP.Jcg.Sj<V>> TKC() {
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.sP.TKC.Sj.Fmk
    public boolean sP() {
        return this.Sj.isEmpty() || (this.Sj.size() == 1 && this.Sj.get(0).HiB());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (!this.Sj.isEmpty()) {
            sb2.append("values=");
            sb2.append(Arrays.toString(this.Sj.toArray()));
        }
        return sb2.toString();
    }
}
