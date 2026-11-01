package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaw extends com.google.android.gms.internal.maps.zzb implements zzav {
    public zzaw() {
        super("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 != 1) {
            return false;
        }
        boolean zOnMyLocationButtonClick = onMyLocationButtonClick();
        parcel2.writeNoException();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcel2, zOnMyLocationButtonClick);
        return true;
    }
}
