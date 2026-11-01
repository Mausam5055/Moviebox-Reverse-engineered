package com.bytedance.adsdk.sP.TKC;

import com.bytedance.adsdk.sP.TKC.sP.uvD;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private final double EjP;
    private final String HiB;
    private final List<uvD> Sj;
    private final double TKC;
    private final char sP;
    private final String vS;

    public EjP(List<uvD> list, char c11, double d11, double d12, String str, String str2) {
        this.Sj = list;
        this.sP = c11;
        this.TKC = d11;
        this.EjP = d12;
        this.HiB = str;
        this.vS = str2;
    }

    public static int Sj(char c11, String str, String str2) {
        return (((c11 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List<uvD> Sj() {
        return this.Sj;
    }

    public int hashCode() {
        return Sj(this.sP, this.vS, this.HiB);
    }

    public double sP() {
        return this.EjP;
    }
}
