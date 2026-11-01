package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: loaded from: classes3.dex */
public interface IGmsServiceBroker extends IInterface {

    public static abstract class Stub extends Binder implements IGmsServiceBroker {
        public Stub() {
            attachInterface(this, "com.google.android.gms.common.internal.IGmsServiceBroker");
        }

        @Override // android.os.IInterface
        @NonNull
        @KeepForSdk
        public IBinder asBinder() {
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:61:0x00d2  */
        /* JADX WARN: Code duplicated, block: B:63:0x00de  */
        /* JADX WARN: Code duplicated, block: B:64:0x00e7  */
        /* JADX WARN: Code duplicated, block: B:66:0x00ed  */
        @Override // android.os.Binder
        public final boolean onTransact(int i11, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i12) throws RemoteException {
            IGmsCallbacks zzabVar;
            if (i11 > 16777215) {
                return super.onTransact(i11, parcel, parcel2, i12);
            }
            parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzabVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                zzabVar = iInterfaceQueryLocalInterface instanceof IGmsCallbacks ? (IGmsCallbacks) iInterfaceQueryLocalInterface : new zzab(strongBinder);
            }
            if (i11 == 46) {
                getService(zzabVar, parcel.readInt() != 0 ? GetServiceRequest.CREATOR.createFromParcel(parcel) : null);
                Preconditions.checkNotNull(parcel2);
                parcel2.writeNoException();
                return true;
            }
            if (i11 == 47) {
                if (parcel.readInt() != 0) {
                    zzak.CREATOR.createFromParcel(parcel);
                }
                throw new UnsupportedOperationException();
            }
            parcel.readInt();
            if (i11 != 4) {
                parcel.readString();
                if (i11 == 1) {
                    parcel.readString();
                    parcel.createStringArray();
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                    }
                } else if (i11 == 2 || i11 == 23 || i11 == 25 || i11 == 27) {
                    if (parcel.readInt() != 0) {
                    }
                } else if (i11 == 30) {
                    parcel.createStringArray();
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                    }
                } else if (i11 == 34) {
                    parcel.readString();
                } else if (i11 != 41 && i11 != 43 && i11 != 37 && i11 != 38) {
                    switch (i11) {
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                            if (parcel.readInt() != 0) {
                            }
                            break;
                        case 9:
                            parcel.readString();
                            parcel.createStringArray();
                            parcel.readString();
                            parcel.readStrongBinder();
                            parcel.readString();
                            if (parcel.readInt() != 0) {
                            }
                            break;
                        case 10:
                            parcel.readString();
                            parcel.createStringArray();
                            break;
                        case 19:
                            parcel.readStrongBinder();
                            if (parcel.readInt() != 0) {
                            }
                            break;
                        case 20:
                            parcel.createStringArray();
                            parcel.readString();
                            if (parcel.readInt() != 0) {
                            }
                            break;
                    }
                } else if (parcel.readInt() != 0) {
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    @KeepForSdk
    void getService(@NonNull IGmsCallbacks iGmsCallbacks, @Nullable GetServiceRequest getServiceRequest) throws RemoteException;
}
