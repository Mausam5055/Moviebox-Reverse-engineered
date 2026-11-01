package ky;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes7.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: ky.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0818a extends Binder implements a {

        /* JADX INFO: renamed from: ky.a$a$a, reason: collision with other inner class name */
        private static class C0819a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f68407a;

            C0819a(IBinder iBinder) {
                this.f68407a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f68407a;
            }
        }

        public AbstractBinderC0818a() {
            attachInterface(this, "com.transsnet.dispenselib.IDispenseCommonCallBack");
        }

        public static a Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.transsnet.dispenselib.IDispenseCommonCallBack");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0819a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface("com.transsnet.dispenselib.IDispenseCommonCallBack");
            }
            if (i11 == 1598968902) {
                parcel2.writeString("com.transsnet.dispenselib.IDispenseCommonCallBack");
                return true;
            }
            if (i11 != 1) {
                return super.onTransact(i11, parcel, parcel2, i12);
            }
            N0(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void N0(String str, String str2);
}
