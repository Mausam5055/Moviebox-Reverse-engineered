package com.bytedance.sdk.component.HiB.EjP.TKC.Sj.sP;

import android.graphics.Bitmap;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bytedance.sdk.component.HiB.dNu;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements dNu {
    private com.bytedance.sdk.component.HiB.EjP.TKC.Sj.TKC<String, Bitmap> EjP;
    private long Sj = PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED;
    private int TKC;
    private int sP;

    public Sj(int i11, int i12) {
        this.sP = i12;
        this.TKC = i11;
        this.EjP = new com.bytedance.sdk.component.HiB.EjP.TKC.Sj.TKC<>(i12);
    }

    public static int Sj(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public Bitmap Sj(String str) {
        try {
            return this.EjP.Sj(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean Sj(String str, Bitmap bitmap) {
        if (str != null && bitmap != null) {
            try {
                int iSj = Sj(bitmap);
                if (iSj <= this.Sj && iSj != 0) {
                    this.EjP.Sj(str, bitmap);
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean sP(String str) {
        try {
            return this.EjP.Sj(str) != null;
        } catch (Throwable unused) {
        }
    }
}
