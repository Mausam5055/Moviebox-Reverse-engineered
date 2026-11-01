package com.pgl.ssdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.input.InputManager;
import android.os.Build;
import android.view.InputDevice;
import android.view.MotionEvent;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f40217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f40218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f40219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f40220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f40221e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f40222f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f40223g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static InputManager f40224h;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f40225a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f40226b;

        a(Context context, int i11) {
            this.f40225a = context;
            this.f40226b = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            InputManager inputManagerB = w.b(this.f40225a);
            if (inputManagerB == null) {
                return;
            }
            InputDevice inputDevice = inputManagerB.getInputDevice(this.f40226b);
            w.h();
            if (inputDevice == null) {
                w.b();
                w.c();
                w.c("nihc");
            } else if (inputDevice.isVirtual()) {
                w.d();
                w.e();
                w.c("vihc");
            } else {
                if (Build.VERSION.SDK_INT < 29 || !inputDevice.isExternal()) {
                    return;
                }
                w.f();
                w.g();
                w.c("eihc");
            }
        }
    }

    public static void a(MotionEvent motionEvent, Context context) {
        if (motionEvent == null || context == null) {
            return;
        }
        if (motionEvent.getRawX() > 0.0f || motionEvent.getRawY() > 0.0f) {
            o0.b(new a(context, motionEvent.getDeviceId()));
        }
    }

    public static void a(JSONObject jSONObject) {
        h();
        try {
            jSONObject.put("vihc", f40220d);
            jSONObject.put("eihc", f40221e);
            jSONObject.put("nihc", f40222f);
            jSONObject.put("vic", f40217a);
            jSONObject.put("nic", f40219c);
            jSONObject.put("eic", f40218b);
        } catch (JSONException unused) {
        }
    }

    static /* synthetic */ int b() {
        int i11 = f40219c;
        f40219c = i11 + 1;
        return i11;
    }

    public static int b(String str) {
        h();
        str.hashCode();
        switch (str) {
            case "eic":
                return f40218b;
            case "nic":
                return f40219c;
            case "vic":
                return f40217a;
            case "eihc":
                return f40221e;
            case "nihc":
                return f40222f;
            case "vihc":
                return f40220d;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputManager b(Context context) {
        if (f40224h == null) {
            f40224h = (InputManager) context.getSystemService("input");
        }
        return f40224h;
    }

    static /* synthetic */ int c() {
        int i11 = f40222f;
        f40222f = i11 + 1;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str) {
        try {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            if (sharedPreferencesA != null) {
                sharedPreferencesA.edit().putInt(str, sharedPreferencesA.getInt(str, 0) + 1).apply();
            }
        } catch (Throwable unused) {
        }
    }

    static /* synthetic */ int d() {
        int i11 = f40217a;
        f40217a = i11 + 1;
        return i11;
    }

    static /* synthetic */ int e() {
        int i11 = f40220d;
        f40220d = i11 + 1;
        return i11;
    }

    static /* synthetic */ int f() {
        int i11 = f40218b;
        f40218b = i11 + 1;
        return i11;
    }

    static /* synthetic */ int g() {
        int i11 = f40221e;
        f40221e = i11 + 1;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h() {
        if (f40223g) {
            return;
        }
        try {
            SharedPreferences sharedPreferencesA = u0.a(x.b());
            if (sharedPreferencesA != null) {
                f40222f = sharedPreferencesA.getInt("nihc", 0);
                f40221e = sharedPreferencesA.getInt("eihc", 0);
                f40220d = sharedPreferencesA.getInt("vihc", 0);
                f40223g = true;
            }
        } catch (Throwable unused) {
        }
    }
}
