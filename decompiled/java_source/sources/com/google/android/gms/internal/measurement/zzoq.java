package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoq implements q {
    private static zzoq zza = new zzoq();
    private final q zzb = Suppliers.b(new zzos());

    public static boolean zza() {
        return ((zzot) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzot) this.zzb.get();
    }
}
