package com.bytedance.adsdk.sP.TKC.sP;

import android.graphics.Paint;
import com.bytedance.adsdk.sP.Sj.Sj.sU;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TzV implements TKC {
    private final sP Dq;
    private final com.bytedance.adsdk.sP.TKC.Sj.Sj EjP;
    private final com.bytedance.adsdk.sP.TKC.Sj.EjP HiB;
    private final Sj Jcg;
    private final String Sj;
    private final boolean TEQ;
    private final List<com.bytedance.adsdk.sP.TKC.Sj.sP> TKC;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP sP;
    private final float uA;
    private final com.bytedance.adsdk.sP.TKC.Sj.sP vS;

    /* JADX INFO: renamed from: com.bytedance.adsdk.sP.TKC.sP.TzV$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;
        static final /* synthetic */ int[] sP;

        static {
            int[] iArr = new int[sP.values().length];
            sP = iArr;
            try {
                iArr[sP.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                sP[sP.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                sP[sP.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Sj.values().length];
            Sj = iArr2;
            try {
                iArr2[Sj.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Sj[Sj.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Sj[Sj.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum Sj {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap Sj() {
            int i11 = AnonymousClass1.Sj[ordinal()];
            if (i11 != 1) {
                return i11 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public enum sP {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join Sj() {
            int i11 = AnonymousClass1.sP[ordinal()];
            if (i11 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i11 == 2) {
                return Paint.Join.MITER;
            }
            if (i11 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public TzV(String str, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar, List<com.bytedance.adsdk.sP.TKC.Sj.sP> list, com.bytedance.adsdk.sP.TKC.Sj.Sj sj2, com.bytedance.adsdk.sP.TKC.Sj.EjP ejP, com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2, Sj sj3, sP sPVar3, float f11, boolean z10) {
        this.Sj = str;
        this.sP = sPVar;
        this.TKC = list;
        this.EjP = sj2;
        this.HiB = ejP;
        this.vS = sPVar2;
        this.Jcg = sj3;
        this.Dq = sPVar3;
        this.uA = f11;
        this.TEQ = z10;
    }

    public sP Dq() {
        return this.Dq;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP EjP() {
        return this.vS;
    }

    public List<com.bytedance.adsdk.sP.TKC.Sj.sP> HiB() {
        return this.TKC;
    }

    public Sj Jcg() {
        return this.Jcg;
    }

    @Override // com.bytedance.adsdk.sP.TKC.sP.TKC
    public com.bytedance.adsdk.sP.Sj.Sj.TKC Sj(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2) {
        return new sU(uAVar, sj2, this);
    }

    public String Sj() {
        return this.Sj;
    }

    public boolean TEQ() {
        return this.TEQ;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.EjP TKC() {
        return this.HiB;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.Sj sP() {
        return this.EjP;
    }

    public float uA() {
        return this.uA;
    }

    public com.bytedance.adsdk.sP.TKC.Sj.sP vS() {
        return this.sP;
    }
}
