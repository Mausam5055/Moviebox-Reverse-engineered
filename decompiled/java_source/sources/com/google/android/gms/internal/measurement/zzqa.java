package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqa implements q {
    private static zzqa zza = new zzqa();
    private final q zzb = Suppliers.b(new zzqc());

    public static boolean zza() {
        return ((zzqd) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzqd) this.zzb.get();
    }
}
