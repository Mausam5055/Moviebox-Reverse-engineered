package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zznx implements q {
    private static zznx zza = new zznx();
    private final q zzb = Suppliers.b(new zznz());

    public static boolean zza() {
        return ((zznw) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznw) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zznw) zza.get()).zzc();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zznw) this.zzb.get();
    }
}
