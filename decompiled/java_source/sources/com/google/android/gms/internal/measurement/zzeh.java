package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzeh extends zzdy.zza {
    private final /* synthetic */ zzdy zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzeh(zzdy zzdyVar) {
        super(zzdyVar);
        this.zzc = zzdyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zzc.zzj)).resetAnalyticsData(this.zza);
    }
}
