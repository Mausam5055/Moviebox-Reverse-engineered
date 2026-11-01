package com.google.android.libraries.places.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbbc extends zzbbk {
    private final zzbbe zza;

    public zzbbc(zzbbe zzbbeVar) {
        zzmt.zzc(zzbbeVar, "result");
        this.zza = zzbbeVar;
    }

    public final String toString() {
        return "FixedResultPicker(" + this.zza.toString() + ")";
    }

    @Override // com.google.android.libraries.places.internal.zzbbk
    public final zzbbe zza(zzbbf zzbbfVar) {
        return this.zza;
    }
}
