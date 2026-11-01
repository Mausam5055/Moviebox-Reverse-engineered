package ky;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes7.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: ky.b$a$a, reason: collision with other inner class name */
        private static class C0820a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f68408a;

            C0820a(IBinder iBinder) {
                this.f68408a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f68408a;
            }

            @Override // ky.b
            public void c0(ky.a aVar, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.transsnet.dispenselib.IDispenseCommonService");
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeString(str);
                    this.f68408a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.transsnet.dispenselib.IDispenseCommonService");
        }

        public static b Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsnet.dispenselib.IDispenseCommonService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0820a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface("com.transsnet.dispenselib.IDispenseCommonService");
            }
            if (i11 == 1598968902) {
                parcel2.writeString("com.transsnet.dispenselib.IDispenseCommonService");
                return true;
            }
            if (i11 == 1) {
                c0(ky.a.AbstractBinderC0818a.Y0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
            } else if (i11 == 2) {
                v(ky.a.AbstractBinderC0818a.Y0(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
            } else if (i11 == 3) {
                G0(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
            } else {
                if (i11 != 4) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                String strI = i(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strI);
            }
            return true;
        }
    }

    void G0(String str, String str2, String str3);

    void c0(ky.a aVar, String str);

    String i(String str, String str2, String str3);

    void v(ky.a aVar, String str);
}
