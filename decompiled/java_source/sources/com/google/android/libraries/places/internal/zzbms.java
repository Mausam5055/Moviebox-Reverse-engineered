package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzbms extends OutputStream {
    final /* synthetic */ zzbmw zza;
    private final List zzb = new ArrayList();
    private zzbra zzc;

    /* synthetic */ zzbms(zzbmw zzbmwVar, zzbmr zzbmrVar) {
        this.zza = zzbmwVar;
    }

    static /* bridge */ /* synthetic */ int zza(zzbms zzbmsVar) {
        Iterator it = zzbmsVar.zzb.iterator();
        int iZza = 0;
        while (it.hasNext()) {
            iZza += ((zzbra) it.next()).zza();
        }
        return iZza;
    }

    @Override // java.io.OutputStream
    public final void write(int i11) throws IOException {
        zzbra zzbraVar = this.zzc;
        byte b11 = (byte) i11;
        if (zzbraVar == null || zzbraVar.zzb() <= 0) {
            write(new byte[]{b11}, 0, 1);
        } else {
            zzbraVar.zzc(b11);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i11, int i12) {
        if (this.zzc == null) {
            zzbra zzbraVarZza = this.zza.zzg.zza(i12);
            this.zzc = zzbraVarZza;
            this.zzb.add(zzbraVarZza);
        }
        while (i12 > 0) {
            int iMin = Math.min(i12, this.zzc.zzb());
            if (iMin == 0) {
                int iZza = this.zzc.zza();
                zzbra zzbraVarZza2 = this.zza.zzg.zza(Math.max(i12, iZza + iZza));
                this.zzc = zzbraVarZza2;
                this.zzb.add(zzbraVarZza2);
            } else {
                this.zzc.zzd(bArr, i11, iMin);
                i11 += iMin;
                i12 -= iMin;
            }
        }
    }
}
