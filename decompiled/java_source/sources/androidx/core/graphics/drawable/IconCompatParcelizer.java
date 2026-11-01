package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f8142a = versionedParcel.p(iconCompat.f8142a, 1);
        iconCompat.f8144c = versionedParcel.j(iconCompat.f8144c, 2);
        iconCompat.f8145d = versionedParcel.r(iconCompat.f8145d, 3);
        iconCompat.f8146e = versionedParcel.p(iconCompat.f8146e, 4);
        iconCompat.f8147f = versionedParcel.p(iconCompat.f8147f, 5);
        iconCompat.f8148g = (ColorStateList) versionedParcel.r(iconCompat.f8148g, 6);
        iconCompat.f8150i = versionedParcel.t(iconCompat.f8150i, 7);
        iconCompat.f8151j = versionedParcel.t(iconCompat.f8151j, 8);
        iconCompat.t();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(true, true);
        iconCompat.u(versionedParcel.f());
        int i11 = iconCompat.f8142a;
        if (-1 != i11) {
            versionedParcel.F(i11, 1);
        }
        byte[] bArr = iconCompat.f8144c;
        if (bArr != null) {
            versionedParcel.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f8145d;
        if (parcelable != null) {
            versionedParcel.H(parcelable, 3);
        }
        int i12 = iconCompat.f8146e;
        if (i12 != 0) {
            versionedParcel.F(i12, 4);
        }
        int i13 = iconCompat.f8147f;
        if (i13 != 0) {
            versionedParcel.F(i13, 5);
        }
        ColorStateList colorStateList = iconCompat.f8148g;
        if (colorStateList != null) {
            versionedParcel.H(colorStateList, 6);
        }
        String str = iconCompat.f8150i;
        if (str != null) {
            versionedParcel.J(str, 7);
        }
        String str2 = iconCompat.f8151j;
        if (str2 != null) {
            versionedParcel.J(str2, 8);
        }
    }
}
