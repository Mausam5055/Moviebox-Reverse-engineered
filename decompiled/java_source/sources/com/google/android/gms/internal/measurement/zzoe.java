package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoe implements q {
    private static zzoe zza = new zzoe();
    private final q zzb = Suppliers.b(new zzog());

    public static boolean zza() {
        return ((zzoh) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzoh) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzoh) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zzoh) zza.get()).zzd();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzoh) this.zzb.get();
    }
}
