package i7;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.cloud.tmc.integration.params.TmcStartParams;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class e implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SensorManager f65019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f65020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f65021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f65022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f65023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f65024f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float[] f65025g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f65026h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float[] f65027i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float[] f65028j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AtomicBoolean f65029k;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final e f65030a = new e();
    }

    private e() {
        this.f65020b = new float[0];
        this.f65022d = new float[0];
        this.f65025g = new float[0];
        this.f65027i = new float[0];
        this.f65028j = new float[0];
        this.f65029k = new AtomicBoolean(false);
        this.f65019a = (SensorManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("sensor");
    }

    public static e e() {
        return b.f65030a;
    }

    public static Bundle k() {
        Bundle bundle = new Bundle();
        try {
            bundle.putFloatArray("ots", e().h());
            bundle.putFloat(TmcStartParams.KEY_LANDSCAPE_SHORT, e().f());
            bundle.putFloatArray("ms", e().g());
            bundle.putFloat("pxs", e().j());
            bundle.putFloat("tps", e().l());
            bundle.putFloatArray("gs", e().d());
            bundle.putFloat("pss", e().i());
            bundle.putFloatArray("gvs", e().c());
            bundle.putFloatArray("ams", e().b());
        } catch (Exception e11) {
            i7.a.r0(Log.getStackTraceString(e11));
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        this.f65029k.set(true);
        this.f65019a.unregisterListener(this);
    }

    public static void q() {
        try {
            try {
                try {
                    e().o();
                    e().p();
                } catch (Exception e11) {
                    i7.a.r0(Log.getStackTraceString(e11));
                    e().p();
                }
            } catch (Exception e12) {
                i7.a.r0(Log.getStackTraceString(e12));
            }
        } catch (Throwable th2) {
            try {
                e().p();
            } catch (Exception e13) {
                i7.a.r0(Log.getStackTraceString(e13));
            }
            throw th2;
        }
    }

    public float[] b() {
        return this.f65028j;
    }

    public float[] c() {
        return this.f65027i;
    }

    public float[] d() {
        return this.f65025g;
    }

    public float f() {
        return this.f65021c;
    }

    public float[] g() {
        return this.f65022d;
    }

    public float[] h() {
        return this.f65020b;
    }

    public float i() {
        return this.f65026h;
    }

    public float j() {
        return this.f65023e;
    }

    public float l() {
        return this.f65024f;
    }

    public boolean m() {
        return this.f65029k.get();
    }

    public void o() {
        SensorManager sensorManager = this.f65019a;
        sensorManager.registerListener(this, sensorManager.getDefaultSensor(3), 3);
        SensorManager sensorManager2 = this.f65019a;
        sensorManager2.registerListener(this, sensorManager2.getDefaultSensor(4), 3);
        SensorManager sensorManager3 = this.f65019a;
        sensorManager3.registerListener(this, sensorManager3.getDefaultSensor(9), 3);
        SensorManager sensorManager4 = this.f65019a;
        sensorManager4.registerListener(this, sensorManager4.getDefaultSensor(1), 3);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i11) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        Sensor sensor;
        float[] fArr;
        if (sensorEvent == null || (sensor = sensorEvent.sensor) == null || (fArr = sensorEvent.values) == null || fArr.length < 1) {
            return;
        }
        switch (sensor.getType()) {
            case 1:
                this.f65028j = sensorEvent.values;
                break;
            case 2:
                this.f65022d = sensorEvent.values;
                break;
            case 3:
                this.f65020b = sensorEvent.values;
                break;
            case 4:
                this.f65025g = sensorEvent.values;
                break;
            case 5:
                this.f65021c = sensorEvent.values[0];
                break;
            case 6:
                this.f65026h = sensorEvent.values[0];
                break;
            case 7:
                this.f65024f = sensorEvent.values[0];
                break;
            case 8:
                this.f65023e = sensorEvent.values[0];
                break;
            case 9:
                this.f65027i = sensorEvent.values;
                break;
        }
    }

    public void p() {
        if (Looper.myLooper() == null) {
            return;
        }
        new Handler(Looper.myLooper()).postDelayed(new Runnable() { // from class: i7.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f65018a.n();
            }
        }, 1000L);
    }
}
