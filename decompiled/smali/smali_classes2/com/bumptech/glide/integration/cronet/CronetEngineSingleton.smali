.class public final Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;
.super Ljava/lang/Object;


# static fields
.field private static volatile cronetEngineSingleton:Lorg/chromium/net/CronetEngine;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEngine(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;
    .locals 3

    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    invoke-direct {v0, p0}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleton(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;
    .locals 2

    sget-object v0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    if-nez v0, :cond_1

    const-class v0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->createEngine(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->cronetEngineSingleton:Lorg/chromium/net/CronetEngine;

    return-object p0
.end method
