package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdn extends zzbx implements zzdo {
    public zzdn() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzbx
    protected final boolean zza(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
        zzbw.zzb(parcel);
        zza(bundle);
        parcel2.writeNoException();
        return true;
    }
}
