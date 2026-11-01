package com.google.android.gms.internal.base;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public class zab extends Binder implements IInterface {
    protected zab(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        if (i11 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i11, parcel, parcel2, i12)) {
            return true;
        }
        return zaa(i11, parcel, parcel2, i12);
    }

    protected boolean zaa(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
        throw null;
    }
}
