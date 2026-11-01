.class public final Lcom/cloud/tmc/ad/athena/SensorUtil;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;,
        Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \'2\u00020\u0001:\u0002\'(B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$H\u0016J\u0006\u0010%\u001a\u00020\u001dJ\u0006\u0010&\u001a\u00020\u001dR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u001e\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007R\u001e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007R\u001e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u001e\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000fR\u001e\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/athena/SensorUtil;",
        "Landroid/hardware/SensorEventListener;",
        "()V",
        "<set-?>",
        "",
        "accelerometerSensor",
        "getAccelerometerSensor",
        "()[F",
        "gravitySensor",
        "getGravitySensor",
        "gyroscopeSensor",
        "getGyroscopeSensor",
        "",
        "lightSensor",
        "getLightSensor",
        "()F",
        "mSensorManager",
        "Landroid/hardware/SensorManager;",
        "magneticFieldSensor",
        "getMagneticFieldSensor",
        "orientationSensor",
        "getOrientationSensor",
        "pressureSensor",
        "getPressureSensor",
        "proximitySensor",
        "getProximitySensor",
        "temperatureSensor",
        "getTemperatureSensor",
        "onAccuracyChanged",
        "",
        "sensor",
        "Landroid/hardware/Sensor;",
        "accuracy",
        "",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
        "onStart",
        "onStop",
        "Companion",
        "SingletonHolder",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;


# instance fields
.field private accelerometerSensor:[F

.field private gravitySensor:[F

.field private gyroscopeSensor:[F

.field private lightSensor:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private magneticFieldSensor:[F

.field private orientationSensor:[F

.field private pressureSensor:F

.field private proximitySensor:F

.field private temperatureSensor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/ad/athena/SensorUtil;->Companion:Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->orientationSensor:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->magneticFieldSensor:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gyroscopeSensor:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gravitySensor:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->accelerometerSensor:[F

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/ad/athena/SensorUtil;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/ad/athena/SensorUtil;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/ad/athena/SensorUtil;->onStop$lambda$0(Lcom/cloud/tmc/ad/athena/SensorUtil;)V

    return-void
.end method

.method private static final onStop$lambda$0(Lcom/cloud/tmc/ad/athena/SensorUtil;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public final getAccelerometerSensor()[F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->accelerometerSensor:[F

    return-object v0
.end method

.method public final getGravitySensor()[F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gravitySensor:[F

    return-object v0
.end method

.method public final getGyroscopeSensor()[F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gyroscopeSensor:[F

    return-object v0
.end method

.method public final getLightSensor()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->lightSensor:F

    return v0
.end method

.method public final getMagneticFieldSensor()[F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->magneticFieldSensor:[F

    return-object v0
.end method

.method public final getOrientationSensor()[F
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->orientationSensor:[F

    return-object v0
.end method

.method public final getPressureSensor()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->pressureSensor:F

    return v0
.end method

.method public final getProximitySensor()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->proximitySensor:F

    return v0
.end method

.method public final getTemperatureSensor()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->temperatureSensor:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    const-string p2, "sensor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "event.values"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gravitySensor:[F

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->proximitySensor:F

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->temperatureSensor:F

    goto :goto_0

    :pswitch_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->pressureSensor:F

    goto :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->lightSensor:F

    goto :goto_0

    :pswitch_5
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->gyroscopeSensor:[F

    goto :goto_0

    :pswitch_6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->orientationSensor:[F

    goto :goto_0

    :pswitch_7
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->magneticFieldSensor:[F

    goto :goto_0

    :pswitch_8
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->accelerometerSensor:[F

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/cloud/tmc/ad/athena/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public final onStop()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/cloud/tmc/ad/athena/a;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/ad/athena/a;-><init>(Lcom/cloud/tmc/ad/athena/SensorUtil;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
