package com.bytedance.sdk.component.HiB.TKC;

import com.bytedance.sdk.component.HiB.Ym;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class EjP<T> implements Ym {
    private boolean Dq;
    private T EjP;
    private int HiB;
    private Map<String, String> Jcg;
    private String Sj;
    private com.bytedance.sdk.component.HiB.Jcg TEQ;
    private T TKC;
    private int Ym;
    private String sP;
    private boolean uA;
    private int vS;

    @Override // com.bytedance.sdk.component.HiB.Ym
    public Map<String, String> EjP() {
        return this.Jcg;
    }

    @Override // com.bytedance.sdk.component.HiB.Ym
    public boolean HiB() {
        return this.Dq;
    }

    @Override // com.bytedance.sdk.component.HiB.Ym
    public int Jcg() {
        return this.Ym;
    }

    public EjP Sj(TKC tkc, T t11) {
        this.TKC = t11;
        this.Sj = tkc.TEQ();
        this.sP = tkc.Sj();
        this.HiB = tkc.sP();
        this.vS = tkc.TKC();
        this.uA = tkc.Zq();
        this.TEQ = tkc.uvD();
        this.Ym = tkc.dNu();
        return this;
    }

    public EjP Sj(TKC tkc, T t11, Map<String, String> map, boolean z10) {
        this.Jcg = map;
        this.Dq = z10;
        return Sj(tkc, t11);
    }

    @Override // com.bytedance.sdk.component.HiB.Ym
    public String Sj() {
        return this.sP;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.HiB.Ym
    public void Sj(Object obj) {
        this.EjP = this.TKC;
        this.TKC = obj;
    }

    @Override // com.bytedance.sdk.component.HiB.Ym
    public T TKC() {
        return this.EjP;
    }

    @Override // com.bytedance.sdk.component.HiB.Ym
    public T sP() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.HiB.Ym
    public boolean vS() {
        return this.uA;
    }
}
