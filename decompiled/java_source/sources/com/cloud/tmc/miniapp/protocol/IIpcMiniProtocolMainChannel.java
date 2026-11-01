package com.cloud.tmc.miniapp.protocol;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface IIpcMiniProtocolMainChannel extends IInterface {

    public static class Default implements IIpcMiniProtocolMainChannel {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
        public boolean onMiniAppAbility(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
        public boolean onMiniAppDataSync(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
        public boolean onMiniAppExtra(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
        public boolean onMiniAppPerformance(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IIpcMiniProtocolMainChannel {
        private static final String DESCRIPTOR = "com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel";
        static final int TRANSACTION_onMiniAppAbility = 3;
        static final int TRANSACTION_onMiniAppDataSync = 2;
        static final int TRANSACTION_onMiniAppExtra = 4;
        static final int TRANSACTION_onMiniAppPerformance = 1;

        private static class Proxy implements IIpcMiniProtocolMainChannel {
            public static IIpcMiniProtocolMainChannel sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
            public boolean onMiniAppAbility(String str, String str2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onMiniAppAbility(str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
            public boolean onMiniAppDataSync(String str, String str2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onMiniAppDataSync(str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
            public boolean onMiniAppExtra(String str, String str2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onMiniAppExtra(str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel
            public boolean onMiniAppPerformance(String str, String str2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onMiniAppPerformance(str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IIpcMiniProtocolMainChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IIpcMiniProtocolMainChannel)) ? new Proxy(iBinder) : (IIpcMiniProtocolMainChannel) iInterfaceQueryLocalInterface;
        }

        public static IIpcMiniProtocolMainChannel getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iIpcMiniProtocolMainChannel == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIpcMiniProtocolMainChannel;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
            if (i11 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zOnMiniAppPerformance = onMiniAppPerformance(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zOnMiniAppPerformance ? 1 : 0);
                return true;
            }
            if (i11 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zOnMiniAppDataSync = onMiniAppDataSync(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zOnMiniAppDataSync ? 1 : 0);
                return true;
            }
            if (i11 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zOnMiniAppAbility = onMiniAppAbility(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zOnMiniAppAbility ? 1 : 0);
                return true;
            }
            if (i11 != 4) {
                if (i11 != 1598968902) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zOnMiniAppExtra = onMiniAppExtra(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeInt(zOnMiniAppExtra ? 1 : 0);
            return true;
        }
    }

    boolean onMiniAppAbility(String str, String str2, Bundle bundle) throws RemoteException;

    boolean onMiniAppDataSync(String str, String str2, Bundle bundle) throws RemoteException;

    boolean onMiniAppExtra(String str, String str2, Bundle bundle) throws RemoteException;

    boolean onMiniAppPerformance(String str, String str2, Bundle bundle) throws RemoteException;
}
