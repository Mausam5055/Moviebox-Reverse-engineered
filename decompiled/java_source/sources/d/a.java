package d;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f60962j = "android$support$customtabs$trusted$ITrustedWebActivityCallback".replace('$', '.');

    /* JADX INFO: renamed from: d.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0725a extends Binder implements a {

        /* JADX INFO: renamed from: d.a$a$a, reason: collision with other inner class name */
        private static class C0726a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f60963a;

            C0726a(IBinder iBinder) {
                this.f60963a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f60963a;
            }
        }

        public AbstractBinderC0725a() {
            attachInterface(this, a.f60962j);
        }

        public static a Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.f60962j);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0726a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = a.f60962j;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i11 != 2) {
                return super.onTransact(i11, parcel, parcel2, i12);
            }
            R0(parcel.readString(), (Bundle) b.b(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }

    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object b(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void R0(String str, Bundle bundle);
}
