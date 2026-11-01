package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzna implements q {
    private static zzna zza = new zzna();
    private final q zzb = Suppliers.b(new zznc());

    public static boolean zza() {
        return ((zznd) zza.get()).zza();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zznd) this.zzb.get();
    }
}
