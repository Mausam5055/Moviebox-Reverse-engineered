package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.pgl.ssdk.ces.out.DungeonFlag;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f40227a;

    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y.c(x.b());
            com.pgl.ssdk.ces.a.meta(226, x.b(), null);
        }
    }

    public static long a(Context context) {
        try {
            return ((Long) com.pgl.ssdk.ces.a.meta(154, context, null)).longValue();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @DungeonFlag
    private static String a(Throwable th2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, 3);
            jSONObject.put("exception", th2.toString());
            jSONObject.put("stacktrace", Arrays.toString(th2.getStackTrace()));
            jSONObject.put("cause", String.valueOf(th2.getCause()));
            return Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 0);
        } catch (Throwable unused) {
            return "eyJzdGF0dXMiOjN9";
        }
    }

    @DungeonFlag
    public static void a() {
        o0.b(new a());
    }

    public static Context b() {
        return f40227a;
    }

    @DungeonFlag
    public static String b(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, 0);
            jSONObject.put("envcode", ((Long) com.pgl.ssdk.ces.a.meta(154, context, null)).longValue());
            jSONObject.put("bootcount", u.a(context));
            jSONObject.put("usb_debug", u.d(context));
            JSONArray[] jSONArrayArrC = u.c(context);
            if (jSONArrayArrC != null) {
                jSONObject.put("sdata", jSONArrayArrC[0]);
                jSONObject.put("sdmta", jSONArrayArrC[1]);
                jSONObject.put("curtime", System.currentTimeMillis() / 1000);
            }
            jSONObject.put("camera_count", v.a());
            jSONObject.put(TmcConstants.KEY_SIM, v.c(context));
            jSONObject.put("virtual_display", y.b(context));
            jSONObject.put("acbs", s.b(context));
            jSONObject.put("bl_unlock", u.b(context));
            w.a(jSONObject);
            String strE = t.e();
            jSONObject.put("romtype", u.c());
            jSONObject.put("root", u.e());
            if (!TextUtils.isEmpty(strE)) {
                jSONObject.put(TmcConstants.EXTRA_APP_DEV_TOKEN, strE);
            }
            return (String) com.pgl.ssdk.ces.a.meta(227, context, jSONObject.toString());
        } catch (Throwable th2) {
            return a(th2);
        }
    }

    public static String c() {
        String strB = b(b());
        a();
        return strB;
    }

    public static void c(Context context) {
        f40227a = context;
    }
}
