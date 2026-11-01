package com.pgl.ssdk;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public class h0 implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float[] f40138a = {999999.0f, 999999.0f, 999999.0f};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f40139b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile h0 f40140c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Context f40146i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Sensor f40141d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Sensor f40142e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Sensor f40143f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f40144g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f40145h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AtomicReference<a> f40147j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f40148k = 999999;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f40149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float[] f40150b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float[] f40151c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float[] f40152d = null;

        public a(long j11) {
            this.f40149a = j11;
        }
    }

    private h0(Context context) {
        this.f40146i = context;
    }

    public static h0 a(Context context) {
        if (f40140c == null) {
            synchronized (h0.class) {
                try {
                    if (f40140c == null) {
                        f40140c = new h0(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (f40139b) {
            f40140c.c();
        }
        return f40140c;
    }

    private static void a(Object[] objArr) {
        Float fValueOf = Float.valueOf(999999.0f);
        objArr[0] = fValueOf;
        objArr[1] = fValueOf;
        objArr[2] = fValueOf;
        objArr[3] = 999999L;
        float[] fArr = f40138a;
        objArr[4] = fArr;
        objArr[5] = fArr;
    }

    private static void a(Object[] objArr, a aVar) {
        float[] fArr = aVar.f40150b;
        if (fArr != null) {
            float[] fArr2 = aVar.f40151c;
            float[] fArrA = fArr2 != null ? a(objArr, fArr, fArr2) : a(objArr, fArr);
            objArr[0] = Float.valueOf(fArrA[0]);
            objArr[1] = Float.valueOf(fArrA[1]);
            objArr[2] = Float.valueOf(fArrA[2]);
            objArr[4] = aVar.f40150b;
        } else {
            objArr[0] = Float.valueOf(999999.0f);
            objArr[1] = Float.valueOf(999999.0f);
            objArr[2] = Float.valueOf(999999.0f);
            objArr[4] = f40138a;
        }
        objArr[3] = Long.valueOf(aVar.f40149a);
        float[] fArr3 = aVar.f40152d;
        if (fArr3 != null) {
            objArr[5] = fArr3;
        } else {
            objArr[5] = f40138a;
        }
    }

    private static float[] a(Object[] objArr, float[] fArr) {
        float f11 = fArr[0];
        float f12 = fArr[1];
        float f13 = fArr[2];
        float fSqrt = 1.0f / ((float) Math.sqrt(((f11 * f11) + (f12 * f12)) + (f13 * f13)));
        return new float[]{999999.0f, (((float) Math.toDegrees((float) Math.asin(-(f12 * fSqrt)))) + 360.0f) % 360.0f, (((float) Math.toDegrees((float) Math.atan2(-(f11 * fSqrt), f13 * fSqrt))) + 360.0f) % 360.0f};
    }

    private static float[] a(Object[] objArr, float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[9];
        float[] fArr4 = new float[3];
        SensorManager.getRotationMatrix(fArr3, new float[9], fArr, fArr2);
        SensorManager.getOrientation(fArr3, fArr4);
        return new float[]{(((float) Math.toDegrees(fArr4[0])) + 360.0f) % 360.0f, (((float) Math.toDegrees(fArr4[1])) + 360.0f) % 360.0f, (((float) Math.toDegrees(fArr4[2])) + 360.0f) % 360.0f};
    }

    private void c() {
        if (this.f40145h) {
            return;
        }
        try {
            SensorManager sensorManager = (SensorManager) this.f40146i.getApplicationContext().getSystemService("sensor");
            if (sensorManager != null) {
                this.f40141d = sensorManager.getDefaultSensor(1);
                this.f40142e = sensorManager.getDefaultSensor(2);
                this.f40143f = sensorManager.getDefaultSensor(4);
            }
        } catch (Exception unused) {
        }
        this.f40145h = true;
    }

    private void e() {
        this.f40148k = -1L;
        this.f40144g = false;
        try {
            SensorManager sensorManager = (SensorManager) this.f40146i.getApplicationContext().getSystemService("sensor");
            if (sensorManager != null) {
                sensorManager.unregisterListener(this);
            }
        } catch (Exception unused) {
        }
    }

    public void a() {
        if (!f40139b || this.f40144g) {
            return;
        }
        d();
    }

    public Object[] b() {
        Object[] objArr = new Object[6];
        a aVar = this.f40147j.get();
        if (!f40139b || aVar == null) {
            a(objArr);
            return objArr;
        }
        int i11 = 0;
        do {
            if ((this.f40141d == null || aVar.f40150b != null) && ((this.f40142e == null || aVar.f40151c != null) && (this.f40143f == null || aVar.f40152d != null))) {
                break;
            }
            w0.a(50L);
            i11++;
        } while (i11 <= 20);
        e();
        this.f40144g = false;
        a(objArr, aVar);
        this.f40147j.set(null);
        return objArr;
    }

    public boolean d() {
        if (this.f40141d != null) {
            try {
                SensorManager sensorManager = (SensorManager) this.f40146i.getApplicationContext().getSystemService("sensor");
                if (sensorManager != null) {
                    boolean zRegisterListener = sensorManager.registerListener(this, this.f40141d, 1);
                    Sensor sensor = this.f40142e;
                    if (sensor != null) {
                        sensorManager.registerListener(this, sensor, 1);
                    }
                    Sensor sensor2 = this.f40143f;
                    if (sensor2 != null) {
                        sensorManager.registerListener(this, sensor2, 1);
                    }
                    if (zRegisterListener) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        this.f40148k = jCurrentTimeMillis;
                        this.f40147j.set(new a(jCurrentTimeMillis));
                        this.f40144g = true;
                    } else {
                        e();
                    }
                }
            } catch (Throwable unused) {
                e();
            }
        }
        return this.f40144g;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i11) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        a aVar = this.f40147j.get();
        if (aVar == null) {
            return;
        }
        int type = sensorEvent.sensor.getType();
        if (type == 1) {
            if (aVar.f40150b == null) {
                aVar.f40150b = sensorEvent.values;
            }
        } else if (type == 2) {
            if (aVar.f40151c == null) {
                aVar.f40151c = sensorEvent.values;
            }
        } else if (type == 4 && aVar.f40152d == null) {
            aVar.f40152d = sensorEvent.values;
        }
    }
}
