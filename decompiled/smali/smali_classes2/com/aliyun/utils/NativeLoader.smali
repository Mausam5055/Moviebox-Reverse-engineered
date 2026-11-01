.class public Lcom/aliyun/utils/NativeLoader;
.super Ljava/lang/Object;


# static fields
.field private static downloaderLoaded:Z

.field private static playerLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized loadDownloader()V
    .locals 2

    const-class v0, Lcom/aliyun/utils/NativeLoader;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    sget-boolean v1, Lcom/aliyun/utils/NativeLoader;->downloaderLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "saasDownloader"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->downloaderLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized loadPlayer()V
    .locals 2

    const-class v0, Lcom/aliyun/utils/NativeLoader;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z

    invoke-static {}, Lcom/aliyun/player/nativeclass/JniUrlPlayer;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/nativeclass/JniSaasPlayer;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/nativeclass/JniListPlayerBase;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/nativeclass/JniUrlListPlayer;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/nativeclass/JniSaasListPlayer;->loadClass()V

    invoke-static {}, Lcom/aliyun/private_service/PrivateService;->loadClass()V

    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->loadClass()V

    invoke-static {}, Lcom/aliyun/loader/VodMediaLoader;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/AliPlayerGlobalSettings;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/HlsKeyGenerator;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/nativeclass/NativeExternalPlayer;->loadClass()V

    invoke-static {}, Lcom/aliyun/player/nativeclass/NativePlayerBase;->loadClass()V

    invoke-static {}, Lcom/aliyun/thumbnail/ThumbnailHelper;->loadClass()V

    invoke-static {}, Lcom/aliyun/utils/DeviceInfoUtils;->loadClass()V

    invoke-static {}, Lcom/cicada/player/utils/Logger;->loadClass()V

    invoke-static {}, Lcom/cicada/player/utils/ass/AssUtils;->loadClass()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "alivcffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "saasCorePlayer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/aliyun/utils/NativeLoader;->playerLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
