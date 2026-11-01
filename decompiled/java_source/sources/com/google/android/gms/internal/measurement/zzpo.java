package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpo implements q {
    private static zzpo zza = new zzpo();
    private final q zzb = Suppliers.b(new zzpq());

    public static boolean zza() {
        return ((zzpr) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpr) zza.get()).zzb();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzpr) this.zzb.get();
    }
}
