package com.bytedance.sdk.component.HiB.EjP.TKC.Sj.sP;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.dNu;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements dNu {
    private final dNu Sj;
    private final com.bytedance.sdk.component.HiB.EjP.TKC.Sj.Sj sP;

    public TKC(dNu dnu) {
        this(dnu, null);
    }

    public TKC(dNu dnu, com.bytedance.sdk.component.HiB.EjP.TKC.Sj.Sj sj2) {
        this.Sj = dnu;
        this.sP = sj2;
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public Bitmap Sj(String str) {
        return this.Sj.Sj(str);
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean Sj(String str, Bitmap bitmap) {
        return this.Sj.Sj(str, bitmap);
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean sP(String str) {
        return this.Sj.sP(str);
    }
}
