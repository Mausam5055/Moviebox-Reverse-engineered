package c;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f16962g = "android$support$customtabs$ICustomTabsService".replace('$', '.');

    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: c.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: loaded from: classes2.dex */
        private static class C0153a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f16963a;

            C0153a(IBinder iBinder) {
                this.f16963a = iBinder;
            }

            @Override // c.b
            public boolean B(c.a aVar, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16962g);
                    parcelObtain.writeStrongInterface(aVar);
                    C0154b.f(parcelObtain, bundle, 0);
                    this.f16963a.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // c.b
            public boolean Q0(c.a aVar, IBinder iBinder, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16962g);
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeStrongBinder(iBinder);
                    C0154b.f(parcelObtain, bundle, 0);
                    this.f16963a.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // c.b
            public boolean U(c.a aVar, Uri uri, Bundle bundle, List list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16962g);
                    parcelObtain.writeStrongInterface(aVar);
                    C0154b.f(parcelObtain, uri, 0);
                    C0154b.f(parcelObtain, bundle, 0);
                    C0154b.e(parcelObtain, list, 0);
                    this.f16963a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // c.b
            public int W(c.a aVar, String str, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16962g);
                    parcelObtain.writeStrongInterface(aVar);
                    parcelObtain.writeString(str);
                    C0154b.f(parcelObtain, bundle, 0);
                    this.f16963a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f16963a;
            }

            @Override // c.b
            public boolean d(c.a aVar, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16962g);
                    parcelObtain.writeStrongInterface(aVar);
                    C0154b.f(parcelObtain, bundle, 0);
                    this.f16963a.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // c.b
            public boolean q(c.a aVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16962g);
                    parcelObtain.writeStrongInterface(aVar);
                    this.f16963a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // c.b
            public boolean w0(long j11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(b.f16962g);
                    parcelObtain.writeLong(j11);
                    this.f16963a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, b.f16962g);
        }

        public static b Y0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(b.f16962g);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0153a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i11, Parcel parcel, Parcel parcel2, int i12) {
            String str = b.f16962g;
            if (i11 >= 1 && i11 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i11 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i11) {
                case 2:
                    boolean zW0 = w0(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zW0 ? 1 : 0);
                    return true;
                case 3:
                    boolean zQ = q(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zQ ? 1 : 0);
                    return true;
                case 4:
                    c.a aVarY0 = c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder());
                    Uri uri = (Uri) C0154b.d(parcel, Uri.CREATOR);
                    Parcelable.Creator creator = Bundle.CREATOR;
                    boolean zU = U(aVarY0, uri, (Bundle) C0154b.d(parcel, creator), parcel.createTypedArrayList(creator));
                    parcel2.writeNoException();
                    parcel2.writeInt(zU ? 1 : 0);
                    return true;
                case 5:
                    Bundle bundleT = t(parcel.readString(), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    C0154b.f(parcel2, bundleT, 1);
                    return true;
                case 6:
                    boolean zG = g(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zG ? 1 : 0);
                    return true;
                case 7:
                    boolean zX0 = x0(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), (Uri) C0154b.d(parcel, Uri.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zX0 ? 1 : 0);
                    return true;
                case 8:
                    int iW = W(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), parcel.readString(), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(iW);
                    return true;
                case 9:
                    boolean zL0 = l0(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), parcel.readInt(), (Uri) C0154b.d(parcel, Uri.CREATOR), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zL0 ? 1 : 0);
                    return true;
                case 10:
                    boolean zD = d(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zD ? 1 : 0);
                    return true;
                case 11:
                    boolean zV0 = V0(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), (Uri) C0154b.d(parcel, Uri.CREATOR), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zV0 ? 1 : 0);
                    return true;
                case 12:
                    boolean zT = T(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), (Uri) C0154b.d(parcel, Uri.CREATOR), parcel.readInt(), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zT ? 1 : 0);
                    return true;
                case 13:
                    boolean zB = B(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zB ? 1 : 0);
                    return true;
                case 14:
                    boolean zQ0 = Q0(c.a.AbstractBinderC0151a.Y0(parcel.readStrongBinder()), parcel.readStrongBinder(), (Bundle) C0154b.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zQ0 ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i11, parcel, parcel2, i12);
            }
        }
    }

    /* JADX INFO: renamed from: c.b$b, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes2.dex */
    public static class C0154b {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object d(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void e(Parcel parcel, List list, int i11) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i12 = 0; i12 < size; i12++) {
                f(parcel, (Parcelable) list.get(i12), i11);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void f(Parcel parcel, Parcelable parcelable, int i11) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i11);
            }
        }
    }

    boolean B(c.a aVar, Bundle bundle);

    boolean Q0(c.a aVar, IBinder iBinder, Bundle bundle);

    boolean T(c.a aVar, Uri uri, int i11, Bundle bundle);

    boolean U(c.a aVar, Uri uri, Bundle bundle, List list);

    boolean V0(c.a aVar, Uri uri, Bundle bundle);

    int W(c.a aVar, String str, Bundle bundle);

    boolean d(c.a aVar, Bundle bundle);

    boolean g(c.a aVar, Bundle bundle);

    boolean l0(c.a aVar, int i11, Uri uri, Bundle bundle);

    boolean q(c.a aVar);

    Bundle t(String str, Bundle bundle);

    boolean w0(long j11);

    boolean x0(c.a aVar, Uri uri);
}
