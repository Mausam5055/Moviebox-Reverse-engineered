package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
final class zzew extends zzdy.zza {
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ zzdk zzd;
    private final /* synthetic */ zzdy zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzew(zzdy zzdyVar, Bundle bundle, zzdk zzdkVar) {
        super(zzdyVar);
        this.zzc = bundle;
        this.zzd = zzdkVar;
        this.zze = zzdyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    final void zza() throws RemoteException {
        ((zzdj) Preconditions.checkNotNull(this.zze.zzj)).performAction(this.zzc, this.zzd, this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    protected final void zzb() {
        this.zzd.zza((Bundle) null);
    }
}
