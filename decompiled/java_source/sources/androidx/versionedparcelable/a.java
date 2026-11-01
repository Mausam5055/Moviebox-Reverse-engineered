package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static c a(Parcelable parcelable) {
        if (parcelable instanceof ParcelImpl) {
            return ((ParcelImpl) parcelable).getVersionedParcel();
        }
        throw new IllegalArgumentException("Invalid parcel");
    }

    public static c b(Bundle bundle, String str) {
        try {
            Bundle bundle2 = (Bundle) bundle.getParcelable(str);
            if (bundle2 == null) {
                return null;
            }
            bundle2.setClassLoader(a.class.getClassLoader());
            return a(bundle2.getParcelable("a"));
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static void c(Bundle bundle, String str, c cVar) {
        if (cVar == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("a", d(cVar));
        bundle.putParcelable(str, bundle2);
    }

    public static Parcelable d(c cVar) {
        return new ParcelImpl(cVar);
    }
}
