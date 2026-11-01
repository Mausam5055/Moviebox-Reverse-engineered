.class public Li7/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/e$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private b:[F

.field private c:F

.field private d:[F

.field private e:F

.field private f:F

.field private g:[F

.field private h:F

.field private i:[F

.field private j:[F

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Li7/e;->b:[F

    new-array v1, v0, [F

    iput-object v1, p0, Li7/e;->d:[F

    new-array v1, v0, [F

    iput-object v1, p0, Li7/e;->g:[F

    new-array v1, v0, [F

    iput-object v1, p0, Li7/e;->i:[F

    new-array v1, v0, [F

    iput-object v1, p0, Li7/e;->j:[F

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Li7/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Li7/e;->a:Landroid/hardware/SensorManager;

    return-void
.end method

.method synthetic constructor <init>(Li7/e$a;)V
    .locals 0

    invoke-direct {p0}, Li7/e;-><init>()V

    return-void
.end method

.method public static synthetic a(Li7/e;)V
    .locals 0

    invoke-direct {p0}, Li7/e;->n()V

    return-void
.end method

.method public static e()Li7/e;
    .locals 1

    invoke-static {}, Li7/e$b;->a()Li7/e;

    move-result-object v0

    return-object v0
.end method

.method public static k()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "ots"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->h()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "ls"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "ms"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->g()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "pxs"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->j()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "tps"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->l()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "gs"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->d()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "pss"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->i()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "gvs"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->c()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "ams"

    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v2

    invoke-virtual {v2}, Li7/e;->b()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private synthetic n()V
    .locals 2

    iget-object v0, p0, Li7/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Li7/e;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public static q()V
    .locals 2

    :try_start_0
    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v0

    invoke-virtual {v0}, Li7/e;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v0

    invoke-virtual {v0}, Li7/e;->p()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li7/a;->r0(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v0

    invoke-virtual {v0}, Li7/e;->p()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    :goto_1
    :try_start_4
    invoke-static {}, Li7/e;->e()Li7/e;

    move-result-object v1

    invoke-virtual {v1}, Li7/e;->p()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li7/a;->r0(Ljava/lang/String;)V

    :goto_2
    throw v0
.end method


# virtual methods
.method public b()[F
    .locals 1

    iget-object v0, p0, Li7/e;->j:[F

    return-object v0
.end method

.method public c()[F
    .locals 1

    iget-object v0, p0, Li7/e;->i:[F

    return-object v0
.end method

.method public d()[F
    .locals 1

    iget-object v0, p0, Li7/e;->g:[F

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Li7/e;->c:F

    return v0
.end method

.method public g()[F
    .locals 1

    iget-object v0, p0, Li7/e;->d:[F

    return-object v0
.end method

.method public h()[F
    .locals 1

    iget-object v0, p0, Li7/e;->b:[F

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Li7/e;->h:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Li7/e;->e:F

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Li7/e;->f:F

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Li7/e;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Li7/e;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Li7/e;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Li7/e;->a:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Li7/e;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    if-eqz p1, :cond_1

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

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Li7/e;->i:[F

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Li7/e;->e:F

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Li7/e;->f:F

    goto :goto_0

    :pswitch_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Li7/e;->h:F

    goto :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iput p1, p0, Li7/e;->c:F

    goto :goto_0

    :pswitch_5
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Li7/e;->g:[F

    goto :goto_0

    :pswitch_6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Li7/e;->b:[F

    goto :goto_0

    :pswitch_7
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Li7/e;->d:[F

    goto :goto_0

    :pswitch_8
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Li7/e;->j:[F

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

.method public p()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Li7/d;

    invoke-direct {v1, p0}, Li7/d;-><init>(Li7/e;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
