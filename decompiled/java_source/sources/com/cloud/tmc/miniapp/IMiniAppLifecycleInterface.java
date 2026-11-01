package com.cloud.tmc.miniapp;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes3.dex */
public interface IMiniAppLifecycleInterface extends IInterface {

    public static class Default implements IMiniAppLifecycleInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
        public void onCreate() throws RemoteException {
        }

        @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
        public void onDestroy() throws RemoteException {
        }

        @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
        public void onPause() throws RemoteException {
        }

        @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
        public void onResume() throws RemoteException {
        }

        @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
        public void onStart() throws RemoteException {
        }

        @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
        public void onStop() throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IMiniAppLifecycleInterface {
        private static final String DESCRIPTOR = "com.cloud.tmc.miniapp.IMiniAppLifecycleInterface";
        public static final int TRANSACTION_onCreate = 1;
        public static final int TRANSACTION_onDestroy = 6;
        public static final int TRANSACTION_onPause = 4;
        public static final int TRANSACTION_onResume = 3;
        public static final int TRANSACTION_onStart = 2;
        public static final int TRANSACTION_onStop = 5;

        public static class Proxy implements IMiniAppLifecycleInterface {
            public static IMiniAppLifecycleInterface sDefaultImpl;
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

            @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
            public void onCreate() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCreate();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
            public void onDestroy() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDestroy();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
            public void onPause() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPause();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
            public void onResume() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onResume();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
            public void onStart() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onStart();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.cloud.tmc.miniapp.IMiniAppLifecycleInterface
            public void onStop() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onStop();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMiniAppLifecycleInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMiniAppLifecycleInterface)) ? new Proxy(iBinder) : (IMiniAppLifecycleInterface) iInterfaceQueryLocalInterface;
        }

        public static IMiniAppLifecycleInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMiniAppLifecycleInterface iMiniAppLifecycleInterface) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iMiniAppLifecycleInterface == null) {
                return false;
            }
            Proxy.sDefaultImpl = iMiniAppLifecycleInterface;
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
                    onCreate();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStart();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onResume();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPause();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStop();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDestroy();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i11, parcel, parcel2, i12);
            }
        }
    }

    void onCreate() throws RemoteException;

    void onDestroy() throws RemoteException;

    void onPause() throws RemoteException;

    void onResume() throws RemoteException;

    void onStart() throws RemoteException;

    void onStop() throws RemoteException;
}
