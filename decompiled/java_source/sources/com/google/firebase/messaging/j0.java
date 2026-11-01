package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f32099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f32100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f32101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32102e = 0;

    j0(Context context) {
        this.f32098a = context;
    }

    static String c(com.google.firebase.f fVar) {
        String strD = fVar.n().d();
        if (strD != null) {
            return strD;
        }
        String strC = fVar.n().c();
        if (!strC.startsWith("1:")) {
            return strC;
        }
        String[] strArrSplit = strC.split(":");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private PackageInfo f(String str) {
        try {
            return this.f32098a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e11) {
            Log.w("FirebaseMessaging", "Failed to find package " + e11);
            return null;
        }
    }

    private synchronized void h() {
        PackageInfo packageInfoF = f(this.f32098a.getPackageName());
        if (packageInfoF != null) {
            this.f32099b = Integer.toString(packageInfoF.versionCode);
            this.f32100c = packageInfoF.versionName;
        }
    }

    synchronized String a() {
        try {
            if (this.f32099b == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f32099b;
    }

    synchronized String b() {
        try {
            if (this.f32100c == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f32100c;
    }

    synchronized int d() {
        PackageInfo packageInfoF;
        try {
            if (this.f32101d == 0 && (packageInfoF = f("com.google.android.gms")) != null) {
                this.f32101d = packageInfoF.versionCode;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f32101d;
    }

    synchronized int e() {
        int i11 = this.f32102e;
        if (i11 != 0) {
            return i11;
        }
        PackageManager packageManager = this.f32098a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!PlatformVersion.isAtLeastO()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f32102e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f32102e = 2;
            return 2;
        }
        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.isAtLeastO()) {
            this.f32102e = 2;
        } else {
            this.f32102e = 1;
        }
        return this.f32102e;
    }

    boolean g() {
        return e() != 0;
    }
}
