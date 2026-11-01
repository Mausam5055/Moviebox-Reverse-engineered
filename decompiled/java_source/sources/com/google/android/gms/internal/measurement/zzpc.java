package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpc implements q {
    private static zzpc zza = new zzpc();
    private final q zzb = Suppliers.b(new zzpe());

    public static boolean zza() {
        return ((zzpf) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzpf) this.zzb.get();
    }
}
