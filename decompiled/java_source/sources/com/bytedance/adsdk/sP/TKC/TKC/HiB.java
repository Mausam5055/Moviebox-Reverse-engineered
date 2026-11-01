package com.bytedance.adsdk.sP.TKC.TKC;

import com.bytedance.adsdk.sP.TKC.Sj.Ym;
import com.bytedance.adsdk.sP.TKC.Sj.aa;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private final List<com.bytedance.adsdk.sP.TKC.sP.Dq> Dq;
    private final long EjP;
    private final float Fmk;
    private final Sj HiB;
    private final String Jcg;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP RiZ;
    private final List<com.bytedance.adsdk.sP.TKC.sP.TKC> Sj;
    private final int TEQ;
    private final String TKC;
    private final Ym TzV;
    private final int Ym;
    private final float Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final int f20779aa;
    private final com.bytedance.adsdk.sP.TKC.Sj.TEQ dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private final sP f20780dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private final com.bytedance.adsdk.sP.TKC.sP.Sj f20781ib;
    private final com.bytedance.adsdk.sP.HiB.TEQ kF;
    private final com.bytedance.adsdk.sP.Jcg sP;
    private final List<com.bytedance.adsdk.sP.Jcg.Sj<Float>> sU;
    private final float sef;
    private final aa uA;
    private final float uvD;
    private final long vS;
    private final boolean zR;

    public enum Sj {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum sP {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public HiB(List<com.bytedance.adsdk.sP.TKC.sP.TKC> list, com.bytedance.adsdk.sP.Jcg jcg, String str, long j11, Sj sj2, long j12, String str2, List<com.bytedance.adsdk.sP.TKC.sP.Dq> list2, aa aaVar, int i11, int i12, int i13, float f11, float f12, float f13, float f14, com.bytedance.adsdk.sP.TKC.Sj.TEQ teq, Ym ym2, List<com.bytedance.adsdk.sP.Jcg.Sj<Float>> list3, sP sPVar, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2, boolean z10, com.bytedance.adsdk.sP.TKC.sP.Sj sj3, com.bytedance.adsdk.sP.HiB.TEQ teq2) {
        this.Sj = list;
        this.sP = jcg;
        this.TKC = str;
        this.EjP = j11;
        this.HiB = sj2;
        this.vS = j12;
        this.Jcg = str2;
        this.Dq = list2;
        this.uA = aaVar;
        this.TEQ = i11;
        this.Ym = i12;
        this.f20779aa = i13;
        this.Fmk = f11;
        this.sef = f12;
        this.Zq = f13;
        this.uvD = f14;
        this.dNu = teq;
        this.TzV = ym2;
        this.sU = list3;
        this.f20780dx = sPVar;
        this.RiZ = sPVar2;
        this.zR = z10;
        this.f20781ib = sj3;
        this.kF = teq2;
    }

    float Dq() {
        return this.Zq;
    }

    List<com.bytedance.adsdk.sP.Jcg.Sj<Float>> EjP() {
        return this.sU;
    }

    long Fmk() {
        return this.vS;
    }

    public long HiB() {
        return this.EjP;
    }

    public String Jcg() {
        return this.Jcg;
    }

    com.bytedance.adsdk.sP.TKC.Sj.TEQ RiZ() {
        return this.dNu;
    }

    com.bytedance.adsdk.sP.Jcg Sj() {
        return this.sP;
    }

    public String Sj(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(vS());
        sb2.append("\n");
        HiB hiBSj = this.sP.Sj(Fmk());
        if (hiBSj != null) {
            sb2.append("\t\tParents: ");
            sb2.append(hiBSj.vS());
            HiB hiBSj2 = this.sP.Sj(hiBSj.Fmk());
            while (hiBSj2 != null) {
                sb2.append("->");
                sb2.append(hiBSj2.vS());
                hiBSj2 = this.sP.Sj(hiBSj2.Fmk());
            }
            sb2.append(str);
            sb2.append("\n");
        }
        if (!TEQ().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(TEQ().size());
            sb2.append("\n");
        }
        if (TzV() != 0 && dNu() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(TzV()), Integer.valueOf(dNu()), Integer.valueOf(uvD())));
        }
        if (!this.Sj.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (com.bytedance.adsdk.sP.TKC.sP.TKC tkc : this.Sj) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(tkc);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    List<com.bytedance.adsdk.sP.TKC.sP.Dq> TEQ() {
        return this.Dq;
    }

    float TKC() {
        return this.sef / this.sP.dNu();
    }

    int TzV() {
        return this.TEQ;
    }

    public Sj Ym() {
        return this.HiB;
    }

    aa Zq() {
        return this.uA;
    }

    sP aa() {
        return this.f20780dx;
    }

    int dNu() {
        return this.Ym;
    }

    com.bytedance.adsdk.sP.TKC.Sj.sP dx() {
        return this.RiZ;
    }

    public com.bytedance.adsdk.sP.TKC.sP.Sj ib() {
        return this.f20781ib;
    }

    public com.bytedance.adsdk.sP.HiB.TEQ kF() {
        return this.kF;
    }

    float sP() {
        return this.Fmk;
    }

    Ym sU() {
        return this.TzV;
    }

    List<com.bytedance.adsdk.sP.TKC.sP.TKC> sef() {
        return this.Sj;
    }

    public String toString() {
        return Sj("");
    }

    float uA() {
        return this.uvD;
    }

    int uvD() {
        return this.f20779aa;
    }

    public String vS() {
        return this.TKC;
    }

    public boolean zR() {
        return this.zR;
    }
}
