package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f31139c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f31140d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f31141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f31142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f31143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ob.f f31144h;

    public a(String str, String str2, List list, String str3, String str4, String str5, String str6, ob.f fVar) {
        this.f31137a = str;
        this.f31138b = str2;
        this.f31139c = list;
        this.f31140d = str3;
        this.f31141e = str4;
        this.f31142f = str5;
        this.f31143g = str6;
        this.f31144h = fVar;
    }

    public static a a(Context context, g0 g0Var, String str, String str2, List list, ob.f fVar) throws PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        String strG = g0Var.g();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String strB = b(packageInfo);
        String str3 = packageInfo.versionName;
        if (str3 == null) {
            str3 = "0.0";
        }
        return new a(str, str2, list, strG, packageName, strB, str3, fVar);
    }

    private static String b(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfo.getLongVersionCode()) : Integer.toString(packageInfo.versionCode);
    }
}
