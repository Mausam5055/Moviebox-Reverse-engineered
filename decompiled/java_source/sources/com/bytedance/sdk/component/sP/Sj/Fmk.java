package com.bytedance.sdk.component.sP.Sj;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Fmk {
    public Ym Sj;
    public com.bytedance.sdk.component.TKC.Sj.Sj sP = new com.bytedance.sdk.component.TKC.Sj.Sj();

    public static class Sj {
        String Dq;
        String EjP;
        Object HiB;
        int Jcg;
        com.bytedance.sdk.component.sP.Sj.Sj Sj;
        Jcg TKC;
        Map<String, List<String>> sP;
        sef vS;

        public Sj() {
            this.sP = new HashMap();
        }

        Sj(Fmk fmk) {
            this.TKC = fmk.sP();
            this.EjP = fmk.TKC();
            this.sP = fmk.EjP();
            this.HiB = fmk.Sj();
            this.vS = fmk.Dq();
            this.Sj = fmk.HiB();
            this.Jcg = fmk.Jcg();
            this.Dq = fmk.vS();
        }

        private Sj Sj(String str, sef sefVar) {
            this.EjP = str;
            this.vS = sefVar;
            return this;
        }

        public Sj Sj() {
            return Sj("GET", (sef) null);
        }

        public Sj Sj(int i11) {
            this.Jcg = i11;
            return this;
        }

        public Sj Sj(Jcg jcg) {
            this.TKC = jcg;
            return this;
        }

        public Sj Sj(com.bytedance.sdk.component.sP.Sj.Sj sj2) {
            this.Sj = sj2;
            return this;
        }

        public Sj Sj(sef sefVar) {
            return Sj("POST", sefVar);
        }

        public Sj Sj(Object obj) {
            this.HiB = obj;
            return this;
        }

        public Sj Sj(String str) {
            this.Dq = str;
            return this;
        }

        public Sj Sj(String str, String str2) {
            return sP(str, str2);
        }

        public Sj sP(String str) {
            return Sj(Jcg.TKC(str));
        }

        public Sj sP(String str, String str2) {
            if (!this.sP.containsKey(str)) {
                this.sP.put(str, new ArrayList());
            }
            this.sP.get(str).add(str2);
            return this;
        }

        public Fmk sP() {
            return new Fmk() { // from class: com.bytedance.sdk.component.sP.Sj.Fmk.Sj.1
                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public sef Dq() {
                    return Sj.this.vS;
                }

                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public Map EjP() {
                    return Sj.this.sP;
                }

                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public com.bytedance.sdk.component.sP.Sj.Sj HiB() {
                    return Sj.this.Sj;
                }

                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public int Jcg() {
                    return Sj.this.Jcg;
                }

                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public Object Sj() {
                    return Sj.this.HiB;
                }

                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public String TKC() {
                    return Sj.this.EjP;
                }

                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public Jcg sP() {
                    return Sj.this.TKC;
                }

                public String toString() {
                    return "";
                }

                @Override // com.bytedance.sdk.component.sP.Sj.Fmk
                public String vS() {
                    return Sj.this.Dq;
                }
            };
        }
    }

    public sef Dq() {
        return null;
    }

    public abstract Map<String, List<String>> EjP();

    public abstract com.bytedance.sdk.component.sP.Sj.Sj HiB();

    public abstract int Jcg();

    public abstract Object Sj();

    public void Sj(Ym ym2) {
        this.Sj = ym2;
    }

    public abstract String TKC();

    public abstract Jcg sP();

    public Sj uA() {
        return new Sj(this);
    }

    public abstract String vS();
}
