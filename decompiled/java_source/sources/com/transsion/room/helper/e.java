package com.transsion.room.helper;

import android.app.Activity;
import android.app.PendingIntent;
import android.location.LocationManager;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements aq.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f51622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Function1 f51623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.activity.result.b f51624c;

    public e(Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f51622a = fragment;
        androidx.activity.result.b bVarRegisterForActivityResult = fragment.registerForActivityResult(new f.k(), new androidx.activity.result.a() { // from class: com.transsion.room.helper.a
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                e.g(this.f51618a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.f51624c = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(e eVar, ActivityResult result) {
        Intrinsics.h(result, "result");
        Function1 function1 = eVar.f51623b;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(result.getResultCode() == -1));
        }
        eVar.f51623b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(Function1 function1, LocationSettingsResponse locationSettingsResponse) {
        function1.invoke(Boolean.TRUE);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(Function1 function1, Object obj) {
        function1.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(e eVar, Exception exception) {
        Intrinsics.h(exception, "exception");
        if (exception instanceof ResolvableApiException) {
            try {
                PendingIntent resolution = ((ResolvableApiException) exception).getResolution();
                Intrinsics.g(resolution, "getResolution(...)");
                eVar.f51624c.a(new IntentSenderRequest.a(resolution).a());
            } catch (Throwable unused) {
            }
        }
    }

    @Override // aq.a
    public void a(final Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f51623b = callback;
        LocationRequest locationRequestCreate = LocationRequest.create();
        locationRequestCreate.setPriority(100);
        Intrinsics.g(locationRequestCreate, "apply(...)");
        LocationSettingsRequest.Builder builderAddLocationRequest = new LocationSettingsRequest.Builder().addLocationRequest(locationRequestCreate);
        Intrinsics.g(builderAddLocationRequest, "addLocationRequest(...)");
        FragmentActivity activity = this.f51622a.getActivity();
        if (activity == null) {
            callback.invoke(Boolean.FALSE);
            return;
        }
        SettingsClient settingsClient = LocationServices.getSettingsClient((Activity) activity);
        Intrinsics.g(settingsClient, "getSettingsClient(...)");
        Task<LocationSettingsResponse> taskCheckLocationSettings = settingsClient.checkLocationSettings(builderAddLocationRequest.build());
        Intrinsics.g(taskCheckLocationSettings, "checkLocationSettings(...)");
        final Function1 function1 = new Function1() { // from class: com.transsion.room.helper.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.h(callback, (LocationSettingsResponse) obj);
            }
        };
        taskCheckLocationSettings.addOnSuccessListener(new OnSuccessListener() { // from class: com.transsion.room.helper.c
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                e.i(function1, obj);
            }
        });
        taskCheckLocationSettings.addOnFailureListener(new OnFailureListener() { // from class: com.transsion.room.helper.d
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                e.j(this.f51621a, exc);
            }
        });
    }

    @Override // aq.a
    public boolean b() {
        LocationManager locationManager = (LocationManager) Utils.a().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
        Intrinsics.e(locationManager);
        return locationManager.isProviderEnabled("gps");
    }
}
