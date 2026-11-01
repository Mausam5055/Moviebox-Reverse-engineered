package com.google.android.gms.internal.play_billing;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzam extends zzaf {
    final /* synthetic */ zzan zza;

    zzam(zzan zzanVar) {
        this.zza = zzanVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i11) {
        zzx.zza(i11, this.zza.zzc, "index");
        zzan zzanVar = this.zza;
        int i12 = i11 + i11;
        Object obj = zzanVar.zzb[i12];
        obj.getClass();
        Object obj2 = zzanVar.zzb[i12 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    public final boolean zzf() {
        return true;
    }
}
