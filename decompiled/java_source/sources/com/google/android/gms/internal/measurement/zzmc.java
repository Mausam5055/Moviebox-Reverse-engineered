package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzmc implements Iterator {
    private int zza;
    private boolean zzb;
    private Iterator zzc;
    private final /* synthetic */ zzlv zzd;

    private zzmc(zzlv zzlvVar) {
        this.zzd = zzlvVar;
        this.zza = -1;
    }

    private final Iterator zza() {
        if (this.zzc == null) {
            this.zzc = this.zzd.zzc.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza + 1 < this.zzd.zzb || (!this.zzd.zzc.isEmpty() && zza().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzb = true;
        int i11 = this.zza + 1;
        this.zza = i11;
        return i11 < this.zzd.zzb ? (zzlz) this.zzd.zza[this.zza] : (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzg();
        if (this.zza >= this.zzd.zzb) {
            zza().remove();
            return;
        }
        zzlv zzlvVar = this.zzd;
        int i11 = this.zza;
        this.zza = i11 - 1;
        zzlvVar.zzb(i11);
    }
}
