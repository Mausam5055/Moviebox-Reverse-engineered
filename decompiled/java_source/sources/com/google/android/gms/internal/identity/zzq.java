package com.google.android.gms.internal.identity;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzq extends zzb implements zzr {
    public zzq() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.identity.zzb
    protected final boolean zza(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 == 1) {
            zzl zzlVar = (zzl) zzc.zza(parcel, zzl.CREATOR);
            zzc.zzd(parcel);
            zzd(zzlVar);
        } else {
            if (i11 != 2) {
                return false;
            }
            zze();
        }
        return true;
    }
}
