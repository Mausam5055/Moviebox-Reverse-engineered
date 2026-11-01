package com.bytedance.sdk.openadsdk.sP;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends Sj {
    private volatile boolean EjP;
    private int TKC;
    private int sP;

    public sP(int i11, int i12) {
        this.sP = 15;
        this.TKC = 3;
        if (i11 <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.sP = i11;
        this.TKC = i12;
    }

    public sP(int i11, int i12, boolean z10) {
        this.sP = 15;
        this.TKC = 3;
        if (i11 <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.sP = i11;
        this.TKC = i12;
        this.EjP = z10;
    }

    private void EjP(List<File> list) {
        long jSP;
        int size;
        boolean zSj;
        if (list != null) {
            try {
                if (list.size() == 0 || (zSj = Sj((jSP = sP(list)), (size = list.size())))) {
                    return;
                }
                TreeMap treeMap = new TreeMap();
                for (File file : list) {
                    treeMap.put(Long.valueOf(file.lastModified()), file);
                }
                for (Map.Entry entry : treeMap.entrySet()) {
                    if (entry != null && !zSj) {
                        ((Long) entry.getKey()).longValue();
                        File file2 = (File) entry.getValue();
                        long length = file2.length();
                        if (file2.delete()) {
                            size--;
                            jSP -= length;
                        }
                        if (Sj(file2, jSP, size)) {
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void TKC(List<File> list) {
        long jSP = sP(list);
        int size = list.size();
        if (Sj(jSP, size)) {
            return;
        }
        for (File file : list) {
            long length = file.length();
            if (file.delete()) {
                size--;
                jSP -= length;
            }
            if (Sj(file, jSP, size)) {
                return;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.sP.Sj
    protected void Sj(List<File> list) {
        if (!this.EjP) {
            TKC(list);
        } else {
            EjP(list);
            this.EjP = false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.sP.Sj
    protected boolean Sj(long j11, int i11) {
        return i11 <= this.sP;
    }

    @Override // com.bytedance.sdk.openadsdk.sP.Sj
    protected boolean Sj(File file, long j11, int i11) {
        return i11 <= this.TKC;
    }
}
