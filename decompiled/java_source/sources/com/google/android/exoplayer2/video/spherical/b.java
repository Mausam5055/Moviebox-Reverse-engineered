package com.google.android.exoplayer2.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes3.dex */
final class b implements SensorEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f27943a = new float[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f27944b = new float[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float[] f27945c = new float[16];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float[] f27946d = new float[3];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Display f27947e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a[] f27948f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f27949g;

    public interface a {
        void a(float[] fArr, float f11);
    }

    public b(Display display, a... aVarArr) {
        this.f27947e = display;
        this.f27948f = aVarArr;
    }

    private float a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, this.f27944b);
        SensorManager.getOrientation(this.f27944b, this.f27946d);
        return this.f27946d[2];
    }

    private void b(float[] fArr, float f11) {
        for (a aVar : this.f27948f) {
            aVar.a(fArr, f11);
        }
    }

    private void c(float[] fArr) {
        if (!this.f27949g) {
            com.google.android.exoplayer2.video.spherical.a.a(this.f27945c, fArr);
            this.f27949g = true;
        }
        float[] fArr2 = this.f27944b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f27944b, 0, this.f27945c, 0);
    }

    private void d(float[] fArr, int i11) {
        if (i11 != 0) {
            int i12 = 129;
            int i13 = 1;
            if (i11 == 1) {
                i13 = 129;
                i12 = 2;
            } else if (i11 == 2) {
                i13 = 130;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException();
                }
                i12 = 130;
            }
            float[] fArr2 = this.f27944b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f27944b, i12, i13, fArr);
        }
    }

    private static void e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i11) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f27943a, sensorEvent.values);
        d(this.f27943a, this.f27947e.getRotation());
        float fA = a(this.f27943a);
        e(this.f27943a);
        c(this.f27943a);
        b(this.f27943a, fA);
    }
}
