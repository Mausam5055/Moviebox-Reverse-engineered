package com.bytedance.sdk.component.HiB.TKC;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.bytedance.sdk.component.HiB.Fmk;
import com.bytedance.sdk.component.HiB.TzV;
import com.bytedance.sdk.component.HiB.aa;
import com.bytedance.sdk.component.HiB.dNu;
import com.bytedance.sdk.component.HiB.dx;
import com.bytedance.sdk.component.HiB.sU;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class vS {
    private ExecutorService Dq;
    private aa Jcg;
    private final Fmk sP;
    private com.bytedance.sdk.component.HiB.EjP vS;
    private Map<String, List<TKC>> Sj = new ConcurrentHashMap();
    private Map<String, dNu> TKC = new HashMap();
    private Map<String, TzV> EjP = new HashMap();
    private Map<String, com.bytedance.sdk.component.HiB.TKC> HiB = new HashMap();

    public vS(Context context, Fmk fmk) {
        this.sP = (Fmk) Jcg.Sj(fmk);
        com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj(context, fmk.Dq());
    }

    private dNu EjP(com.bytedance.sdk.component.HiB.sP sPVar) {
        dNu dnuHiB = this.sP.HiB();
        return dnuHiB != null ? com.bytedance.sdk.component.HiB.TKC.Sj.sP.Sj.Sj(dnuHiB) : com.bytedance.sdk.component.HiB.TKC.Sj.sP.Sj.Sj(sPVar.sP());
    }

    private TzV HiB(com.bytedance.sdk.component.HiB.sP sPVar) {
        TzV tzVVS = this.sP.vS();
        return tzVVS != null ? tzVVS : com.bytedance.sdk.component.HiB.TKC.Sj.sP.HiB.Sj(sPVar.sP());
    }

    private aa TEQ() {
        aa aaVarSj = this.sP.Sj();
        return aaVarSj != null ? aaVarSj : com.bytedance.sdk.component.HiB.Sj.sP.Sj();
    }

    private ExecutorService Ym() {
        ExecutorService executorServiceSP = this.sP.sP();
        return executorServiceSP != null ? executorServiceSP : com.bytedance.sdk.component.HiB.Sj.TKC.Sj();
    }

    private com.bytedance.sdk.component.HiB.EjP uA() {
        com.bytedance.sdk.component.HiB.EjP EjP = this.sP.EjP();
        return EjP == null ? new com.bytedance.sdk.component.HiB.sP.Sj() : EjP;
    }

    private com.bytedance.sdk.component.HiB.TKC vS(com.bytedance.sdk.component.HiB.sP sPVar) {
        com.bytedance.sdk.component.HiB.TKC tkcJcg = this.sP.Jcg();
        return tkcJcg != null ? tkcJcg : new com.bytedance.sdk.component.HiB.TKC.Sj.Sj.sP(sPVar.Dq(), sPVar.Sj(), Jcg());
    }

    public Map<String, List<TKC>> Dq() {
        return this.Sj;
    }

    public com.bytedance.sdk.component.HiB.EjP EjP() {
        if (this.vS == null) {
            this.vS = uA();
        }
        return this.vS;
    }

    public dx HiB() {
        Fmk fmk = this.sP;
        if (fmk != null) {
            return fmk.uA();
        }
        return null;
    }

    public ExecutorService Jcg() {
        ExecutorService executorServiceSj;
        sU sUVarTKC = this.sP.TKC();
        if (sUVarTKC != null && (executorServiceSj = sUVarTKC.Sj()) != null) {
            return executorServiceSj;
        }
        if (this.Dq == null) {
            this.Dq = Ym();
        }
        return this.Dq;
    }

    public com.bytedance.sdk.component.HiB.TKC.sP.Sj Sj(TKC tkc) {
        ImageView.ScaleType scaleTypeEjP = tkc.EjP();
        if (scaleTypeEjP == null) {
            scaleTypeEjP = com.bytedance.sdk.component.HiB.TKC.sP.Sj.Sj;
        }
        ImageView.ScaleType scaleType = scaleTypeEjP;
        Bitmap.Config configYm = tkc.Ym();
        if (configYm == null) {
            configYm = com.bytedance.sdk.component.HiB.TKC.sP.Sj.sP;
        }
        return new com.bytedance.sdk.component.HiB.TKC.sP.Sj(tkc.sP(), tkc.TKC(), scaleType, configYm, tkc.vS(), tkc.Jcg());
    }

    public com.bytedance.sdk.component.HiB.TKC Sj(String str) {
        return TKC(com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj(new File(str)));
    }

    public dNu Sj(com.bytedance.sdk.component.HiB.sP sPVar) {
        if (sPVar == null) {
            sPVar = com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TEQ();
        }
        String string = sPVar.Dq().toString();
        dNu dnu = this.TKC.get(string);
        if (dnu != null) {
            return dnu;
        }
        dNu dnuEjP = EjP(sPVar);
        this.TKC.put(string, dnuEjP);
        return dnuEjP;
    }

    public Collection<dNu> Sj() {
        return this.TKC.values();
    }

    public com.bytedance.sdk.component.HiB.TKC TKC(com.bytedance.sdk.component.HiB.sP sPVar) {
        if (sPVar == null) {
            sPVar = com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TEQ();
        }
        String string = sPVar.Dq().toString();
        com.bytedance.sdk.component.HiB.TKC tkc = this.HiB.get(string);
        if (tkc != null) {
            return tkc;
        }
        com.bytedance.sdk.component.HiB.TKC tkcVS = vS(sPVar);
        this.HiB.put(string, tkcVS);
        return tkcVS;
    }

    public Collection<com.bytedance.sdk.component.HiB.TKC> TKC() {
        return this.HiB.values();
    }

    public TzV sP(com.bytedance.sdk.component.HiB.sP sPVar) {
        if (sPVar == null) {
            sPVar = com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TEQ();
        }
        String string = sPVar.Dq().toString();
        TzV tzV = this.EjP.get(string);
        if (tzV != null) {
            return tzV;
        }
        TzV tzVHiB = HiB(sPVar);
        this.EjP.put(string, tzVHiB);
        return tzVHiB;
    }

    public Collection<TzV> sP() {
        return this.EjP.values();
    }

    public aa vS() {
        if (this.Jcg == null) {
            this.Jcg = TEQ();
        }
        return this.Jcg;
    }
}
