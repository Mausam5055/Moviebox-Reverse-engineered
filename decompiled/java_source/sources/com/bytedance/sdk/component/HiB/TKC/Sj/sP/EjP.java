package com.bytedance.sdk.component.HiB.TKC.Sj.sP;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.dNu;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements dNu {
    private final dNu Sj;
    private final com.bytedance.sdk.component.HiB.TKC.Sj.sP sP;

    public EjP(dNu dnu) {
        this(dnu, null);
    }

    public EjP(dNu dnu, com.bytedance.sdk.component.HiB.TKC.Sj.sP sPVar) {
        this.Sj = dnu;
        this.sP = sPVar;
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
