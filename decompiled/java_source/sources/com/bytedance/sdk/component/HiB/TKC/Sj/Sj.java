package com.bytedance.sdk.component.HiB.TKC.Sj;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements com.bytedance.sdk.component.HiB.sP, Cloneable {
    private static volatile com.bytedance.sdk.component.HiB.sP vS;
    private boolean EjP;
    private File HiB;
    private long Sj;
    private boolean TKC;
    private int sP;

    public Sj(int i11, long j11, File file) {
        this(i11, j11, i11 != 0, j11 != 0, file);
    }

    public Sj(int i11, long j11, boolean z10, boolean z11, File file) {
        this.Sj = j11;
        this.sP = i11;
        this.TKC = z10;
        this.EjP = z11;
        this.HiB = file;
    }

    public static com.bytedance.sdk.component.HiB.sP Sj(File file) {
        int iMin;
        long jMin;
        file.mkdirs();
        if (vS == null) {
            iMin = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 31457280);
            jMin = Math.min(Ym() / 16, 41943040L);
        } else {
            iMin = Math.min(vS.sP() / 2, 31457280);
            jMin = Math.min(vS.Sj() / 2, 41943040L);
        }
        return new Sj(Math.max(iMin, 26214400), Math.max(jMin, 20971520L), file);
    }

    public static void Sj(Context context, com.bytedance.sdk.component.HiB.sP sPVar) {
        if (sPVar != null) {
            vS = sPVar;
        } else {
            vS = Sj(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.HiB.sP TEQ() {
        return vS;
    }

    private static long Ym() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public File Dq() {
        return this.HiB;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public int EjP() {
        return 0;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public boolean HiB() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public boolean Jcg() {
        return this.EjP;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public long Sj() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public int TKC() {
        return 0;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public int sP() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public boolean uA() {
        return true;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public boolean vS() {
        return false;
    }
}
