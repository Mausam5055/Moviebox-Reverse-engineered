package c1;

import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.location.FusedLocationProviderClient;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: c1.a$a, reason: collision with other inner class name */
    private static class C0158a {
        static float a(Location location) {
            return location.getBearingAccuracyDegrees();
        }

        static float b(Location location) {
            return location.getSpeedAccuracyMetersPerSecond();
        }

        static float c(Location location) {
            return location.getVerticalAccuracyMeters();
        }

        static boolean d(Location location) {
            return location.hasBearingAccuracy();
        }

        static boolean e(Location location) {
            return location.hasSpeedAccuracy();
        }

        static boolean f(Location location) {
            return location.hasVerticalAccuracy();
        }
    }

    static class b {
        static boolean a(Location location) {
            return location.isMock();
        }
    }

    private static boolean a(Location location, String str) {
        Bundle extras = location.getExtras();
        return extras != null && extras.containsKey(str);
    }

    public static float b(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return C0158a.a(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat("bearingAccuracy", 0.0f);
    }

    public static long c(Location location) {
        return TimeUnit.NANOSECONDS.toMillis(location.getElapsedRealtimeNanos());
    }

    public static float d(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return C0158a.b(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat("speedAccuracy", 0.0f);
    }

    public static float e(Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return C0158a.c(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(FusedLocationProviderClient.KEY_VERTICAL_ACCURACY, 0.0f);
    }

    public static boolean f(Location location) {
        return Build.VERSION.SDK_INT >= 26 ? C0158a.d(location) : a(location, "bearingAccuracy");
    }

    public static boolean g(Location location) {
        return Build.VERSION.SDK_INT >= 26 ? C0158a.e(location) : a(location, "speedAccuracy");
    }

    public static boolean h(Location location) {
        return Build.VERSION.SDK_INT >= 26 ? C0158a.f(location) : a(location, FusedLocationProviderClient.KEY_VERTICAL_ACCURACY);
    }

    public static boolean i(Location location) {
        return Build.VERSION.SDK_INT >= 31 ? b.a(location) : location.isFromMockProvider();
    }
}
