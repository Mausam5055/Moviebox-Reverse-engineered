package com.transsion.athena;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.transsion.athena.data.TrackData;

/* JADX INFO: loaded from: classes5.dex */
public interface athena extends IInterface {

    /* JADX INFO: renamed from: com.transsion.athena.athena$athena, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0604athena extends Binder implements athena {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f42562a = 0;

        /* JADX INFO: renamed from: com.transsion.athena.athena$athena$athena, reason: collision with other inner class name */
        private static class C0605athena implements athena {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f42563a;

            C0605athena(IBinder iBinder) {
                this.f42563a = iBinder;
            }

            @Override // com.transsion.athena.athena
            public void a(String str, TrackData trackData, long j11) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsion.athena.IAthenaTrackInterface");
                    parcelObtain.writeString(str);
                    if (trackData != null) {
                        parcelObtain.writeInt(1);
                        trackData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeLong(j11);
                    if (!this.f42563a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i11 = AbstractBinderC0604athena.f42562a;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f42563a;
            }
        }

        public AbstractBinderC0604athena() {
            attachInterface(this, "com.transsion.athena.IAthenaTrackInterface");
        }

        public static athena a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsion.athena.IAthenaTrackInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof athena)) ? new C0605athena(iBinder) : (athena) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) throws RemoteException {
            if (i11 != 1) {
                if (i11 != 1598968902) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                parcel2.writeString("com.transsion.athena.IAthenaTrackInterface");
                return true;
            }
            parcel.enforceInterface("com.transsion.athena.IAthenaTrackInterface");
            a(parcel.readString(), parcel.readInt() != 0 ? TrackData.CREATOR.createFromParcel(parcel) : null, parcel.readLong());
            parcel2.writeNoException();
            return true;
        }
    }

    void a(String str, TrackData trackData, long j11) throws RemoteException;
}
