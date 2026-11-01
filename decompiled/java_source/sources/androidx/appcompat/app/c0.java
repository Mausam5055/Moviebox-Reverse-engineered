package androidx.appcompat.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
class c0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static c0 f1120d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LocationManager f1122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f1123c = new a();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1124a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f1125b;

        a() {
        }
    }

    c0(Context context, LocationManager locationManager) {
        this.f1121a = context;
        this.f1122b = locationManager;
    }

    static c0 a(Context context) {
        if (f1120d == null) {
            Context applicationContext = context.getApplicationContext();
            f1120d = new c0(applicationContext, (LocationManager) applicationContext.getSystemService(RequestParameters.SUBRESOURCE_LOCATION));
        }
        return f1120d;
    }

    private Location b() {
        Location locationC = androidx.core.content.f.b(this.f1121a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location locationC2 = androidx.core.content.f.b(this.f1121a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        if (locationC2 == null || locationC == null) {
            return locationC2 != null ? locationC2 : locationC;
        }
        return locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    private Location c(String str) {
        try {
            if (this.f1122b.isProviderEnabled(str)) {
                return this.f1122b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean e() {
        return this.f1123c.f1125b > System.currentTimeMillis();
    }

    private void f(Location location) {
        long j11;
        a aVar = this.f1123c;
        long jCurrentTimeMillis = System.currentTimeMillis();
        b0 b0VarB = b0.b();
        b0VarB.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        b0VarB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z10 = b0VarB.f1116c == 1;
        long j12 = b0VarB.f1115b;
        long j13 = b0VarB.f1114a;
        b0VarB.a(jCurrentTimeMillis + 86400000, location.getLatitude(), location.getLongitude());
        long j14 = b0VarB.f1115b;
        if (j12 == -1 || j13 == -1) {
            j11 = jCurrentTimeMillis + TmcConstants.MINI_POPWINDOW_MSG_BUBBLE_INTERVAL;
        } else {
            if (jCurrentTimeMillis <= j13) {
                j14 = jCurrentTimeMillis > j12 ? j13 : j12;
            }
            j11 = j14 + 60000;
        }
        aVar.f1124a = z10;
        aVar.f1125b = j11;
    }

    boolean d() {
        a aVar = this.f1123c;
        if (e()) {
            return aVar.f1124a;
        }
        Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return aVar.f1124a;
        }
        int i11 = Calendar.getInstance().get(11);
        return i11 < 6 || i11 >= 22;
    }
}
