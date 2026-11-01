package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sef implements com.bytedance.sdk.component.adexpress.TKC {
    public final int Dq;
    public final float EjP;
    public JSONObject Fmk;
    public final long HiB;
    public final int Jcg;
    public final float Sj;
    public final int TEQ;
    public final float TKC;
    public boolean TzV;
    public final String Ym;
    public final boolean Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    public int f21076aa;
    public JSONObject dNu;
    public final float sP;
    public SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sef;
    public final int uA;
    public int uvD;
    public final long vS;

    public static class Sj {
        private int Dq;
        private float EjP;
        private int Fmk;
        private float HiB;
        private float Jcg;
        private int TEQ;
        private long TKC;
        private boolean TzV;
        private int Ym;
        private int Zq;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private String f21077aa;
        private long sP;
        private JSONObject sef;
        private int uA;
        private JSONObject uvD;
        private float vS;
        private boolean dNu = false;
        protected SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> Sj = new SparseArray<>();

        public Sj EjP(float f11) {
            this.Jcg = f11;
            return this;
        }

        public Sj EjP(int i11) {
            this.uA = i11;
            return this;
        }

        public Sj HiB(int i11) {
            this.TEQ = i11;
            return this;
        }

        public Sj Sj(float f11) {
            this.EjP = f11;
            return this;
        }

        public Sj Sj(int i11) {
            this.Zq = i11;
            return this;
        }

        public Sj Sj(long j11) {
            this.sP = j11;
            return this;
        }

        public Sj Sj(SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray) {
            this.Sj = sparseArray;
            return this;
        }

        public Sj Sj(String str) {
            this.f21077aa = str;
            return this;
        }

        public Sj Sj(JSONObject jSONObject) {
            this.sef = jSONObject;
            return this;
        }

        public Sj Sj(boolean z10) {
            this.TzV = z10;
            return this;
        }

        public sef Sj() {
            return new sef(this);
        }

        public Sj TKC(float f11) {
            this.vS = f11;
            return this;
        }

        public Sj TKC(int i11) {
            this.Dq = i11;
            return this;
        }

        public Sj sP(float f11) {
            this.HiB = f11;
            return this;
        }

        public Sj sP(int i11) {
            this.Fmk = i11;
            return this;
        }

        public Sj sP(long j11) {
            this.TKC = j11;
            return this;
        }

        public Sj sP(JSONObject jSONObject) {
            this.uvD = jSONObject;
            return this;
        }

        public Sj sP(boolean z10) {
            this.dNu = z10;
            return this;
        }

        public Sj vS(int i11) {
            this.Ym = i11;
            return this;
        }
    }

    private sef(@NonNull Sj sj2) {
        this.TzV = false;
        this.Sj = sj2.Jcg;
        this.sP = sj2.vS;
        this.TKC = sj2.HiB;
        this.EjP = sj2.EjP;
        this.HiB = sj2.TKC;
        this.vS = sj2.sP;
        this.Jcg = sj2.Dq;
        this.Dq = sj2.uA;
        this.uA = sj2.TEQ;
        this.TEQ = sj2.Ym;
        this.Ym = sj2.f21077aa;
        this.sef = sj2.Sj;
        this.Zq = sj2.TzV;
        this.f21076aa = sj2.Fmk;
        this.Fmk = sj2.sef;
        this.uvD = sj2.Zq;
        this.dNu = sj2.uvD;
        this.TzV = sj2.dNu;
    }
}
