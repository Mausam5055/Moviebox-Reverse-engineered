package com.tn.tranpay.device;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import com.tencent.mmkv.MMKV;
import com.tn.tranpay.TranPay;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import zh.b;

/* JADX INFO: loaded from: classes4.dex */
public final class TNDeviceHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TNDeviceHelper f41530a = new TNDeviceHelper();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f41531b = LazyKt.b(new Function0<MMKV>() { // from class: com.tn.tranpay.device.TNDeviceHelper$tranMmkv$2
        @Override // kotlin.jvm.functions.Function0
        public final MMKV invoke() {
            return MMKV.I("tran_v_show");
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f41532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f41533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f41534e;

    private TNDeviceHelper() {
    }

    private final MMKV e() {
        Object value = f41531b.getValue();
        Intrinsics.g(value, "<get-tranMmkv>(...)");
        return (MMKV) value;
    }

    public final void a(Context context) {
        Intrinsics.h(context, "context");
        if (!(context instanceof Application)) {
            System.out.println((Object) "please pass in application to avoid Service not registered exception ");
            return;
        }
        String string = e().getString("sdk_ga_id", "");
        if (TextUtils.isEmpty(string)) {
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            b.f79423c.a(context, intent);
        } else {
            System.out.println((Object) ("gid has get gid " + string));
        }
    }

    public final String b() {
        if (TextUtils.isEmpty(f41532c)) {
            f41532c = e().getString("sdk_android_id", "");
        }
        String string = f41532c;
        if (TextUtils.isEmpty(string)) {
            try {
                string = Settings.System.getString(TranPay.f41486a.d().getContentResolver(), "android_id");
            } catch (Exception e11) {
                ai.a.e(ai.a.f619a, "Failed to get Android ID: " + e11.getMessage(), null, 2, null);
                string = "";
            }
        }
        return string == null ? "" : string;
    }

    public final String c() {
        String str = "";
        if (TextUtils.isEmpty(f41534e)) {
            f41534e = e().getString("sdk_device_id", "");
        }
        String strValueOf = String.valueOf(f41534e);
        if (TextUtils.isEmpty(f41532c)) {
            f41532c = e().getString("sdk_android_id", "");
        }
        String strValueOf2 = String.valueOf(f41532c);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        if (!TextUtils.isEmpty(strValueOf2)) {
            String strA = a.f41535a.a(strValueOf2);
            g(strA);
            return strA;
        }
        try {
            String string = Settings.System.getString(TranPay.f41486a.d().getContentResolver(), "android_id");
            Intrinsics.g(string, "{\n            // 使用 Tran…D\n            )\n        }");
            str = string;
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, "Failed to get Android ID: " + e11.getMessage(), null, 2, null);
        }
        if (!TextUtils.isEmpty(str) && !Intrinsics.c(str, "9774d56d682e549c")) {
            String strA2 = a.f41535a.a(str);
            g(strA2);
            f(str);
            return strA2;
        }
        String string2 = UUID.randomUUID().toString();
        Intrinsics.g(string2, "randomUUID().toString()");
        String strA3 = a.f41535a.a(string2);
        g(strA3);
        return strA3;
    }

    public final String d() {
        if (TextUtils.isEmpty(f41533d)) {
            f41533d = e().getString("sdk_ga_id", "");
        }
        String strValueOf = String.valueOf(f41533d);
        if (!TextUtils.isEmpty(strValueOf)) {
            return strValueOf;
        }
        String strB = b();
        if (!TextUtils.isEmpty(strB)) {
            return strB;
        }
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "randomUUID().toString()");
        return string;
    }

    public final void f(String androidId) {
        Intrinsics.h(androidId, "androidId");
        e().putString("sdk_android_id", androidId);
    }

    public final void g(String deviceId) {
        Intrinsics.h(deviceId, "deviceId");
        e().putString("sdk_device_id", deviceId);
    }

    public final void h(String gid) {
        Intrinsics.h(gid, "gid");
        e().putString("sdk_ga_id", gid);
    }
}
