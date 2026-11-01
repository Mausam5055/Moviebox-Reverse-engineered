package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
final class zzcu implements Iterator {
    final /* synthetic */ zzcv zza;
    private int zzb = 0;

    zzcu(zzcv zzcvVar) {
        this.zza = zzcvVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i11 = this.zzb;
        zzcv zzcvVar = this.zza;
        return i11 < zzcvVar.zza() - zzcvVar.zzb();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i11 = this.zzb;
        zzcv zzcvVar = this.zza;
        if (i11 >= zzcvVar.zza() - zzcvVar.zzb()) {
            throw new NoSuchElementException();
        }
        zzcv zzcvVar2 = this.zza;
        Object obj = zzcvVar2.zzb.zzb[zzcvVar2.zzb() + i11];
        this.zzb = i11 + 1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
