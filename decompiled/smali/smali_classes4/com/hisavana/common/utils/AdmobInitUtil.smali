.class public Lcom/hisavana/common/utils/AdmobInitUtil;
.super Ljava/lang/Object;


# static fields
.field private static volatile handlerThread:Landroid/os/HandlerThread; = null

.field private static volatile started:Z = false

.field private static threadName:Ljava/lang/String; = "admob init thread"


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

.method public static declared-synchronized getHanderThread()Landroid/os/HandlerThread;
    .locals 4

    const-class v0, Lcom/hisavana/common/utils/AdmobInitUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    const-class v1, Lcom/hisavana/common/utils/AdmobInitUtil;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/HandlerThread;

    sget-object v3, Lcom/hisavana/common/utils/AdmobInitUtil;->threadName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static declared-synchronized quit()V
    .locals 2

    const-class v0, Lcom/hisavana/common/utils/AdmobInitUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized start()V
    .locals 2

    const-class v0, Lcom/hisavana/common/utils/AdmobInitUtil;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hisavana/common/utils/AdmobInitUtil;->started:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hisavana/common/utils/AdmobInitUtil;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-boolean v1, Lcom/hisavana/common/utils/AdmobInitUtil;->started:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lcom/hisavana/common/utils/AdmobInitUtil;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
