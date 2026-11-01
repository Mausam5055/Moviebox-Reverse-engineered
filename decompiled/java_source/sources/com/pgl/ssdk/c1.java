package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes5.dex */
public class c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f40092a = 504;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f40093b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f40094c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static boolean f40095d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f40096e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Context f40097f;

    public static synchronized Object a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return com.pgl.ssdk.ces.a.meta(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE, f40097f, bArr);
    }

    public static synchronized String a() {
        try {
            if (TextUtils.isEmpty(f40094c)) {
                f40094c = (String) com.pgl.ssdk.ces.a.meta(303, f40097f, null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f40094c;
    }

    public static void a(Context context, String str) {
        if (f40097f == null) {
            f40097f = context;
        }
        int i11 = f40092a;
        if (i11 == 102 || i11 == 202 || i11 == 200) {
            return;
        }
        f40096e = System.currentTimeMillis();
        f40095d = false;
        f40093b = str;
        f40092a = 102;
        o0.b(new l0(context, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, null));
    }

    public static void b() {
        Context context = f40097f;
        if (context != null) {
            o0.b(new l0(context, Sdk$SDKError.Reason.MRAID_ERROR_VALUE, null));
            f40092a = 102;
            com.pgl.ssdk.ces.b.h().a();
            x.a();
        }
    }
}
