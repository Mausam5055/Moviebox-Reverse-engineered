package com.bytedance.sdk.component.HiB.EjP.TKC.Sj.sP;

import android.support.v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.component.HiB.TzV;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements TzV {
    private com.bytedance.sdk.component.HiB.EjP.TKC.Sj.TKC<String, byte[]> EjP;
    private long Sj = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    private int TKC;
    private int sP;

    public sP(int i11, int i12) {
        this.TKC = i11;
        this.sP = i12;
        this.EjP = new com.bytedance.sdk.component.HiB.EjP.TKC.Sj.TKC<>(i12);
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean Sj(String str, byte[] bArr) {
        if (str != null && bArr != null) {
            try {
                if (bArr.length > this.Sj) {
                    return false;
                }
                this.EjP.Sj(str, bArr);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public byte[] Sj(String str) {
        try {
            return this.EjP.Sj(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean sP(String str) {
        try {
            return this.EjP.Sj(str) != null;
        } catch (Throwable unused) {
        }
    }
}
