package ak;

import android.location.Location;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f651a = new s();

    private s() {
    }

    public final String a(double d11, double d12, double d13, double d14) {
        float f11;
        try {
            float[] fArr = new float[1];
            Location.distanceBetween(d11, d12, d13, d14, fArr);
            f11 = fArr[0];
        } catch (Throwable unused) {
            f11 = -1.0f;
        }
        if (f11 < 0.1f) {
            return "<0.1m";
        }
        if (f11 < 1000.0f) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("%.1fm", Arrays.copyOf(new Object[]{Float.valueOf(f11)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
        String str2 = String.format("%.1fkm", Arrays.copyOf(new Object[]{Float.valueOf(f11 / 1000)}, 1));
        Intrinsics.g(str2, "format(...)");
        return str2;
    }

    public final float b(double d11, double d12, double d13, double d14) {
        try {
            float[] fArr = new float[1];
            Location.distanceBetween(d11, d12, d13, d14, fArr);
            return fArr[0];
        } catch (Throwable unused) {
            return -1.0f;
        }
    }
}
