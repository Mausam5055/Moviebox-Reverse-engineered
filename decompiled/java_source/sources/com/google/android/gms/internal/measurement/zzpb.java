package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpb implements q {
    private static zzpb zza = new zzpb();
    private final q zzb = Suppliers.b(new zzpd());

    public static boolean zza() {
        return ((zzpa) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpa) zza.get()).zzb();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzpa) this.zzb.get();
    }
}
