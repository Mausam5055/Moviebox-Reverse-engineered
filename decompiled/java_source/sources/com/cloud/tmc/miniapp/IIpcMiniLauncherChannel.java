package com.cloud.tmc.miniapp;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface IIpcMiniLauncherChannel extends IInterface {

    public static class Default implements IIpcMiniLauncherChannel {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean launchHostProcess() throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean launcherMiniApp(String str, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean preLauncherData(String str, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean registerMiniAppLifecycleListener(IMiniAppLifecycleInterface iMiniAppLifecycleInterface) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean syncLauncherLifecycletoMiniapp(int i11, int i12) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean syncLauncherNewsData(String str, Bundle bundle) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean updateLauncherData(String str, String str2) throws RemoteException {
            return false;
        }

        @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
        public boolean warmupWebview(boolean z10) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IIpcMiniLauncherChannel {
        private static final String DESCRIPTOR = "com.cloud.tmc.miniapp.IIpcMiniLauncherChannel";
        public static final int TRANSACTION_launchHostProcess = 6;
        public static final int TRANSACTION_launcherMiniApp = 1;
        public static final int TRANSACTION_preLauncherData = 3;
        public static final int TRANSACTION_registerMiniAppLifecycleListener = 8;
        public static final int TRANSACTION_syncLauncherLifecycletoMiniapp = 5;
        public static final int TRANSACTION_syncLauncherNewsData = 7;
        public static final int TRANSACTION_updateLauncherData = 4;
        public static final int TRANSACTION_warmupWebview = 2;

        public static class Proxy implements IIpcMiniLauncherChannel {
            public static IIpcMiniLauncherChannel sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean launchHostProcess() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launchHostProcess();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean launcherMiniApp(String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launcherMiniApp(str, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean preLauncherData(String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().preLauncherData(str, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean registerMiniAppLifecycleListener(IMiniAppLifecycleInterface iMiniAppLifecycleInterface) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iMiniAppLifecycleInterface != null ? iMiniAppLifecycleInterface.asBinder() : null);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().registerMiniAppLifecycleListener(iMiniAppLifecycleInterface);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean syncLauncherLifecycletoMiniapp(int i11, int i12) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().syncLauncherLifecycletoMiniapp(i11, i12);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean syncLauncherNewsData(String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().syncLauncherNewsData(str, bundle);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean updateLauncherData(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().updateLauncherData(str, str2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IIpcMiniLauncherChannel
            public boolean warmupWebview(boolean z10) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().warmupWebview(z10);
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

        public static IIpcMiniLauncherChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IIpcMiniLauncherChannel)) ? new Proxy(iBinder) : (IIpcMiniLauncherChannel) iInterfaceQueryLocalInterface;
        }

        public static IIpcMiniLauncherChannel getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IIpcMiniLauncherChannel iIpcMiniLauncherChannel) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iIpcMiniLauncherChannel == null) {
                return false;
            }
            Proxy.sDefaultImpl = iIpcMiniLauncherChannel;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
            if (i11 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i11) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLauncherMiniApp = launcherMiniApp(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zLauncherMiniApp ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zWarmupWebview = warmupWebview(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zWarmupWebview ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPreLauncherData = preLauncherData(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zPreLauncherData ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUpdateLauncherData = updateLauncherData(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateLauncherData ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSyncLauncherLifecycletoMiniapp = syncLauncherLifecycletoMiniapp(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSyncLauncherLifecycletoMiniapp ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchHostProcess = launchHostProcess();
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchHostProcess ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSyncLauncherNewsData = syncLauncherNewsData(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zSyncLauncherNewsData ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterMiniAppLifecycleListener = registerMiniAppLifecycleListener(IMiniAppLifecycleInterface.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterMiniAppLifecycleListener ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i11, parcel, parcel2, i12);
            }
        }
    }

    boolean launchHostProcess() throws RemoteException;

    boolean launcherMiniApp(String str, Bundle bundle) throws RemoteException;

    boolean preLauncherData(String str, Bundle bundle) throws RemoteException;

    boolean registerMiniAppLifecycleListener(IMiniAppLifecycleInterface iMiniAppLifecycleInterface) throws RemoteException;

    boolean syncLauncherLifecycletoMiniapp(int i11, int i12) throws RemoteException;

    boolean syncLauncherNewsData(String str, Bundle bundle) throws RemoteException;

    boolean updateLauncherData(String str, String str2) throws RemoteException;

    boolean warmupWebview(boolean z10) throws RemoteException;
}
