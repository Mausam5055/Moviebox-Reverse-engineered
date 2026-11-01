package com.transsion.room.helper;

import android.app.Activity;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.Looper;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.libraries.places.api.Places;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.api.net.FindCurrentPlaceRequest;
import com.google.android.libraries.places.api.net.PlacesClient;
import com.permissionx.guolindev.callback.PermissionDialogClickType;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.room.api.bean.LocationPlace;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class LocationPlaceHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LocationPlaceHelper f51610a = new LocationPlaceHelper();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static PlacesClient f51611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static LocationCallback f51612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f51613d;

    private LocationPlaceHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(final FusedLocationProviderClient fusedLocationProviderClient) {
        int i11 = f51613d;
        if (i11 >= 3) {
            lg.a.f68839a.u("LocationP", "Location--update---- removeLocationUpdates, 超过上限3次，不再移除", true);
            return;
        }
        f51613d = i11 + 1;
        LocationCallback locationCallback = f51612c;
        if (locationCallback != null) {
            lg.a.f68839a.u("LocationP", "Location--update---- removeLocationUpdates", true);
            fusedLocationProviderClient.removeLocationUpdates(locationCallback).addOnCompleteListener(new OnCompleteListener() { // from class: com.transsion.room.helper.k
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    LocationPlaceHelper.B(fusedLocationProviderClient, task);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(FusedLocationProviderClient fusedLocationProviderClient, Task task) {
        Intrinsics.h(task, "task");
        if (task.isSuccessful()) {
            f51612c = null;
            lg.a.C0828a.z(lg.a.f68839a, "LocationP", "Location--update----成功移除监听", false, 4, null);
        } else {
            lg.a.C0828a.l(lg.a.f68839a, "LocationP", "Location--update----移除监听失败", false, 4, null);
            f51610a.A(fusedLocationProviderClient);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x0054  */
    public final LocationPlace l(double d11, double d12, Address address) {
        String addressLine;
        boolean z10;
        Integer numValueOf;
        String countryName;
        if ((address != null ? address.getMaxAddressLineIndex() : 0) >= 0) {
            addressLine = address != null ? address.getAddressLine(0) : null;
        } else {
            addressLine = "";
        }
        if (addressLine == null || addressLine.length() == 0) {
            if (addressLine != null) {
                if (address == null || (countryName = address.getCountryName()) == null) {
                    countryName = "-";
                }
                numValueOf = Integer.valueOf(StringsKt.o0(addressLine, countryName, 0, false, 6, null));
            } else {
                numValueOf = null;
            }
            if ((numValueOf != null ? numValueOf.intValue() : 0) < 5) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        ArrayList arrayList = new ArrayList();
        if ((address != null ? address.getLocality() : null) != null) {
            String locality = address.getLocality();
            Intrinsics.g(locality, "getLocality(...)");
            if (locality.length() > 0) {
                String locality2 = address.getLocality();
                Intrinsics.g(locality2, "getLocality(...)");
                arrayList.add(locality2);
            }
        }
        if ((address != null ? address.getSubLocality() : null) != null) {
            String subLocality = address.getSubLocality();
            Intrinsics.g(subLocality, "getSubLocality(...)");
            if (subLocality.length() > 0) {
                String subLocality2 = address.getSubLocality();
                Intrinsics.g(subLocality2, "getSubLocality(...)");
                arrayList.add(subLocality2);
            }
        }
        if ((address != null ? address.getThoroughfare() : null) != null) {
            String thoroughfare = address.getThoroughfare();
            Intrinsics.g(thoroughfare, "getThoroughfare(...)");
            if (thoroughfare.length() > 0) {
                String thoroughfare2 = address.getThoroughfare();
                Intrinsics.g(thoroughfare2, "getThoroughfare(...)");
                arrayList.add(thoroughfare2);
            }
        }
        if ((address != null ? address.getFeatureName() : null) != null) {
            String featureName = address.getFeatureName();
            Intrinsics.g(featureName, "getFeatureName(...)");
            if (featureName.length() > 0) {
                String featureName2 = address.getFeatureName();
                Intrinsics.g(featureName2, "getFeatureName(...)");
                arrayList.add(featureName2);
            }
        }
        String strS0 = z10 ? CollectionsKt.s0(arrayList, " ", null, null, 0, null, null, 62, null) : CollectionsKt.s0(CollectionsKt.U(arrayList), " ", null, null, 0, null, null, 62, null);
        LocationPlace locationPlace = new LocationPlace(null, null, null, null, 15, null);
        locationPlace.setName(strS0);
        locationPlace.setDistance("<1m");
        locationPlace.setAddress(addressLine);
        locationPlace.setLocationAddress(address);
        locationPlace.setCountryCode(address != null ? address.getCountryCode() : null);
        locationPlace.setLat(Double.valueOf(d11));
        locationPlace.setLon(Double.valueOf(d12));
        return locationPlace;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Address m(double d11, double d12) {
        try {
            List<Address> fromLocation = new Geocoder(Utils.a(), Locale.getDefault()).getFromLocation(d11, d12, 1);
            List<Address> list = fromLocation;
            if (list != null && !list.isEmpty()) {
                return fromLocation.get(0);
            }
            return null;
        } catch (Throwable th2) {
            lg.a.C0828a.l(lg.a.f68839a, "LocationP", "Location-------------- ll2address error:" + th2, false, 4, null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(FusedLocationProviderClient fusedLocationProviderClient, Function1 function1, Task task) {
        Intrinsics.h(task, "task");
        if (!task.isSuccessful()) {
            lg.a.f68839a.i("LocationP", "Location-------------- fail: " + task.getException() + ", do update", true);
            f51610a.y(fusedLocationProviderClient, function1);
            return;
        }
        Location location = (Location) task.getResult();
        if (location == null) {
            lg.a.f68839a.i("LocationP", "Location-------------- fail: location null---do update", true);
            f51610a.y(fusedLocationProviderClient, function1);
            return;
        }
        double latitude = location.getLatitude();
        double longitude = location.getLongitude();
        lg.a.f68839a.c("LocationP", "Location--------------1 success " + longitude + ", :" + latitude, true);
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocationPlaceHelper$getCurrentLocation$2$1(latitude, longitude, function1, null), 3, null);
    }

    private final void q(double d11, double d12, Function1 function1) {
        String strR = r();
        if (strR == null || strR.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, "LocationP", "getNearbyPlaces apiKey isNullOrEmpty", false, 4, null);
            function1.invoke(null);
            return;
        }
        if (!Places.isInitialized()) {
            lg.a.C0828a.r(lg.a.f68839a, "LocationP", new String[]{"getNearbyPlaces initialize place"}, false, 4, null);
            Places.initialize(Utils.a(), strR);
        }
        if (f51611b == null) {
            f51611b = Places.createClient(Utils.a());
        }
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new LocationPlaceHelper$getNearbyPlacesWithDetailApi$1(function1, FindCurrentPlaceRequest.newInstance(CollectionsKt.o(Place.Field.NAME, Place.Field.ADDRESS, Place.Field.LAT_LNG)), new LatLng(d11, d12), null), 3, null);
    }

    private final String r() {
        String string;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_lo_place_key", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (string = value.toString()) == null) {
            return null;
        }
        return string;
    }

    private final int s() {
        Integer numV;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_lo_place_api", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (numV = StringsKt.v(value)) == null) {
            return 1;
        }
        return numV.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(boolean z10, cf.f scope, List deniedList, boolean z11, boolean z12) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (!z11) {
            lg.a.C0828a.f(lg.a.f68839a, "LocationP", "location 请求权限之后，", false, 4, null);
            return;
        }
        if (!z12) {
            lg.a.C0828a.f(lg.a.f68839a, "LocationP", "直接请求权限", false, 4, null);
            scope.b(deniedList);
        } else if (!z10) {
            scope.a(deniedList);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "LocationP", "请求权限，需要跳到设置页，先展示提示弹窗", false, 4, null);
            scope.c(deniedList, new bf.a(null, Utils.a().getString(R$string.location_permission_dialog_tips), Utils.a().getString(R$string.Enable), Integer.valueOf(R$drawable.ic_location_permission_tips), Integer.valueOf(R$color.white_20), 1, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(FragmentActivity fragmentActivity, Function1 function1, boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        if (z10 && grantedList.size() == 1 && !ActivityCompat.j(fragmentActivity, (String) grantedList.get(0))) {
            ye.c.f78993a.d().putBoolean((String) grantedList.get(0), false);
        }
        lg.a.C0828a.f(lg.a.f68839a, "LocationP", "location 请求权限结果:" + z10, false, 4, null);
        function1.invoke(Boolean.valueOf(z10));
    }

    private final void x(Double d11, Double d12, Function1 function1) {
        if (d11 == null || d12 == null) {
            function1.invoke(null);
            return;
        }
        String strR = r();
        if (strR == null || strR.length() == 0) {
            function1.invoke(null);
            return;
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocationPlaceHelper$searchNearbyPlaces$1(d11 + "," + d12, 20000, strR, d11, d12, function1, null), 3, null);
    }

    private final void y(final FusedLocationProviderClient fusedLocationProviderClient, final Function1 function1) {
        LocationRequest locationRequestBuild = new LocationRequest.Builder(100, 10000L).setWaitForAccurateLocation(true).setMinUpdateIntervalMillis(5000L).build();
        Intrinsics.g(locationRequestBuild, "build(...)");
        LocationCallback locationCallback = new LocationCallback() { // from class: com.transsion.room.helper.LocationPlaceHelper$startRealTimeUpdates$1
            @Override // com.google.android.gms.location.LocationCallback
            public void onLocationAvailability(LocationAvailability availability) {
                Intrinsics.h(availability, "availability");
                if (availability.isLocationAvailable()) {
                    return;
                }
                lg.a.f68839a.x("LocationP", "Location services unavailable", true);
            }

            @Override // com.google.android.gms.location.LocationCallback
            public void onLocationResult(LocationResult result) {
                Intrinsics.h(result, "result");
                Location lastLocation = result.getLastLocation();
                if (lastLocation != null) {
                    FusedLocationProviderClient fusedLocationProviderClient2 = fusedLocationProviderClient;
                    Function1 function2 = function1;
                    LocationPlaceHelper.f51613d = 0;
                    LocationPlaceHelper.f51610a.A(fusedLocationProviderClient2);
                    double latitude = lastLocation.getLatitude();
                    double longitude = lastLocation.getLongitude();
                    lg.a.f68839a.c("LocationP", "Location--update--------------1 success " + latitude + ", :" + longitude, true);
                    if (kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1(latitude, longitude, function2, null), 3, null) != null) {
                        return;
                    }
                }
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$2$1(function1, null), 3, null);
            }
        };
        f51612c = locationCallback;
        Intrinsics.f(locationCallback, "null cannot be cast to non-null type com.google.android.gms.location.LocationCallback");
        fusedLocationProviderClient.requestLocationUpdates(locationRequestBuild, locationCallback, Looper.getMainLooper()).addOnFailureListener(new OnFailureListener() { // from class: com.transsion.room.helper.j
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                LocationPlaceHelper.z(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(Exception e11) {
        Intrinsics.h(e11, "e");
        lg.a.C0828a.l(lg.a.f68839a, "LocationP", "Updates request failed: " + e11.getMessage(), false, 4, null);
    }

    public final void n(FragmentActivity activity, final Function1 callback) {
        Double dS;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "LocationP", "Location-------------- start getCurrentLocation", false, 4, null);
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("key_lo_mock_test_lab_lat", "");
        if (string != null && string.length() != 0 && StringsKt.c0(string, "|", false, 2, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                List listS0 = StringsKt.S0(string, new String[]{"|"}, false, 0, 6, null);
                Double dS2 = StringsKt.s((String) listS0.get(0));
                if (dS2 != null && (dS = StringsKt.s((String) listS0.get(1))) != null) {
                    String str = (String) listS0.get(2);
                    String str2 = (String) listS0.get(3);
                    LocationPlace locationPlace = new LocationPlace(null, null, null, null, 15, null);
                    locationPlace.setName(str);
                    locationPlace.setDistance("<1m");
                    locationPlace.setAddress(str2);
                    locationPlace.setLat(dS2);
                    locationPlace.setLon(dS);
                    c0828a.c("LocationP", "Location-------------- mock 的定位数据 name:" + str + ",address:" + str2 + ".不使用实际定位,需要真实定位请求清楚mock数据", true);
                    callback.invoke(locationPlace);
                    return;
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        final FusedLocationProviderClient fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient((Activity) activity);
        Intrinsics.g(fusedLocationProviderClient, "getFusedLocationProviderClient(...)");
        fusedLocationProviderClient.getLastLocation().addOnCompleteListener(activity, new OnCompleteListener() { // from class: com.transsion.room.helper.f
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                LocationPlaceHelper.o(fusedLocationProviderClient, callback, task);
            }
        });
    }

    public final void p(double d11, double d12, Function1 callback) {
        Intrinsics.h(callback, "callback");
        int iS = s();
        if (iS == 0) {
            lg.a.f68839a.c("LocationP", "place api use detail", true);
            q(d11, d12, callback);
        } else {
            if (iS == 1) {
                lg.a.f68839a.c("LocationP", "place api use search", true);
                x(Double.valueOf(d11), Double.valueOf(d12), callback);
                return;
            }
            lg.a.f68839a.c("LocationP", "place api ,null " + iS, true);
            callback.invoke(null);
        }
    }

    public final void t(final FragmentActivity activity, final boolean z10, final Function1 callback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        ye.c.f78993a.e(activity).b("android.permission.ACCESS_FINE_LOCATION").b().c(new ze.b() { // from class: com.transsion.room.helper.g
            @Override // ze.b
            public final void a(cf.f fVar, List list, boolean z11, boolean z12) {
                LocationPlaceHelper.u(z10, fVar, list, z11, z12);
            }
        }).d(new ze.a() { // from class: com.transsion.room.helper.h
            @Override // ze.a
            public final void a(BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
                LocationPlaceHelper.v(baseDialog, bool, permissionDialogClickType);
            }
        }).a(new ze.c() { // from class: com.transsion.room.helper.i
            @Override // ze.c
            public final void a(boolean z11, List list, List list2) {
                LocationPlaceHelper.w(activity, callback, z11, list, list2);
            }
        });
    }
}
