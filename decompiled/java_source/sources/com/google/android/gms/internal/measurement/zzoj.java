package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoj implements q {
    private static zzoj zza = new zzoj();
    private final q zzb = Suppliers.b(new zzol());

    public static boolean zza() {
        return ((zzoi) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzoi) this.zzb.get();
    }
}
