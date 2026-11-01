package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zznr implements q {
    private static zznr zza = new zznr();
    private final q zzb = Suppliers.b(new zznt());

    public static boolean zza() {
        return ((zznq) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznq) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zznq) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zznq) zza.get()).zzd();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zznq) this.zzb.get();
    }
}
