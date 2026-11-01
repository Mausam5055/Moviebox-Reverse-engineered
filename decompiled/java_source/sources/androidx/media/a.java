package androidx.media;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static boolean a(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            return bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1;
        }
        if (bundle2 == null) {
            return bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1;
        }
        return bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle2.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
    }

    public static boolean b(Bundle bundle, Bundle bundle2) {
        int i11;
        int i12;
        int i13;
        int i14 = bundle == null ? -1 : bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i15 = bundle2 == null ? -1 : bundle2.getInt("android.media.browse.extra.PAGE", -1);
        int i16 = bundle == null ? -1 : bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        int i17 = bundle2 == null ? -1 : bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        int i18 = Integer.MAX_VALUE;
        if (i14 == -1 || i16 == -1) {
            i11 = Integer.MAX_VALUE;
            i12 = 0;
        } else {
            i12 = i14 * i16;
            i11 = (i16 + i12) - 1;
        }
        if (i15 == -1 || i17 == -1) {
            i13 = 0;
        } else {
            i13 = i15 * i17;
            i18 = (i17 + i13) - 1;
        }
        return i11 >= i13 && i18 >= i12;
    }
}
