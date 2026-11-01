package com.bytedance.sdk.component.HiB.TKC.Sj.sP;

import com.bytedance.sdk.component.HiB.TzV;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements TzV {
    private int Sj;
    private com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, byte[]> TKC;
    private int sP;

    public TKC(int i11, int i12) {
        this.sP = i11;
        this.Sj = i12;
        this.TKC = new com.bytedance.sdk.component.HiB.TKC.Sj.TKC<String, byte[]>(i11) { // from class: com.bytedance.sdk.component.HiB.TKC.Sj.sP.TKC.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.HiB.TKC.Sj.TKC
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public int sP(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean Sj(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.TKC.Sj(str, bArr);
        return true;
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public byte[] Sj(String str) {
        return this.TKC.Sj(str);
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean sP(String str) {
        return this.TKC.Sj(str) != null;
    }
}
