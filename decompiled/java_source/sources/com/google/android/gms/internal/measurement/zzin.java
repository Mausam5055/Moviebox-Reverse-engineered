package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
final class zzin extends zzip {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zzik zzc;

    zzin(zzik zzikVar) {
        this.zzc = zzikVar;
        this.zzb = zzikVar.zzb();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    public final byte zza() {
        int i11 = this.zza;
        if (i11 >= this.zzb) {
            throw new NoSuchElementException();
        }
        this.zza = i11 + 1;
        return this.zzc.zzb(i11);
    }
}
