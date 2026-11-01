package com.apm.insight.i;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.apm.insight.runtime.o;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile UUID f19553a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f19554b = "";

    @SuppressLint({"MissingPermission", "HardwareIds"})
    private a(Context context) {
        String string;
        if (f19553a == null) {
            synchronized (a.class) {
                if (f19553a == null) {
                    String strC = o.a().c();
                    if (strC != null) {
                        f19553a = UUID.fromString(strC);
                    } else {
                        try {
                            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                        } catch (Throwable unused) {
                            string = null;
                        }
                        try {
                            if (string != null) {
                                f19553a = UUID.nameUUIDFromBytes(string.getBytes("utf8"));
                            } else {
                                f19553a = UUID.randomUUID();
                            }
                        } catch (Throwable unused2) {
                        }
                        try {
                            o.a().b(f19553a.toString());
                        } catch (Throwable unused3) {
                        }
                    }
                }
            }
        }
    }

    public static synchronized String a(Context context) {
        try {
            if (TextUtils.isEmpty(f19554b)) {
                new a(context);
                UUID uuid = f19553a;
                if (uuid != null) {
                    f19554b = uuid.toString();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f19554b;
    }
}
