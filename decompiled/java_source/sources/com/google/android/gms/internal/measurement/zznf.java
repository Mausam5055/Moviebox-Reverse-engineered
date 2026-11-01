package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zznf implements q {
    private static zznf zza = new zznf();
    private final q zzb = Suppliers.b(new zznh());

    public static boolean zza() {
        return ((zzne) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzne) this.zzb.get();
    }
}
