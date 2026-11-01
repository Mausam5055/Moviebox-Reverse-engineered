package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f40170a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f40171b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f40172c = "api16-access-ttp.tiktokpangle.us";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String[] f40173d = {"api16-access-ttp.tiktokpangle.us", "api16-access-ttp-b.tiktokpangle.us", "api16-access-ttp.tiktokpangle-b.us", "api16-access-ttp-b.tiktokpangle-b.us"};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f40174e = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f40175f = "";

    public static String a() {
        return f40170a == 1 ? "VA" : "SG";
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f40171b)) {
            return f40171b;
        }
        try {
            if (f40174e == Integer.MIN_VALUE) {
                f40174e = u0.a(context, "domain_index", 0);
            }
            String[] strArr = f40173d;
            return strArr[f40174e % strArr.length];
        } catch (Throwable unused) {
            return f40172c;
        }
    }

    public static void a(int i11) {
        f40170a = i11;
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f40171b = str;
    }

    public static String b() {
        return f40175f;
    }

    public static void b(Context context) {
        if (TextUtils.isEmpty(f40171b)) {
            r0.a("updateIndex");
            int i11 = f40174e;
            if (i11 >= Integer.MAX_VALUE) {
                f40174e = 0;
                return;
            }
            int i12 = i11 + 1;
            f40174e = i12;
            u0.b(context, "domain_index", i12);
        }
    }

    public static void b(String str) {
        f40175f = str;
    }
}
