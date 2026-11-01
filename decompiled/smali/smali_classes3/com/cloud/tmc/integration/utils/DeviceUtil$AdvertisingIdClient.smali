.class final Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/utils/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingIdClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;,
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;,
        Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;",
        "",
        "()V",
        "getAdvertisingIdInfo",
        "Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;",
        "context",
        "Landroid/content/Context;",
        "AdInfo",
        "AdvertisingConnection",
        "AdvertisingInterface",
        "com.cloud.tmc.integration"
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
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;->INSTANCE:Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdvertisingIdInfo(Landroid/content/Context;)Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;

    const-string v4, ""

    invoke-direct {v1, v4, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;

    invoke-direct {v1, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    new-instance v2, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v1

    invoke-direct {v2, v4, v1}, Lcom/cloud/tmc/integration/utils/DeviceUtil$AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
