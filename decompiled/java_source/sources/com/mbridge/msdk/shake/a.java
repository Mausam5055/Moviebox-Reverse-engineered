package com.mbridge.msdk.shake;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SensorManager f37358a;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static a f37359a = new a();
    }

    private a() {
    }

    public static a a() {
        return b.f37359a;
    }

    private static void a(Context context, String str) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000106");
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f35335g);
                }
                jSONObject.put("reason", str);
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("NativeShakeManager", th2.getMessage());
            }
        }
    }

    public void a(SensorEventListener sensorEventListener) {
        a(sensorEventListener, null, 2);
    }

    public void a(SensorEventListener sensorEventListener, Sensor sensor, int i11) {
        Context contextD = c.m().d();
        if (contextD != null) {
            try {
                if (this.f37358a == null) {
                    this.f37358a = (SensorManager) contextD.getSystemService("sensor");
                }
                if (sensor == null) {
                    sensor = this.f37358a.getDefaultSensor(1);
                }
                this.f37358a.registerListener(sensorEventListener, sensor, i11);
            } catch (Exception e11) {
                e11.printStackTrace();
                a(contextD, e11.getMessage());
            }
        }
    }

    public void b(SensorEventListener sensorEventListener) {
        SensorManager sensorManager = this.f37358a;
        if (sensorManager != null) {
            try {
                sensorManager.unregisterListener(sensorEventListener);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
