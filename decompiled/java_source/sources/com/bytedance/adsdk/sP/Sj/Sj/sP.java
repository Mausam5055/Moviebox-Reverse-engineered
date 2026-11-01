package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private final List<dx> Sj = new ArrayList();

    public void Sj(Path path) {
        for (int size = this.Sj.size() - 1; size >= 0; size--) {
            com.bytedance.adsdk.sP.vS.vS.Sj(path, this.Sj.get(size));
        }
    }

    void Sj(dx dxVar) {
        this.Sj.add(dxVar);
    }
}
