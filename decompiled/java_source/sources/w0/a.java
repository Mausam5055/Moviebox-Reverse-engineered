package w0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f77489m = "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportCallback".replace('$', '.');

    /* JADX INFO: renamed from: w0.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0954a extends Binder implements a {

        /* JADX INFO: renamed from: w0.a$a$a, reason: collision with other inner class name */
        private static class C0955a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f77490a;

            C0955a(IBinder iBinder) {
                this.f77490a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f77490a;
            }
        }

        public AbstractBinderC0954a() {
            attachInterface(this, a.f77489m);
        }

        public static a Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(a.f77489m);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0955a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = a.f77489m;
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
            V(parcel.readInt() != 0, parcel.readInt() != 0);
            return true;
        }
    }

    void V(boolean z10, boolean z11);
}
