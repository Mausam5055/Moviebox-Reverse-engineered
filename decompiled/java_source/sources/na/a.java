package na;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import q8.b;
import q8.c;

/* JADX INFO: loaded from: classes4.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: na.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0846a extends b implements a {

        /* JADX INFO: renamed from: na.a$a$a, reason: collision with other inner class name */
        public static class C0847a extends q8.a implements a {
            C0847a(IBinder iBinder) {
                super(iBinder);
            }

            @Override // na.a
            public final Bundle w(Bundle bundle) {
                Parcel parcelY0 = Y0();
                c.b(parcelY0, bundle);
                Parcel parcelZ0 = Z0(parcelY0);
                Bundle bundle2 = (Bundle) c.a(parcelZ0, Bundle.CREATOR);
                parcelZ0.recycle();
                return bundle2;
            }
        }

        public static a Z0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new C0847a(iBinder);
        }

        @Override // q8.b
        protected final boolean Y0(int i11, Parcel parcel, Parcel parcel2) {
            if (i11 != 1) {
                return false;
            }
            Bundle bundleW = w((Bundle) c.a(parcel, Bundle.CREATOR));
            parcel2.writeNoException();
            c.c(parcel2, bundleW);
            return true;
        }
    }

    Bundle w(Bundle bundle);
}
