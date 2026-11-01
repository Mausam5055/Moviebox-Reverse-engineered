package com.bytedance.sdk.openadsdk;

/* JADX INFO: loaded from: classes2.dex */
public class TTImage {
    private double EjP;
    private final int Sj;
    private final String TKC;
    private final int sP;

    public TTImage(int i11, int i12, String str) {
        this(i11, i12, str, 0.0d);
    }

    public TTImage(int i11, int i12, String str, double d11) {
        this.Sj = i11;
        this.sP = i12;
        this.TKC = str;
        this.EjP = d11;
    }

    public double getDuration() {
        return this.EjP;
    }

    public int getHeight() {
        return this.Sj;
    }

    public String getImageUrl() {
        return this.TKC;
    }

    public int getWidth() {
        return this.sP;
    }

    public boolean isValid() {
        String str;
        return this.Sj > 0 && this.sP > 0 && (str = this.TKC) != null && str.length() > 0;
    }
}
