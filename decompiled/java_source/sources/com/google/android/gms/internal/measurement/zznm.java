package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zznm implements q {
    private static zznm zza = new zznm();
    private final q zzb = Suppliers.b(new zzno());

    public static boolean zza() {
        return ((zznp) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznp) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zznp) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zznp) zza.get()).zzd();
    }

    public static boolean zze() {
        return ((zznp) zza.get()).zze();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zznp) this.zzb.get();
    }
}
