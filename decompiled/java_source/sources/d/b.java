package d;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f60964k = "android$support$customtabs$trusted$ITrustedWebActivityService".replace('$', '.');

    public static abstract class a extends Binder implements b {
        public a() {
            attachInterface(this, b.f60964k);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = b.f60964k;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i11) {
                case 2:
                    Bundle bundleP = P((Bundle) C0727b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0727b.d(parcel2, bundleP, 1);
                    return true;
                case 3:
                    H0((Bundle) C0727b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    int iC0 = C0();
                    parcel2.writeNoException();
                    parcel2.writeInt(iC0);
                    return true;
                case 5:
                    Bundle bundleK0 = k0();
                    parcel2.writeNoException();
                    C0727b.d(parcel2, bundleK0, 1);
                    return true;
                case 6:
                    Bundle bundleD0 = D0((Bundle) C0727b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0727b.d(parcel2, bundleD0, 1);
                    return true;
                case 7:
                    Bundle bundleG = G();
                    parcel2.writeNoException();
                    C0727b.d(parcel2, bundleG, 1);
                    return true;
                case 8:
                default:
                    return super.onTransact(i11, parcel, parcel2, i12);
                case 9:
                    Bundle bundleZ = z(parcel.readString(), (Bundle) C0727b.c(parcel, Bundle.CREATOR), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    C0727b.d(parcel2, bundleZ, 1);
                    return true;
            }
        }
    }

    /* JADX INFO: renamed from: d.b$b, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    public static class C0727b {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d(Parcel parcel, Parcelable parcelable, int i11) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i11);
            }
        }
    }

    int C0();

    Bundle D0(Bundle bundle);

    Bundle G();

    void H0(Bundle bundle);

    Bundle P(Bundle bundle);

    Bundle k0();

    Bundle z(String str, Bundle bundle, IBinder iBinder);
}
