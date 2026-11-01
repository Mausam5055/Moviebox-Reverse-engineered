package com.bytedance.sdk.component.Sj;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
class Jcg implements zR.Sj {
    private final boolean Dq;
    private final Fmk Jcg;
    private final Dq Sj;
    private final com.bytedance.sdk.component.Sj.Sj TEQ;
    private final sU sP;
    private final boolean uA;
    private final Map<String, sP> TKC = new HashMap();
    private final Map<String, EjP.sP> EjP = new HashMap();
    private final List<uvD> HiB = new ArrayList();
    private final Set<EjP> vS = new HashSet();

    static final class Sj {
        boolean Sj;
        String sP;

        private Sj(boolean z10, String str) {
            this.Sj = z10;
            this.sP = str;
        }
    }

    Jcg(TEQ teq, com.bytedance.sdk.component.Sj.Sj sj2, dx dxVar) {
        this.TEQ = sj2;
        this.Sj = teq.EjP;
        sU sUVar = new sU(dxVar, teq.f20867aa, teq.Fmk);
        this.sP = sUVar;
        sUVar.Sj(this);
        sUVar.Sj(teq.uvD);
        this.Jcg = teq.uA;
        this.Dq = teq.Dq;
        this.uA = teq.Zq;
    }

    private Sj Sj(final uvD uvd, final EjP ejP, vS vSVar) throws Exception {
        this.vS.add(ejP);
        ejP.Sj(Sj(uvd.HiB, ejP), vSVar, new EjP.Sj() { // from class: com.bytedance.sdk.component.Sj.Jcg.1
            @Override // com.bytedance.sdk.component.Sj.EjP.Sj
            public void Sj(Object obj) {
                if (Jcg.this.TEQ == null) {
                    return;
                }
                Jcg.this.TEQ.sP(kF.Sj(Jcg.this.Sj.Sj(obj)), uvd);
                Jcg.this.vS.remove(ejP);
            }

            @Override // com.bytedance.sdk.component.Sj.EjP.Sj
            public void Sj(Throwable th2) {
                if (Jcg.this.TEQ == null) {
                    return;
                }
                Jcg.this.TEQ.sP(kF.Sj(th2), uvd);
                Jcg.this.vS.remove(ejP);
            }
        });
        return new Sj(false, kF.Sj());
    }

    private Sj Sj(uvD uvd, HiB hiB, vS vSVar) throws Exception {
        return new Sj(true, kF.Sj(this.Sj.Sj(hiB.Sj(Sj(uvd.HiB, (sP) hiB), vSVar))));
    }

    private Sj Sj(final uvD uvd, TKC tkc, ib ibVar) throws Exception {
        new RiZ(uvd.EjP, ibVar, new RiZ.Sj() { // from class: com.bytedance.sdk.component.Sj.Jcg.2
        });
        return new Sj(false, kF.Sj());
    }

    private Object Sj(String str, sP sPVar) throws JSONException {
        return this.Sj.Sj(str, Sj(sPVar)[0]);
    }

    private static Type[] Sj(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }

    private ib sP(String str, sP sPVar) {
        return this.uA ? ib.PRIVATE : this.sP.Sj(this.Dq, str, sPVar);
    }

    Sj Sj(uvD uvd, vS vSVar) throws Exception {
        sP sPVar = this.TKC.get(uvd.EjP);
        if (sPVar != null) {
            try {
                ib ibVarSP = sP(vSVar.sP, sPVar);
                vSVar.EjP = ibVarSP;
                if (ibVarSP == null) {
                    uvd.toString();
                    throw new TzV(-1);
                }
                if (sPVar instanceof HiB) {
                    uvd.toString();
                    return Sj(uvd, (HiB) sPVar, vSVar);
                }
                if (sPVar instanceof TKC) {
                    uvd.toString();
                    return Sj(uvd, (TKC) sPVar, ibVarSP);
                }
            } catch (dx.Sj unused) {
                uvd.toString();
                this.HiB.add(uvd);
                return new Sj(false, kF.Sj());
            }
        }
        EjP.sP sPVar2 = this.EjP.get(uvd.EjP);
        if (sPVar2 == null) {
            uvd.toString();
            return null;
        }
        EjP ejPSj = sPVar2.Sj();
        ejPSj.Sj(uvd.EjP);
        ib ibVarSP2 = sP(vSVar.sP, ejPSj);
        vSVar.EjP = ibVarSP2;
        if (ibVarSP2 != null) {
            uvd.toString();
            return Sj(uvd, ejPSj, vSVar);
        }
        uvd.toString();
        ejPSj.EjP();
        throw new TzV(-1);
    }

    void Sj() {
        Iterator<EjP> it = this.vS.iterator();
        while (it.hasNext()) {
            it.next().HiB();
        }
        this.vS.clear();
        this.TKC.clear();
        this.EjP.clear();
        this.sP.sP(this);
    }

    void Sj(String str, EjP.sP sPVar) {
        this.EjP.put(str, sPVar);
    }

    void Sj(String str, HiB<?, ?> hiB) {
        hiB.Sj(str);
        this.TKC.put(str, hiB);
    }
}
