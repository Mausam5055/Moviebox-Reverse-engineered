package com.transsion.transfer.wifi.permission;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import com.blankj.utilcode.util.Utils;
import com.transsion.transfer.R$drawable;
import com.transsion.transfer.R$string;
import com.transsion.transfer.wifi.bean.PermissionState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f55906a = new d();

    private d() {
    }

    private final boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return Settings.System.canWrite(context);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final PermissionsBean d(String str) {
        switch (str.hashCode()) {
            case -2078357533:
                if (!str.equals("android.permission.WRITE_SETTINGS")) {
                    return null;
                }
                int i11 = R$drawable.transfer_wifi_permissions_write_settings;
                String string = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_write_settings);
                String string2 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_write_settings_tip);
                PermissionState permissionState = PermissionState.PERMISSION_DENIED;
                String string3 = Utils.a().getResources().getString(R$string.wifi_setting);
                Intrinsics.g(string3, "getString(...)");
                return new PermissionsBean(0, i11, string, string2, permissionState, "android.permission.WRITE_SETTINGS", string3);
            case -1888586689:
                if (!str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    return null;
                }
                int i12 = R$drawable.transfer_wifi_permissions_location;
                String string4 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_location_title);
                String string5 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_location_tip);
                PermissionState permissionState2 = PermissionState.PERMISSION_DENIED;
                String string6 = Utils.a().getResources().getString(R$string.wifi_setting);
                Intrinsics.g(string6, "getString(...)");
                return new PermissionsBean(0, i12, string4, string5, permissionState2, "android.permission.ACCESS_FINE_LOCATION", string6);
            case -1208777349:
                if (!str.equals("mb.permission.WIFI")) {
                    return null;
                }
                int i13 = R$drawable.transfer_wifi_permissions_wifi;
                String string7 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_wifi_title);
                String string8 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_wifi_tip);
                PermissionState permissionState3 = PermissionState.PERMISSION_DENIED;
                String string9 = Utils.a().getResources().getString(R$string.wifi_setting);
                Intrinsics.g(string9, "getString(...)");
                return new PermissionsBean(0, i13, string7, string8, permissionState3, "mb.permission.WIFI", string9);
            case -909527021:
                if (!str.equals("android.permission.NEARBY_WIFI_DEVICES") || Build.VERSION.SDK_INT < 33) {
                    return null;
                }
                int i14 = R$drawable.transfer_wifi_permissions_devices;
                String string10 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_device_title);
                String string11 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_device_tip);
                PermissionState permissionState4 = PermissionState.PERMISSION_DENIED;
                String string12 = Utils.a().getResources().getString(R$string.wifi_setting);
                Intrinsics.g(string12, "getString(...)");
                return new PermissionsBean(0, i14, string10, string11, permissionState4, "android.permission.NEARBY_WIFI_DEVICES", string12);
            case 463403621:
                if (!str.equals("android.permission.CAMERA")) {
                    return null;
                }
                int i15 = R$drawable.transfer_wifi_permissions_camera;
                String string13 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_camera_title);
                String string14 = Utils.a().getResources().getString(R$string.transfer_wifi_permissions_camera_tip);
                PermissionState permissionState5 = PermissionState.PERMISSION_DENIED;
                String string15 = Utils.a().getResources().getString(R$string.wifi_setting);
                Intrinsics.g(string15, "getString(...)");
                return new PermissionsBean(0, i15, string13, string14, permissionState5, "android.permission.CAMERA", string15);
            default:
                return null;
        }
    }

    public final boolean b(String permission) {
        Intrinsics.h(permission, "permission");
        return Utils.a().checkSelfPermission(permission) == 0;
    }

    public final List c() {
        ArrayList<PermissionsBean> arrayList = new ArrayList();
        PermissionsBean permissionsBeanD = d("android.permission.CAMERA");
        if (permissionsBeanD != null) {
            arrayList.add(permissionsBeanD);
        }
        arrayList.addAll(e());
        for (PermissionsBean permissionsBean : arrayList) {
            if (f55906a.f(permissionsBean.getPermission())) {
                permissionsBean.setState(PermissionState.PERMISSION_GRANTED);
            }
        }
        return arrayList;
    }

    public final List e() {
        PermissionsBean permissionsBeanD;
        ArrayList<PermissionsBean> arrayList = new ArrayList();
        PermissionsBean permissionsBeanD2 = d("mb.permission.WIFI");
        if (permissionsBeanD2 != null) {
            arrayList.add(permissionsBeanD2);
        }
        int i11 = Build.VERSION.SDK_INT;
        PermissionsBean permissionsBeanD3 = d("android.permission.WRITE_SETTINGS");
        if (permissionsBeanD3 != null) {
            arrayList.add(permissionsBeanD3);
        }
        PermissionsBean permissionsBeanD4 = d("android.permission.ACCESS_FINE_LOCATION");
        if (permissionsBeanD4 != null) {
            arrayList.add(permissionsBeanD4);
        }
        if (i11 >= 33 && (permissionsBeanD = d("android.permission.NEARBY_WIFI_DEVICES")) != null) {
            arrayList.add(permissionsBeanD);
        }
        for (PermissionsBean permissionsBean : arrayList) {
            if (f55906a.f(permissionsBean.getPermission())) {
                permissionsBean.setState(PermissionState.PERMISSION_GRANTED);
            }
        }
        return arrayList;
    }

    public final boolean f(String permission) {
        Intrinsics.h(permission, "permission");
        if (!Intrinsics.c(permission, "mb.permission.WIFI")) {
            return Intrinsics.c(permission, "android.permission.WRITE_SETTINGS") ? a(Utils.a()) : b(permission);
        }
        Object systemService = Utils.a().getApplicationContext().getSystemService("wifi");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
        return ((WifiManager) systemService).isWifiEnabled();
    }

    public final boolean g(List list) {
        if (list == null) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!f55906a.f(((PermissionsBean) it.next()).getPermission())) {
                return false;
            }
        }
        return true;
    }

    public final void h(AppCompatActivity activity) {
        Intrinsics.h(activity, "activity");
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", com.blankj.utilcode.util.c.e(), null));
            activity.startActivity(intent);
        } catch (Throwable unused) {
        }
    }

    public final void i(AppCompatActivity activity, String permission, int i11) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(permission, "permission");
        ActivityCompat.g(activity, new String[]{permission}, i11);
    }
}
