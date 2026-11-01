.class public final Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/athena/SensorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;",
        "",
        "()V",
        "getInstance",
        "Lcom/cloud/tmc/ad/athena/SensorUtil;",
        "register",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;->register$lambda$0()V

    return-void
.end method

.method private static final register$lambda$0()V
    .locals 2

    sget-object v0, Lcom/cloud/tmc/ad/athena/SensorUtil;->Companion:Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;->getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/ad/athena/SensorUtil;->onStart()V

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil$Companion;->getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil;->onStop()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;->INSTANCE:Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/athena/SensorUtil$SingletonHolder;->getInstance()Lcom/cloud/tmc/ad/athena/SensorUtil;

    move-result-object v0

    return-object v0
.end method

.method public final register()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/cloud/tmc/ad/athena/b;

    invoke-direct {v1}, Lcom/cloud/tmc/ad/athena/b;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
