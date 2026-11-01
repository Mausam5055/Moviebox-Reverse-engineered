package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
final class zzap extends zzaf {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    zzap(Object[] objArr, int i11, int i12) {
        this.zza = objArr;
        this.zzb = i11;
        this.zzc = i12;
    }

    @Override // java.util.List
    public final Object get(int i11) {
        zzx.zza(i11, this.zzc, "index");
        Object obj = this.zza[i11 + i11 + this.zzb];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    final boolean zzf() {
        return true;
    }
}
