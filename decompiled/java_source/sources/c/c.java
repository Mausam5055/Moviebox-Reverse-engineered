package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public interface c extends IInterface {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f16964h = "android$support$customtabs$IEngagementSignalsCallback".replace('$', '.');

    public static abstract class a extends Binder implements c {

        /* JADX INFO: renamed from: c.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: loaded from: classes2.dex */
        private static class C0155a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f16965a;

            C0155a(IBinder iBinder) {
                this.f16965a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f16965a;
            }

            @Override // c.c
            public void onGreatestScrollPercentageIncreased(int i11, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f16964h);
                    parcelObtain.writeInt(i11);
                    b.d(parcelObtain, bundle, 0);
                    this.f16965a.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // c.c
            public void onSessionEnded(boolean z10, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f16964h);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    b.d(parcelObtain, bundle, 0);
                    this.f16965a.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // c.c
            public void onVerticalScrollEvent(boolean z10, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(c.f16964h);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    b.d(parcelObtain, bundle, 0);
                    this.f16965a.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, c.f16964h);
        }

        public static c Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(c.f16964h);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0155a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = c.f16964h;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i11 == 2) {
                onVerticalScrollEvent(parcel.readInt() != 0, (Bundle) b.c(parcel, Bundle.CREATOR));
            } else if (i11 == 3) {
                onGreatestScrollPercentageIncreased(parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
            } else {
                if (i11 != 4) {
                    return super.onTransact(i11, parcel, parcel2, i12);
                }
                onSessionEnded(parcel.readInt() != 0, (Bundle) b.c(parcel, Bundle.CREATOR));
            }
            return true;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
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

    void onGreatestScrollPercentageIncreased(int i11, Bundle bundle);

    void onSessionEnded(boolean z10, Bundle bundle);

    void onVerticalScrollEvent(boolean z10, Bundle bundle);
}
