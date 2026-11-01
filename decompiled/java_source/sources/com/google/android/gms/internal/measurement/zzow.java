package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzow implements q {
    private static zzow zza = new zzow();
    private final q zzb = Suppliers.b(new zzoy());

    public static boolean zza() {
        return ((zzoz) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzoz) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzoz) zza.get()).zzc();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzoz) this.zzb.get();
    }
}
