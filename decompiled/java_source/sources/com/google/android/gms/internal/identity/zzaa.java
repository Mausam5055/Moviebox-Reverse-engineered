package com.google.android.gms.internal.identity;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaa extends zzb implements zzab {
    public zzaa() {
        super("com.google.android.gms.location.internal.ISettingsCallbacks");
    }

    @Override // com.google.android.gms.internal.identity.zzb
    protected final boolean zza(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 != 1) {
            return false;
        }
        LocationSettingsResult locationSettingsResult = (LocationSettingsResult) zzc.zza(parcel, LocationSettingsResult.CREATOR);
        zzc.zzd(parcel);
        zzb(locationSettingsResult);
        return true;
    }
}
