.class public Lcom/mbridge/msdk/out/MBridgeSDKFactory;
.super Ljava/lang/Object;


# static fields
.field private static volatile instance:Lcom/mbridge/msdk/system/MBridgeSDKImpl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMBridgeSDK()Lcom/mbridge/msdk/system/MBridgeSDKImpl;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/MBridgeSDKImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/out/MBridgeSDKFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/MBridgeSDKImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/system/MBridgeSDKImpl;

    invoke-direct {v1}, Lcom/mbridge/msdk/system/MBridgeSDKImpl;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/MBridgeSDKImpl;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/out/MBridgeSDKFactory;->instance:Lcom/mbridge/msdk/system/MBridgeSDKImpl;

    return-object v0
.end method
