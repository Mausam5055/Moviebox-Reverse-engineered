package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzok implements q {
    private static zzok zza = new zzok();
    private final q zzb = Suppliers.b(new zzom());

    public static boolean zza() {
        return ((zzon) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzon) zza.get()).zzb();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzon) this.zzb.get();
    }
}
