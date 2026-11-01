package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public class zzbx extends Binder implements IInterface {
    protected zzbx(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        boolean zOnTransact;
        if (i11 > 16777215) {
            zOnTransact = super.onTransact(i11, parcel, parcel2, i12);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        return zza(i11, parcel, parcel2, i12);
    }

    protected boolean zza(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        return false;
    }
}
