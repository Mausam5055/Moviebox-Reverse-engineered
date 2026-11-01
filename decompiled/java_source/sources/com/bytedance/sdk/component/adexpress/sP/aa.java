package com.bytedance.sdk.component.adexpress.sP;

import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class aa implements TEQ.Sj {
    private AtomicBoolean EjP = new AtomicBoolean(false);
    Zq Sj;
    private uA TKC;

    @NonNull
    private List<TEQ> sP;

    public aa(List<TEQ> list, uA uAVar) {
        this.sP = list;
        this.TKC = uAVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ.Sj
    public void Sj() {
        this.TKC.EjP();
        Iterator<TEQ> it = this.sP.iterator();
        while (it.hasNext() && !it.next().Sj(this)) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ.Sj
    public void Sj(TEQ teq) {
        int iIndexOf = this.sP.indexOf(teq);
        if (iIndexOf < 0) {
            return;
        }
        do {
            iIndexOf++;
            if (iIndexOf >= this.sP.size()) {
                return;
            }
        } while (!this.sP.get(iIndexOf).Sj(this));
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ.Sj
    public void Sj(Zq zq2) {
        this.Sj = zq2;
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ.Sj
    public void Sj(boolean z10) {
        this.EjP.getAndSet(z10);
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ.Sj
    public boolean TKC() {
        return this.EjP.get();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ.Sj
    public Zq sP() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ.Sj
    public boolean sP(TEQ teq) {
        int iIndexOf = this.sP.indexOf(teq);
        return iIndexOf < this.sP.size() - 1 && iIndexOf >= 0;
    }
}
