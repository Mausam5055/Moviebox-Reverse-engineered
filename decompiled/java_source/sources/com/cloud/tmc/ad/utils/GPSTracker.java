package com.cloud.tmc.ad.utils;

import android.annotation.SuppressLint;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.kernel.utils.TraceLog;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;
import qk.a;

/* JADX INFO: loaded from: classes3.dex */
public class GPSTracker {
    private static int accu = 0;
    private static long coordTime = 0;
    private static String coordTimeStr = "";
    private static double latitude;
    private static Location location;
    private static double longitude;
    private static final AtomicInteger mFailTimes = new AtomicInteger(0);

    private GPSTracker() {
        getLocation();
    }

    private static boolean checkNeedRetry() {
        return latitude == 0.0d && longitude == 0.0d && mFailTimes.getAndIncrement() <= 1;
    }

    public static int getAccu() {
        updateLocation();
        return accu;
    }

    public static long getCoordTime() {
        updateLocation();
        return coordTime;
    }

    public static String getCoordTimeStr() {
        updateLocation();
        return coordTimeStr;
    }

    public static double getLatitude() {
        updateLocation();
        return latitude;
    }

    @SuppressLint({"MissingPermission"})
    private static void getLocation() {
        try {
            if (a.a() != null) {
                LocationManager locationManager = (LocationManager) a.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                boolean zIsProviderEnabled = locationManager.isProviderEnabled("gps");
                boolean zIsProviderEnabled2 = locationManager.isProviderEnabled("network");
                if (!zIsProviderEnabled && !zIsProviderEnabled2) {
                    return;
                }
                if (zIsProviderEnabled) {
                    Location lastKnownLocation = locationManager.getLastKnownLocation("gps");
                    location = lastKnownLocation;
                    updateGPSCoordinates(lastKnownLocation);
                }
                if (zIsProviderEnabled2 && location == null) {
                    TraceLog.d("ssp", "Positioning through the network");
                    Location lastKnownLocation2 = locationManager.getLastKnownLocation("network");
                    location = lastKnownLocation2;
                    updateGPSCoordinates(lastKnownLocation2);
                }
            }
        } catch (Throwable unused) {
            TraceLog.d("ssp", "Location Impossible to connect to LocationManager");
        }
        Location location2 = location;
        if (location2 != null) {
            updateGPSCoordinates(location2);
        }
    }

    public static double getLongitude() {
        updateLocation();
        return longitude;
    }

    private static void updateGPSCoordinates(Location location2) {
        if (location2 != null) {
            latitude = location2.getLatitude();
            longitude = location2.getLongitude();
            accu = (int) location2.getAccuracy();
            coordTime = location2.getTime();
            try {
                coordTimeStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(coordTime));
            } catch (Exception e11) {
                TraceLog.e(CommonLogUtil.TAG_AD, Log.getStackTraceString(e11));
            }
        }
    }

    private static void updateLocation() {
        if (checkNeedRetry()) {
            getLocation();
        }
    }
}
