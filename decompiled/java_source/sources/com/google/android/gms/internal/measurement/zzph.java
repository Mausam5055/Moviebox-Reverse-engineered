package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzph implements q {
    private static zzph zza = new zzph();
    private final q zzb = Suppliers.b(new zzpj());

    public static double zza() {
        return ((zzpg) zza.get()).zza();
    }

    public static long zzb() {
        return ((zzpg) zza.get()).zzb();
    }

    public static long zzc() {
        return ((zzpg) zza.get()).zzc();
    }

    public static long zzd() {
        return ((zzpg) zza.get()).zzd();
    }

    public static String zze() {
        return ((zzpg) zza.get()).zze();
    }

    public static boolean zzf() {
        return ((zzpg) zza.get()).zzf();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzpg) this.zzb.get();
    }
}
