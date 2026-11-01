package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqf implements q {
    private static zzqf zza = new zzqf();
    private final q zzb = Suppliers.b(new zzqg());

    public static boolean zza() {
        return ((zzqe) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzqe) this.zzb.get();
    }
}
