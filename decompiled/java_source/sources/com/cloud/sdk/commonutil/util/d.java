package com.cloud.sdk.commonutil.util;

import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Location f23180a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static double f23181b = 0.0d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static double f23182c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f23183d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f23184e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f23185f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final AtomicInteger f23186g = new AtomicInteger(0);

    private static boolean a() {
        return f23181b == 0.0d && f23182c == 0.0d && f23186g.getAndIncrement() <= 1;
    }

    public static long b() {
        h();
        return f23184e;
    }

    public static String c() {
        h();
        return f23185f;
    }

    public static double d() {
        h();
        return f23181b;
    }

    private static void e() {
        try {
            if (e.a() != null) {
                LocationManager locationManager = (LocationManager) e.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                boolean zIsProviderEnabled = locationManager.isProviderEnabled("gps");
                boolean zIsProviderEnabled2 = locationManager.isProviderEnabled("network");
                if (!zIsProviderEnabled && !zIsProviderEnabled2) {
                    return;
                }
                if (zIsProviderEnabled) {
                    Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
                    f23180a = lastKnownLocation;
                    g(lastKnownLocation);
                }
                if (zIsProviderEnabled2 && f23180a == null) {
                    Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
                    f23180a = lastKnownLocation2;
                    g(lastKnownLocation2);
                }
            }
        } catch (Throwable unused) {
            c.Log().d("ssp", "Location Impossible to connect to LocationManager");
        }
        Location location = f23180a;
        if (location != null) {
            g(location);
        }
    }

    public static double f() {
        h();
        return f23182c;
    }

    private static void g(Location location) {
        if (location != null) {
            f23181b = location.getLatitude();
            f23182c = location.getLongitude();
            f23183d = (int) location.getAccuracy();
            f23184e = location.getTime();
            try {
                f23185f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(f23184e));
            } catch (Exception e11) {
                c.Log().e(Log.getStackTraceString(e11));
            }
        }
    }

    private static void h() {
        if (a()) {
            e();
        }
    }
}
