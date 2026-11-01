package com.bytedance.sdk.openadsdk.api.nativeAd;

/* JADX INFO: loaded from: classes2.dex */
public class PAGImageItem {
    private float EjP;
    private final int Sj;
    private final String TKC;
    private final int sP;

    public PAGImageItem(int i11, int i12, String str) {
        this(i11, i12, str, 0.0f);
    }

    public PAGImageItem(int i11, int i12, String str, float f11) {
        this.Sj = i11;
        this.sP = i12;
        this.TKC = str;
        this.EjP = f11;
    }

    public float getDuration() {
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
}
