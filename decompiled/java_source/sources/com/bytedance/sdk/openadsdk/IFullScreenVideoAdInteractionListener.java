package com.bytedance.sdk.openadsdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface IFullScreenVideoAdInteractionListener extends IInterface {

    public static class Default implements IFullScreenVideoAdInteractionListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
        public void onAdClose() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
        public void onAdShow() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
        public void onAdVideoBarClick() throws RemoteException {
        }

        @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
        public void onDestroy() throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IFullScreenVideoAdInteractionListener {

        private static class Sj implements IFullScreenVideoAdInteractionListener {
            public static IFullScreenVideoAdInteractionListener Sj;
            private IBinder sP;

            Sj(IBinder iBinder) {
                this.sP = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.sP;
            }

            @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
            public void onAdClose() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                    if (this.sP.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAdClose();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
            public void onAdShow() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                    if (this.sP.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAdShow();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
            public void onAdVideoBarClick() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                    if (this.sP.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAdVideoBarClick();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener
            public void onDestroy() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                    if (this.sP.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDestroy();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
        }

        public static IFullScreenVideoAdInteractionListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IFullScreenVideoAdInteractionListener)) ? new Sj(iBinder) : (IFullScreenVideoAdInteractionListener) iInterfaceQueryLocalInterface;
        }

        public static IFullScreenVideoAdInteractionListener getDefaultImpl() {
            return Sj.Sj;
        }

        public static boolean setDefaultImpl(IFullScreenVideoAdInteractionListener iFullScreenVideoAdInteractionListener) {
            if (Sj.Sj != null || iFullScreenVideoAdInteractionListener == null) {
                return false;
            }
            Sj.Sj = iFullScreenVideoAdInteractionListener;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
            if (i11 == 1) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                onDestroy();
                parcel2.writeNoException();
                return true;
            }
            if (i11 == 2) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                onAdShow();
                parcel2.writeNoException();
                return true;
            }
            if (i11 == 3) {
                parcel.enforceInterface("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                onAdVideoBarClick();
                parcel2.writeNoException();
                return true;
            }
            if (i11 != 4) {
                if (i11 != 1598968902) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                parcel2.writeString("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
                return true;
            }
            parcel.enforceInterface("com.bytedance.sdk.openadsdk.IFullScreenVideoAdInteractionListener");
            onAdClose();
            parcel2.writeNoException();
            return true;
        }
    }

    void onAdClose() throws RemoteException;

    void onAdShow() throws RemoteException;

    void onAdVideoBarClick() throws RemoteException;

    void onDestroy() throws RemoteException;
}
