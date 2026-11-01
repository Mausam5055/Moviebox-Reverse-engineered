package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzny implements q {
    private static zzny zza = new zzny();
    private final q zzb = Suppliers.b(new zzoa());

    public static boolean zza() {
        return ((zzob) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzob) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzob) zza.get()).zzc();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzob) this.zzb.get();
    }
}
