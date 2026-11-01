package com.bytedance.sdk.openadsdk.core.aa.TKC;

import com.bytedance.sdk.component.utils.Jcg;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends com.bytedance.sdk.openadsdk.sP.sP {
    public TKC(int i11, int i12) {
        super(i11, i12);
    }

    public TKC(int i11, int i12, boolean z10) {
        super(i11, i12);
        this.Sj = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.sP.sP, com.bytedance.sdk.openadsdk.sP.Sj
    protected void Sj(List<File> list) {
        int size = list.size();
        if (Sj(0L, size)) {
            return;
        }
        for (File file : list) {
            Jcg.TKC(file);
            size--;
            if (Sj(file, 0L, size)) {
                return;
            }
        }
    }
}
