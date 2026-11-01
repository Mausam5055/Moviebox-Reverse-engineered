package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public interface d extends IInterface {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f16966i = "android$support$customtabs$IPostMessageService".replace('$', '.');

    public static abstract class a extends Binder implements d {
        public a() {
            attachInterface(this, d.f16966i);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = d.f16966i;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i11 == 2) {
                m(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), (Bundle) b.b(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            } else {
                if (i11 != 3) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                E0(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), parcel.readString(), (Bundle) b.b(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
            }
            return true;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object b(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void E0(c.a aVar, String str, Bundle bundle);

    void m(c.a aVar, Bundle bundle);
}
