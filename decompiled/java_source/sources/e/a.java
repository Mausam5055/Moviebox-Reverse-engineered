package e;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f61461l = "android$support$v4$app$INotificationSideChannel".replace('$', '.');

    /* JADX INFO: renamed from: e.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0738a extends Binder implements a {

        /* JADX INFO: renamed from: e.a$a$a, reason: collision with other inner class name */
        private static class C0739a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f61462a;

            C0739a(IBinder iBinder) {
                this.f61462a = iBinder;
            }

            @Override // e.a
            public void K(String str, int i11, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f61461l);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str2);
                    this.f61462a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // e.a
            public void T0(String str, int i11, String str2, Notification notification) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f61461l);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str2);
                    b.d(parcelObtain, notification, 0);
                    this.f61462a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f61462a;
            }

            @Override // e.a
            public void p0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.f61461l);
                    parcelObtain.writeString(str);
                    this.f61462a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0738a() {
            attachInterface(this, a.f61461l);
        }

        public static a Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.f61461l);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0739a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = a.f61461l;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i11 == 1) {
                T0(parcel.readString(), parcel.readInt(), parcel.readString(), (Notification) b.c(parcel, Notification.CREATOR));
            } else if (i11 == 2) {
                K(parcel.readString(), parcel.readInt(), parcel.readString());
            } else {
                if (i11 != 3) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                p0(parcel.readString());
            }
            return true;
        }
    }

    public static class b {
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

    void K(String str, int i11, String str2);

    void T0(String str, int i11, String str2, Notification notification);

    void p0(String str);
}
