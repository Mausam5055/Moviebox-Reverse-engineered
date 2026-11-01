package zh;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: zh.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0977a extends Binder implements a {

        /* JADX INFO: renamed from: zh.a$a$a, reason: collision with other inner class name */
        private static class C0978a implements a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static a f79421b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f79422a;

            C0978a(IBinder iBinder) {
                this.f79422a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f79422a;
            }

            @Override // zh.a
            public String getId() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    if (!this.f79422a.transact(1, parcelObtain, parcelObtain2, 0) && AbstractBinderC0977a.Z0() != null) {
                        return AbstractBinderC0977a.Z0().getId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0977a() {
            attachInterface(this, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        }

        public static a Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0978a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a Z0() {
            return C0978a.f79421b;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            if (i11 == 1) {
                parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                String id2 = getId();
                parcel2.writeNoException();
                parcel2.writeString(id2);
                return true;
            }
            if (i11 != 2) {
                if (i11 != 1598968902) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                parcel2.writeString("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                return true;
            }
            parcel.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            boolean zIsLimitAdTrackingEnabled = isLimitAdTrackingEnabled(parcel.readInt() != 0);
            parcel2.writeNoException();
            parcel2.writeInt(zIsLimitAdTrackingEnabled ? 1 : 0);
            return true;
        }
    }

    String getId();

    boolean isLimitAdTrackingEnabled(boolean z10);
}
