package com.bytedance.sdk.component.HiB.TKC.Sj.sP;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.HiB.dNu;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements dNu {
    private int Sj;
    private com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, Bitmap> TKC;
    private int sP;

    public sP(int i11, int i12) {
        this.sP = i11;
        this.Sj = i12;
        this.TKC = new com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, Bitmap>(i11) { // from class: com.bytedance.sdk.component.HiB.TKC.Sj.sP.sP.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.HiB.TKC.Sj.TKC
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public int sP(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return sP.Sj(bitmap);
            }
        };
    }

    public static int Sj(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        return bitmap.getAllocationByteCount();
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public Bitmap Sj(String str) {
        return this.TKC.Sj(str);
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean Sj(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.TKC.Sj(str, bitmap);
        return true;
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean sP(String str) {
        return this.TKC.Sj(str) != null;
    }
}
