package com.google.firebase.perf.config;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class w {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final sc.a f32253c = sc.a.e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static w f32254d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile SharedPreferences f32255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f32256b;

    public w(ExecutorService executorService) {
        this.f32256b = executorService;
    }

    private Context d() {
        try {
            com.google.firebase.f.l();
            return com.google.firebase.f.l().k();
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public static synchronized w e() {
        try {
            if (f32254d == null) {
                f32254d = new w(Executors.newSingleThreadExecutor());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32254d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Context context) {
        if (this.f32255a != null || context == null) {
            return;
        }
        this.f32255a = context.getSharedPreferences("FirebasePerfSharedPrefs", 0);
    }

    public com.google.firebase.perf.util.e b(String str) {
        if (str == null) {
            f32253c.a("Key is null when getting boolean value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f32255a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            return com.google.firebase.perf.util.e.e(Boolean.valueOf(this.f32255a.getBoolean(str, false)));
        } catch (ClassCastException e11) {
            f32253c.b("Key %s from sharedPreferences has type other than long: %s", str, e11.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public com.google.firebase.perf.util.e c(String str) {
        if (str == null) {
            f32253c.a("Key is null when getting double value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f32255a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            try {
                return com.google.firebase.perf.util.e.e(Double.valueOf(Double.longBitsToDouble(this.f32255a.getLong(str, 0L))));
            } catch (ClassCastException unused) {
                return com.google.firebase.perf.util.e.e(Double.valueOf(Float.valueOf(this.f32255a.getFloat(str, 0.0f)).doubleValue()));
            }
        } catch (ClassCastException e11) {
            f32253c.b("Key %s from sharedPreferences has type other than double: %s", str, e11.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public com.google.firebase.perf.util.e f(String str) {
        if (str == null) {
            f32253c.a("Key is null when getting long value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f32255a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            return com.google.firebase.perf.util.e.e(Long.valueOf(this.f32255a.getLong(str, 0L)));
        } catch (ClassCastException e11) {
            f32253c.b("Key %s from sharedPreferences has type other than long: %s", str, e11.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public com.google.firebase.perf.util.e g(String str) {
        if (str == null) {
            f32253c.a("Key is null when getting String value on device cache.");
            return com.google.firebase.perf.util.e.a();
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return com.google.firebase.perf.util.e.a();
            }
        }
        if (!this.f32255a.contains(str)) {
            return com.google.firebase.perf.util.e.a();
        }
        try {
            return com.google.firebase.perf.util.e.e(this.f32255a.getString(str, ""));
        } catch (ClassCastException e11) {
            f32253c.b("Key %s from sharedPreferences has type other than String: %s", str, e11.getMessage());
            return com.google.firebase.perf.util.e.a();
        }
    }

    public synchronized void i(final Context context) {
        if (this.f32255a == null && context != null) {
            this.f32256b.execute(new Runnable() { // from class: com.google.firebase.perf.config.v
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32251a.h(context);
                }
            });
        }
    }

    public boolean j(String str, double d11) {
        if (str == null) {
            f32253c.a("Key is null when setting double value on device cache.");
            return false;
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return false;
            }
        }
        this.f32255a.edit().putLong(str, Double.doubleToRawLongBits(d11)).apply();
        return true;
    }

    public boolean k(String str, long j11) {
        if (str == null) {
            f32253c.a("Key is null when setting long value on device cache.");
            return false;
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return false;
            }
        }
        this.f32255a.edit().putLong(str, j11).apply();
        return true;
    }

    public boolean l(String str, String str2) {
        if (str == null) {
            f32253c.a("Key is null when setting String value on device cache.");
            return false;
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return false;
            }
        }
        if (str2 == null) {
            this.f32255a.edit().remove(str).apply();
            return true;
        }
        this.f32255a.edit().putString(str, str2).apply();
        return true;
    }

    public boolean m(String str, boolean z10) {
        if (str == null) {
            f32253c.a("Key is null when setting boolean value on device cache.");
            return false;
        }
        if (this.f32255a == null) {
            i(d());
            if (this.f32255a == null) {
                return false;
            }
        }
        this.f32255a.edit().putBoolean(str, z10).apply();
        return true;
    }
}
