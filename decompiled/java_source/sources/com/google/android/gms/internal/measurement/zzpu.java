package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpu implements q {
    private static zzpu zza = new zzpu();
    private final q zzb = Suppliers.b(new zzpw());

    public static boolean zza() {
        return ((zzpx) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpx) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzpx) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zzpx) zza.get()).zzd();
    }

    public static boolean zze() {
        return ((zzpx) zza.get()).zze();
    }

    public static boolean zzf() {
        return ((zzpx) zza.get()).zzf();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzpx) this.zzb.get();
    }
}
