package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.camera2.CameraManager;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes5.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f40215a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f40216b = -1;

    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.f40216b = v.b(x.b());
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            if (sharedPreferencesA != null) {
                sharedPreferencesA.edit().putInt("camera_count", v.f40216b).apply();
            }
        }
    }

    public static int a() {
        int i11;
        int i12 = f40216b;
        if (i12 != -1) {
            return i12;
        }
        SharedPreferences sharedPreferencesA = u0.a(x.b());
        if (sharedPreferencesA == null || (i11 = sharedPreferencesA.getInt("camera_count", -1)) == -1) {
            o0.b(new a());
            return -1;
        }
        f40216b = i11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(Context context) {
        int i11 = f40216b;
        if (i11 != -1) {
            return i11;
        }
        CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
        if (cameraManager != null) {
            try {
                f40216b = cameraManager.getCameraIdList().length;
            } catch (Throwable unused) {
                f40216b = -1;
            }
        } else {
            f40216b = -2;
        }
        return f40216b;
    }

    public static int c(Context context) {
        TelephonyManager telephonyManager;
        if (f40215a == -1 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            f40215a = telephonyManager.getSimState();
        }
        return f40215a;
    }
}
