.class public Lcom/bytedance/sdk/openadsdk/sU/TEQ;
.super Ljava/lang/Object;


# static fields
.field protected static final EjP:[F

.field protected static final HiB:[F

.field public static Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/sU/Sj;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TKC:[F

.field protected static final sP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->sP:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->TKC:[F

    const/16 v1, 0x9

    new-array v1, v1, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->EjP:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->HiB:[F

    return-void
.end method

.method public static EjP(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string p1, "SensorHub"

    const-string p2, "startListenRotationVector err"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static Sj(Landroid/content/Context;J)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static Sj(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V
    .locals 0

    return-void
.end method

.method public static Sj(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string p1, "SensorHub"

    const-string p2, "startListenAccelerometer error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static TKC(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string p1, "SensorHub"

    const-string p2, "startListenLinearAcceleration error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static sP(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    const-string p1, "SensorHub"

    const-string p2, "startListenGyroscope error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
