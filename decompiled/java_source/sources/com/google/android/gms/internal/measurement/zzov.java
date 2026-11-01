package com.google.android.gms.internal.measurement;

import com.google.common.base.Suppliers;
import com.google.common.base.q;

/* JADX INFO: loaded from: classes4.dex */
public final class zzov implements q {
    private static zzov zza = new zzov();
    private final q zzb = Suppliers.b(new zzox());

    public static boolean zza() {
        return ((zzou) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzou) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzou) zza.get()).zzc();
    }

    @Override // com.google.common.base.q
    public final /* synthetic */ Object get() {
        return (zzou) this.zzb.get();
    }
}
