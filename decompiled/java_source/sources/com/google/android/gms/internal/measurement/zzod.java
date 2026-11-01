package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzod implements q {
    private static zzod zza = new zzod();
    private final q zzb = Suppliers.b(new zzof());

    public static boolean zza() {
        return ((zzoc) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzoc) zza.get()).zzb();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzoc) this.zzb.get();
    }
}
