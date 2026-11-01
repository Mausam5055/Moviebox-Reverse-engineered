package com.bytedance.sdk.component.HiB.HiB;

import com.bytedance.sdk.component.HiB.uvD;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Fmk<T> extends Sj {
    private T Sj;
    private boolean TKC;
    private com.bytedance.sdk.component.HiB.vS sP;

    public Fmk(T t11, com.bytedance.sdk.component.HiB.vS vSVar, boolean z10) {
        this.Sj = t11;
        this.sP = vSVar;
        this.TKC = z10;
    }

    private Map<String, String> sP() {
        com.bytedance.sdk.component.HiB.vS vSVar = this.sP;
        if (vSVar != null) {
            return vSVar.HiB();
        }
        return null;
    }

    private void sP(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        uvD uvdDq = tkc.Dq();
        if (uvdDq != null) {
            uvdDq.Sj(new com.bytedance.sdk.component.HiB.TKC.EjP().Sj(tkc, this.Sj, sP(), this.TKC));
        }
    }

    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public String Sj() {
        return NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS;
    }

    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        String strZR = tkc.zR();
        Map<String, List<com.bytedance.sdk.component.HiB.TKC.TKC>> mapDq = tkc.TzV().Dq();
        List<com.bytedance.sdk.component.HiB.TKC.TKC> list = mapDq.get(strZR);
        if (list == null) {
            sP(tkc);
            return;
        }
        synchronized (list) {
            try {
                Iterator<com.bytedance.sdk.component.HiB.TKC.TKC> it = list.iterator();
                while (it.hasNext()) {
                    sP(it.next());
                }
                list.clear();
                mapDq.remove(strZR);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
