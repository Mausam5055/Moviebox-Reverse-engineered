package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzlx implements Iterator {
    private int zza;
    private Iterator zzb;
    private final /* synthetic */ zzlv zzc;

    private zzlx(zzlv zzlvVar) {
        this.zzc = zzlvVar;
        this.zza = zzlvVar.zzb;
    }

    private final Iterator zza() {
        if (this.zzb == null) {
            this.zzb = this.zzc.zzf.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i11 = this.zza;
        return (i11 > 0 && i11 <= this.zzc.zzb) || zza().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (zza().hasNext()) {
            return (Map.Entry) zza().next();
        }
        Object[] objArr = this.zzc.zza;
        int i11 = this.zza - 1;
        this.zza = i11;
        return (zzlz) objArr[i11];
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
