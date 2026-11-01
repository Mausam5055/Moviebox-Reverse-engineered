package oh;

import android.support.v4.media.session.PlaybackStateCompat;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static final String a(long j11, int i11) {
        if (j11 < 0) {
            return "";
        }
        if (j11 < 1024) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(Locale.ENGLISH, "%." + i11 + "fB", Arrays.copyOf(new Object[]{Double.valueOf(j11)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (j11 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str2 = String.format(Locale.ENGLISH, "%." + i11 + "fKB", Arrays.copyOf(new Object[]{Double.valueOf(j11 / ((double) 1024))}, 1));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        if (j11 < 1073741824) {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f67289a;
            String str3 = String.format(Locale.ENGLISH, "%." + i11 + "fMB", Arrays.copyOf(new Object[]{Double.valueOf(j11 / ((double) 1048576))}, 1));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
        StringCompanionObject stringCompanionObject4 = StringCompanionObject.f67289a;
        String str4 = String.format(Locale.ENGLISH, "%." + i11 + "fGB", Arrays.copyOf(new Object[]{Double.valueOf(j11 / ((double) 1073741824))}, 1));
        Intrinsics.g(str4, "format(...)");
        return str4;
    }

    public static final String b(long j11, int i11, int i12) {
        if (j11 < 0) {
            return "";
        }
        if (j11 < 1024) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(Locale.ENGLISH, "%." + i12 + "fB", Arrays.copyOf(new Object[]{Double.valueOf(j11)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (j11 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str2 = String.format(Locale.ENGLISH, "%." + i12 + "fKB", Arrays.copyOf(new Object[]{Double.valueOf(j11 / ((double) 1024))}, 1));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        if (j11 < 1073741824) {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f67289a;
            String str3 = String.format(Locale.ENGLISH, "%." + i11 + "fMB", Arrays.copyOf(new Object[]{Double.valueOf(j11 / ((double) 1048576))}, 1));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
        StringCompanionObject stringCompanionObject4 = StringCompanionObject.f67289a;
        String str4 = String.format(Locale.ENGLISH, "%." + i11 + "fGB", Arrays.copyOf(new Object[]{Double.valueOf(j11 / ((double) 1073741824))}, 1));
        Intrinsics.g(str4, "format(...)");
        return str4;
    }
}
