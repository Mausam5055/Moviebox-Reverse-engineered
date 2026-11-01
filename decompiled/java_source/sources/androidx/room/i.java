package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface i extends IInterface {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f14696d = "androidx$room$IMultiInstanceInvalidationCallback".replace('$', '.');

    public static abstract class a extends Binder implements i {

        /* JADX INFO: renamed from: androidx.room.i$a$a, reason: collision with other inner class name */
        private static class C0117a implements i {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f14697a;

            C0117a(IBinder iBinder) {
                this.f14697a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14697a;
            }

            @Override // androidx.room.i
            public void n(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(i.f14696d);
                    parcelObtain.writeStringArray(strArr);
                    this.f14697a.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, i.f14696d);
        }

        public static i Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(i.f14696d);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof i)) ? new C0117a(iBinder) : (i) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = i.f14696d;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i11 != 1) {
                return super.onTransact(i11, parcel, parcel2, i12);
            }
            n(parcel.createStringArray());
            return true;
        }
    }

    void n(String[] strArr);
}
