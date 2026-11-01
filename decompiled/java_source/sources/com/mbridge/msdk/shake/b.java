package com.mbridge.msdk.shake;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f37360a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f37361b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f37362c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f37363d = 0.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37365f;

    public b(int i11, int i12) {
        this.f37364e = i11;
        this.f37365f = i12;
    }

    public abstract void a();

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i11) {
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0048  */
    /* JADX WARN: Code duplicated, block: B:16:0x0057  */
    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        long jCurrentTimeMillis;
        float[] fArr = sensorEvent.values;
        float f11 = -fArr[0];
        float f12 = -fArr[1];
        float f13 = -fArr[2];
        float f14 = this.f37361b;
        if (f14 == 0.0f || Math.abs(f11 - f14) <= this.f37364e) {
            float f15 = this.f37362c;
            if (f15 == 0.0f || Math.abs(f12 - f15) <= this.f37364e) {
                float f16 = this.f37363d;
                if (f16 != 0.0f && Math.abs(f13 - f16) > this.f37364e) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - this.f37360a > this.f37365f) {
                        this.f37360a = jCurrentTimeMillis;
                        a();
                    }
                }
            } else {
                jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.f37360a > this.f37365f) {
                    this.f37360a = jCurrentTimeMillis;
                    a();
                }
            }
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f37360a > this.f37365f) {
                this.f37360a = jCurrentTimeMillis;
                a();
            }
        }
        this.f37361b = f11;
        this.f37362c = f12;
        this.f37363d = f13;
    }
}
