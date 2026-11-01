package com.bytedance.adsdk.sP;

import android.graphics.Bitmap;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ {
    private final String Dq;
    private final String EjP;
    private final String HiB;
    private final List<Sj> Jcg;
    private final int Sj;
    private final JSONArray TEQ;
    private final String TKC;
    private Bitmap Ym;
    private final int sP;
    private final int[][] uA;
    private final String vS;

    public static class Sj {
        public String EjP;
        public int HiB;
        public String Jcg;
        public int Sj;
        public String TKC;
        public int sP;
        public int vS;
    }

    public TEQ(int i11, int i12, String str, String str2, String str3, String str4, List<Sj> list, String str5, int[][] iArr, JSONArray jSONArray) {
        this.Sj = i11;
        this.sP = i12;
        this.TKC = str;
        this.EjP = str2;
        this.HiB = str3;
        this.vS = str4;
        this.Jcg = list;
        this.Dq = str5;
        this.uA = iArr;
        this.TEQ = jSONArray;
    }

    public String Dq() {
        return this.TKC;
    }

    public String EjP() {
        return this.vS;
    }

    public String HiB() {
        return this.Dq;
    }

    public JSONArray Jcg() {
        return this.TEQ;
    }

    public int Sj() {
        return this.Sj;
    }

    public void Sj(Bitmap bitmap) {
        this.Ym = bitmap;
    }

    public String TEQ() {
        return this.HiB;
    }

    public List<Sj> TKC() {
        return this.Jcg;
    }

    public Bitmap Ym() {
        return this.Ym;
    }

    public int sP() {
        return this.sP;
    }

    public String uA() {
        return this.EjP;
    }

    public int[][] vS() {
        return this.uA;
    }
}
