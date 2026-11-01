package com.bytedance.sdk.component.HiB.EjP.TKC.Sj;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements com.bytedance.sdk.component.HiB.sP, Cloneable {
    private static volatile com.bytedance.sdk.component.HiB.sP uA;
    private File Dq;
    private int EjP;
    private boolean HiB;
    private boolean Jcg;
    private long Sj;
    private int TKC;
    private int sP;
    private boolean vS;

    public sP(int i11, int i12, int i13, long j11, File file) {
        this(i11, i12, i13, j11, i12 != 0, j11 != 0, file);
    }

    public sP(int i11, int i12, int i13, long j11, boolean z10, boolean z11, File file) {
        this.Sj = j11;
        this.sP = i11;
        this.TKC = i12;
        this.EjP = i13;
        this.HiB = z10;
        this.vS = z11;
        this.Dq = file;
        this.Jcg = i13 != 0;
    }

    public static com.bytedance.sdk.component.HiB.sP Sj(File file) {
        long jSj;
        int iTKC;
        int iEjP;
        file.mkdirs();
        if (uA == null) {
            iTKC = 10;
            iEjP = 14;
            jSj = 20;
        } else {
            jSj = uA.Sj();
            iTKC = uA.TKC();
            iEjP = uA.EjP();
        }
        return new sP(0, iTKC, iEjP, jSj, file);
    }

    public static void Sj(Context context, com.bytedance.sdk.component.HiB.sP sPVar) {
        if (sPVar != null) {
            uA = sPVar;
        } else {
            uA = Sj(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.HiB.sP TEQ() {
        return uA;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public File Dq() {
        return this.Dq;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public int EjP() {
        return this.EjP;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public boolean HiB() {
        return this.HiB;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public boolean Jcg() {
        return this.vS;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public long Sj() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.component.HiB.sP
    public int TKC() {
        return this.TKC;
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
        return this.Jcg;
    }
}
