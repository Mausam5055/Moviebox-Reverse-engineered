package com.bytedance.sdk.component.HiB.sP;

import com.bytedance.sdk.component.HiB.Jcg;
import com.bytedance.sdk.component.HiB.vS;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class TKC<T> implements vS {
    private String EjP;
    private Jcg HiB;
    Map<String, String> Sj;
    private T TKC;
    private int sP;

    public TKC(int i11, T t11, String str) {
        this.sP = i11;
        this.TKC = t11;
        this.EjP = str;
    }

    public TKC(int i11, T t11, String str, Map<String, String> map) {
        this(i11, t11, str);
        this.Sj = map;
    }

    @Override // com.bytedance.sdk.component.HiB.vS
    public String EjP() {
        return this.EjP;
    }

    @Override // com.bytedance.sdk.component.HiB.vS
    public Map<String, String> HiB() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.HiB.vS
    public Jcg Sj() {
        return this.HiB;
    }

    public void Sj(Jcg jcg) {
        this.HiB = jcg;
    }

    @Override // com.bytedance.sdk.component.HiB.vS
    public T TKC() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.HiB.vS
    public int sP() {
        return this.sP;
    }
}
