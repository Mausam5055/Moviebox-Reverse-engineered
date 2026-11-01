package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface j extends IInterface {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f14699e = "androidx$room$IMultiInstanceInvalidationService".replace('$', '.');

    public static abstract class a extends Binder implements j {

        /* JADX INFO: renamed from: androidx.room.j$a$a, reason: collision with other inner class name */
        private static class C0118a implements j {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f14700a;

            C0118a(IBinder iBinder) {
                this.f14700a = iBinder;
            }

            @Override // androidx.room.j
            public void W0(i iVar, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f14699e);
                    parcelObtain.writeStrongInterface(iVar);
                    parcelObtain.writeInt(i11);
                    this.f14700a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.room.j
            public void Z(int i11, String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f14699e);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeStringArray(strArr);
                    this.f14700a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14700a;
            }

            @Override // androidx.room.j
            public int r0(i iVar, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f14699e);
                    parcelObtain.writeStrongInterface(iVar);
                    parcelObtain.writeString(str);
                    this.f14700a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, j.f14699e);
        }

        public static j Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(j.f14699e);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof j)) ? new C0118a(iBinder) : (j) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = j.f14699e;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i11 == 1) {
                int iR0 = r0(i.a.Y0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iR0);
            } else if (i11 == 2) {
                W0(i.a.Y0(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
            } else {
                if (i11 != 3) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                Z(parcel.readInt(), parcel.createStringArray());
            }
            return true;
        }
    }

    void W0(i iVar, int i11);

    void Z(int i11, String[] strArr);

    int r0(i iVar, String str);
}
