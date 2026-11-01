package com.transsion.infra.gateway.core.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static d f46027c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f46028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f46029b;

    private d(Context context) {
        this.f46029b = context.getApplicationContext();
    }

    public static synchronized d a(Context context) {
        try {
            if (f46027c == null) {
                f46027c = new d(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f46027c;
    }

    private SharedPreferences c(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("gateway_core", 0);
                this.f46028a = sharedPreferences;
                return sharedPreferences;
            } catch (Exception unused) {
                return null;
            }
        }
        SharedPreferences sharedPreferences2 = this.f46028a;
        if (sharedPreferences2 != null) {
            return sharedPreferences2;
        }
        if (context == null) {
            return null;
        }
        try {
            this.f46028a = context.getSharedPreferences("gateway_core", 0);
        } catch (Exception unused2) {
        }
        return this.f46028a;
    }

    public long b(String str) {
        Context context = this.f46029b;
        if (context == null) {
            return -1L;
        }
        if (this.f46028a == null) {
            this.f46028a = c(context);
        }
        SharedPreferences sharedPreferences = this.f46028a;
        if (sharedPreferences == null) {
            return -1L;
        }
        try {
            return sharedPreferences.getLong(str, 0L);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public void d(String str, long j11) {
        Context context = this.f46029b;
        if (context == null) {
            return;
        }
        if (this.f46028a == null) {
            this.f46028a = c(context);
        }
        SharedPreferences sharedPreferences = this.f46028a;
        if (sharedPreferences == null) {
            return;
        }
        try {
            sharedPreferences.edit().putLong(str, j11).apply();
        } catch (Exception unused) {
        }
    }
}
