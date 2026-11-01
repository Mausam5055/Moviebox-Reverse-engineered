package com.cloud.tmc.miniapp;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface IIpcMiniPSChannel extends IInterface {

    public static class Default implements IIpcMiniPSChannel {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
        public boolean miniAppAbility(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
        public boolean miniAppDataSync(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
        public boolean miniAppExtra(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
        public boolean miniAppPerformance(String str, String str2, Bundle bundle) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IIpcMiniPSChannel {
        private static final String DESCRIPTOR = "com.cloud.tmc.miniapp.IIpcMiniPSChannel";
        static final int TRANSACTION_miniAppAbility = 3;
        static final int TRANSACTION_miniAppDataSync = 2;
        static final int TRANSACTION_miniAppExtra = 4;
        static final int TRANSACTION_miniAppPerformance = 1;

        private static class Proxy implements IIpcMiniPSChannel {
            public static IIpcMiniPSChannel sDefaultImpl;
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

            @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
            public boolean miniAppAbility(String str, String str2, Bundle bundle) throws RemoteException {
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
                        return Stub.getDefaultImpl().miniAppAbility(str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
            public boolean miniAppDataSync(String str, String str2, Bundle bundle) throws RemoteException {
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
                        return Stub.getDefaultImpl().miniAppDataSync(str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
            public boolean miniAppExtra(String str, String str2, Bundle bundle) throws RemoteException {
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
                        return Stub.getDefaultImpl().miniAppExtra(str, str2, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniPSChannel
            public boolean miniAppPerformance(String str, String str2, Bundle bundle) throws RemoteException {
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
                        return Stub.getDefaultImpl().miniAppPerformance(str, str2, bundle);
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

        public static IIpcMiniPSChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IIpcMiniPSChannel)) ? new Proxy(iBinder) : (IIpcMiniPSChannel) iInterfaceQueryLocalInterface;
        }

        public static IIpcMiniPSChannel getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IIpcMiniPSChannel iIpcMiniPSChannel) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iIpcMiniPSChannel == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIpcMiniPSChannel;
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
                boolean zMiniAppPerformance = miniAppPerformance(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zMiniAppPerformance ? 1 : 0);
                return true;
            }
            if (i11 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zMiniAppDataSync = miniAppDataSync(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zMiniAppDataSync ? 1 : 0);
                return true;
            }
            if (i11 == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zMiniAppAbility = miniAppAbility(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                parcel2.writeInt(zMiniAppAbility ? 1 : 0);
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
            boolean zMiniAppExtra = miniAppExtra(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            parcel2.writeInt(zMiniAppExtra ? 1 : 0);
            return true;
        }
    }

    boolean miniAppAbility(String str, String str2, Bundle bundle) throws RemoteException;

    boolean miniAppDataSync(String str, String str2, Bundle bundle) throws RemoteException;

    boolean miniAppExtra(String str, String str2, Bundle bundle) throws RemoteException;

    boolean miniAppPerformance(String str, String str2, Bundle bundle) throws RemoteException;
}
