package com.transsion.athena.taaneh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class hatnea {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f42812a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f42813b = "";

    @SuppressLint({"PrivateApi"})
    public static String a() {
        if (TextUtils.isEmpty(f42812a)) {
            try {
                Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                String str = (String) method.invoke(null, "ro.tranos.version", "");
                f42812a = str;
                if (TextUtils.isEmpty(str)) {
                    f42812a = (String) method.invoke(null, "ro.os_product.version", "");
                }
            } catch (Exception e11) {
                aethna.b(e11.getMessage());
            }
        }
        return f42812a;
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(f42813b)) {
            return f42813b;
        }
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "os_small_version");
            f42813b = string;
            return string;
        } catch (Exception e11) {
            aethna.b(Log.getStackTraceString(e11));
            return "";
        }
    }
}
