package com.bytedance.sdk.component.sP.Sj;

/* JADX INFO: loaded from: classes2.dex */
public class sef {
    public String EjP;
    public byte[] HiB;
    public uA TKC;
    public Sj vS;

    public enum Sj {
        STRING_TYPE,
        BYTE_ARRAY_TYPE
    }

    public sef() {
    }

    public sef(uA uAVar, String str, Sj sj2) {
        this.TKC = uAVar;
        this.EjP = str;
        this.vS = sj2;
    }

    public sef(uA uAVar, byte[] bArr, Sj sj2) {
        this.TKC = uAVar;
        this.HiB = bArr;
        this.vS = sj2;
    }

    public static sef Sj(uA uAVar, String str) {
        return new sef(uAVar, str, Sj.STRING_TYPE);
    }

    public static sef Sj(uA uAVar, byte[] bArr) {
        return new sef(uAVar, bArr, Sj.BYTE_ARRAY_TYPE);
    }
}
