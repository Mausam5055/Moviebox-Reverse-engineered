package com.bytedance.adsdk.sP.EjP;

/* JADX INFO: loaded from: classes2.dex */
public enum TKC {
    JSON(".json"),
    ZIP(".zip");

    public final String TKC;

    TKC(String str) {
        this.TKC = str;
    }

    public String Sj() {
        return ".temp" + this.TKC;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.TKC;
    }
}
