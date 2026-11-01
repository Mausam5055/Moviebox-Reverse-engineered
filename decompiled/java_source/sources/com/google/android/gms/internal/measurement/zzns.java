package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzns implements q {
    private static zzns zza = new zzns();
    private final q zzb = Suppliers.b(new zznu());

    public static boolean zza() {
        return ((zznv) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznv) zza.get()).zzb();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zznv) this.zzb.get();
    }
}
