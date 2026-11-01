package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzop implements q {
    private static zzop zza = new zzop();
    private final q zzb = Suppliers.b(new zzor());

    public static boolean zza() {
        return ((zzoo) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzoo) this.zzb.get();
    }
}
