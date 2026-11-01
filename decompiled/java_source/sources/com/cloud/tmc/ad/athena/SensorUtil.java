package com.cloud.tmc.ad.athena;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 '2\u00020\u0001:\u0002'(B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0016J\u0006\u0010%\u001a\u00020\u001dJ\u0006\u0010&\u001a\u00020\u001dR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u001e\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0007R\u001e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0007R\u001e\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u001e\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u000fR\u001e\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u000f¨\u0006)"}, d2 = {"Lcom/cloud/tmc/ad/athena/SensorUtil;", "Landroid/hardware/SensorEventListener;", "()V", "<set-?>", "", "accelerometerSensor", "getAccelerometerSensor", "()[F", "gravitySensor", "getGravitySensor", "gyroscopeSensor", "getGyroscopeSensor", "", "lightSensor", "getLightSensor", "()F", "mSensorManager", "Landroid/hardware/SensorManager;", "magneticFieldSensor", "getMagneticFieldSensor", "orientationSensor", "getOrientationSensor", "pressureSensor", "getPressureSensor", "proximitySensor", "getProximitySensor", "temperatureSensor", "getTemperatureSensor", "onAccuracyChanged", "", "sensor", "Landroid/hardware/Sensor;", "accuracy", "", "onSensorChanged", NotificationCompat.CATEGORY_EVENT, "Landroid/hardware/SensorEvent;", TmcConstants.NAVIGATION_ON_START, "onStop", "Companion", "SingletonHolder", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SensorUtil implements SensorEventListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private float[] accelerometerSensor;
    private float[] gravitySensor;
    private float[] gyroscopeSensor;
    private float lightSensor;
    private final SensorManager mSensorManager;
    private float[] magneticFieldSensor;
    private float[] orientationSensor;
    private float pressureSensor;
    private float proximitySensor;
    private float temperatureSensor;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;", "", "()V", "getInstance", "Lcom/cloud/tmc/ad/athena/SensorUtil;", "register", "", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void register$lambda$0() {
            Companion companion = SensorUtil.INSTANCE;
            companion.getInstance().onStart();
            companion.getInstance().onStop();
        }

        public final SensorUtil getInstance() {
            return SingletonHolder.INSTANCE.getInstance();
        }

        public final void register() {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.cloud.tmc.ad.athena.b
                @Override // java.lang.Runnable
                public final void run() {
                    SensorUtil.Companion.register$lambda$0();
                }
            }, 2000L);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;", "", "()V", "instance", "Lcom/cloud/tmc/ad/athena/SensorUtil;", "getInstance", "()Lcom/cloud/tmc/ad/athena/SensorUtil;", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class SingletonHolder {
        public static final SingletonHolder INSTANCE = new SingletonHolder();
        private static final SensorUtil instance = new SensorUtil(null);

        private SingletonHolder() {
        }

        public final SensorUtil getInstance() {
            return instance;
        }
    }

    private SensorUtil() {
        this.orientationSensor = new float[0];
        this.magneticFieldSensor = new float[0];
        this.gyroscopeSensor = new float[0];
        this.gravitySensor = new float[0];
        this.accelerometerSensor = new float[0];
        Object systemService = qk.a.a().getSystemService("sensor");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        this.mSensorManager = (SensorManager) systemService;
    }

    public /* synthetic */ SensorUtil(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStop$lambda$0(SensorUtil this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.mSensorManager.unregisterListener(this$0);
    }

    public final float[] getAccelerometerSensor() {
        return this.accelerometerSensor;
    }

    public final float[] getGravitySensor() {
        return this.gravitySensor;
    }

    public final float[] getGyroscopeSensor() {
        return this.gyroscopeSensor;
    }

    public final float getLightSensor() {
        return this.lightSensor;
    }

    public final float[] getMagneticFieldSensor() {
        return this.magneticFieldSensor;
    }

    public final float[] getOrientationSensor() {
        return this.orientationSensor;
    }

    public final float getPressureSensor() {
        return this.pressureSensor;
    }

    public final float getProximitySensor() {
        return this.proximitySensor;
    }

    public final float getTemperatureSensor() {
        return this.temperatureSensor;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
        Intrinsics.h(sensor, "sensor");
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        float[] fArr;
        Intrinsics.h(event, "event");
        Sensor sensor = event.sensor;
        if (sensor == null || (fArr = event.values) == null || fArr.length < 1) {
            return;
        }
        switch (sensor.getType()) {
            case 1:
                float[] fArr2 = event.values;
                Intrinsics.g(fArr2, "event.values");
                this.accelerometerSensor = fArr2;
                break;
            case 2:
                float[] fArr3 = event.values;
                Intrinsics.g(fArr3, "event.values");
                this.magneticFieldSensor = fArr3;
                break;
            case 3:
                float[] fArr4 = event.values;
                Intrinsics.g(fArr4, "event.values");
                this.orientationSensor = fArr4;
                break;
            case 4:
                float[] fArr5 = event.values;
                Intrinsics.g(fArr5, "event.values");
                this.gyroscopeSensor = fArr5;
                break;
            case 5:
                this.lightSensor = event.values[0];
                break;
            case 6:
                this.pressureSensor = event.values[0];
                break;
            case 7:
                this.temperatureSensor = event.values[0];
                break;
            case 8:
                this.proximitySensor = event.values[0];
                break;
            case 9:
                float[] fArr6 = event.values;
                Intrinsics.g(fArr6, "event.values");
                this.gravitySensor = fArr6;
                break;
        }
    }

    public final void onStart() {
        SensorManager sensorManager = this.mSensorManager;
        sensorManager.registerListener(this, sensorManager.getDefaultSensor(3), 0);
        SensorManager sensorManager2 = this.mSensorManager;
        sensorManager2.registerListener(this, sensorManager2.getDefaultSensor(5), 0);
        SensorManager sensorManager3 = this.mSensorManager;
        sensorManager3.registerListener(this, sensorManager3.getDefaultSensor(2), 0);
        SensorManager sensorManager4 = this.mSensorManager;
        sensorManager4.registerListener(this, sensorManager4.getDefaultSensor(8), 0);
        SensorManager sensorManager5 = this.mSensorManager;
        sensorManager5.registerListener(this, sensorManager5.getDefaultSensor(7), 0);
        SensorManager sensorManager6 = this.mSensorManager;
        sensorManager6.registerListener(this, sensorManager6.getDefaultSensor(4), 0);
        SensorManager sensorManager7 = this.mSensorManager;
        sensorManager7.registerListener(this, sensorManager7.getDefaultSensor(6), 0);
        SensorManager sensorManager8 = this.mSensorManager;
        sensorManager8.registerListener(this, sensorManager8.getDefaultSensor(9), 0);
        SensorManager sensorManager9 = this.mSensorManager;
        sensorManager9.registerListener(this, sensorManager9.getDefaultSensor(1), 0);
    }

    public final void onStop() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.cloud.tmc.ad.athena.a
            @Override // java.lang.Runnable
            public final void run() {
                SensorUtil.onStop$lambda$0(this.f23246a);
            }
        }, 2000L);
    }
}
