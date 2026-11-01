package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpz implements q {
    private static zzpz zza = new zzpz();
    private final q zzb = Suppliers.b(new zzqb());

    public static boolean zza() {
        return ((zzpy) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzpy) zza.get()).zzb();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzpy) this.zzb.get();
    }
}
