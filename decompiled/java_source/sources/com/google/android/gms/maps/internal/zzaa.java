package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaa extends com.google.android.gms.internal.maps.zzb implements zzz {
    public zzaa() {
        super("com.google.android.gms.maps.internal.IOnIndoorStateChangeListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 == 1) {
            onIndoorBuildingFocused();
        } else {
            if (i11 != 2) {
                return false;
            }
            zza(com.google.android.gms.internal.maps.zzo.zze(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
