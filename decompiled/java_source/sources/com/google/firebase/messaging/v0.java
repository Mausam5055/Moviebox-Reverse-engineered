package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes4.dex */
public class v0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static v0 f32168e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f32169a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Boolean f32170b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Boolean f32171c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue f32172d = new ArrayDeque();

    private v0() {
    }

    private int a(Context context, Intent intent) {
        String strF = f(context, intent);
        if (strF != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Restricting intent to a specific service: ");
                sb2.append(strF);
            }
            intent.setClassName(context.getPackageName(), strF);
        }
        try {
            if ((e(context) ? e1.h(context, intent) : context.startService(intent)) != null) {
                return -1;
            }
            Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
            return TTAdConstant.DEEPLINK_FALLBACK_CODE;
        } catch (IllegalStateException e11) {
            Log.e("FirebaseMessaging", "Failed to start service while in background: " + e11);
            return TTAdConstant.AD_ID_IS_NULL_CODE;
        } catch (SecurityException e12) {
            Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e12);
            return 401;
        }
    }

    static synchronized v0 b() {
        try {
            if (f32168e == null) {
                f32168e = new v0();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32168e;
    }

    private synchronized String f(Context context, Intent intent) {
        ServiceInfo serviceInfo;
        String str;
        try {
            String str2 = this.f32169a;
            if (str2 != null) {
                return str2;
            }
            ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveInfoResolveService != null && (serviceInfo = resolveInfoResolveService.serviceInfo) != null) {
                if (context.getPackageName().equals(serviceInfo.packageName) && (str = serviceInfo.name) != null) {
                    if (str.startsWith(".")) {
                        this.f32169a = context.getPackageName() + serviceInfo.name;
                    } else {
                        this.f32169a = serviceInfo.name;
                    }
                    return this.f32169a;
                }
                Log.e("FirebaseMessaging", "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + serviceInfo.packageName + "/" + serviceInfo.name);
                return null;
            }
            Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    Intent c() {
        return (Intent) this.f32172d.poll();
    }

    boolean d(Context context) {
        if (this.f32171c == null) {
            this.f32171c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f32170b.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f32171c.booleanValue();
    }

    boolean e(Context context) {
        if (this.f32170b == null) {
            this.f32170b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f32170b.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f32170b.booleanValue();
    }

    public int g(Context context, Intent intent) {
        Log.isLoggable("FirebaseMessaging", 3);
        this.f32172d.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return a(context, intent2);
    }
}
