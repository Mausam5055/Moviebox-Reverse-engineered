package com.bytedance.sdk.openadsdk.sU;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.os.Vibrator;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class TEQ {
    public static WeakReference<Sj> Sj;
    protected static final float[] sP = new float[3];
    protected static final float[] TKC = new float[3];
    protected static final float[] EjP = new float[9];
    protected static final float[] HiB = new float[3];

    public static void EjP(Context context, SensorEventListener sensorEventListener, int i11) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Sj> weakReference = Sj;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th2) {
            Jcg.Sj("SensorHub", "startListenRotationVector err", th2);
        }
    }

    public static void Sj(Context context, long j11) {
        if (context == null) {
            return;
        }
        ((Vibrator) context.getSystemService("vibrator")).vibrate(j11);
    }

    public static void Sj(Context context, SensorEventListener sensorEventListener) {
    }

    public static void Sj(Context context, SensorEventListener sensorEventListener, int i11) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Sj> weakReference = Sj;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th2) {
            Jcg.Sj("SensorHub", "startListenAccelerometer error", th2);
        }
    }

    public static void Sj(Sj sj2) {
        Sj = new WeakReference<>(sj2);
    }

    public static void TKC(Context context, SensorEventListener sensorEventListener, int i11) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Sj> weakReference = Sj;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th2) {
            Jcg.Sj("SensorHub", "startListenLinearAcceleration error", th2);
        }
    }

    public static void sP(Context context, SensorEventListener sensorEventListener, int i11) {
        if (sensorEventListener == null || context == null) {
            return;
        }
        try {
            WeakReference<Sj> weakReference = Sj;
            if (weakReference != null) {
                weakReference.get();
            }
        } catch (Throwable th2) {
            Jcg.Sj("SensorHub", "startListenGyroscope error", th2);
        }
    }
}
