.class public Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;
    }
.end annotation


# static fields
.field private static final debugLog:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

.field private static final tinkerLogImpRef:[Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

.field private static final tinkerLogInlineFenceRef:[Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/os/Handler;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->tinkerLogInlineFenceRef:[Landroid/os/Handler;

    new-instance v4, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$1;

    invoke-direct {v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$1;-><init>()V

    sput-object v4, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->debugLog:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    new-array v5, v1, [Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    aput-object v4, v5, v3

    sput-object v5, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->tinkerLogImpRef:[Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    monitor-enter v2

    :try_start_0
    const-class v4, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;

    sget v5, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v4, "Tinker.ShareTinkerLog"

    const-string v5, "[-] Fail to create inline fence instance."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->tinkerLogInlineFenceRef:[Landroid/os/Handler;

    aput-object v0, v1, v3

    :goto_0
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printLog(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printLog(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultImpl()Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;
    .locals 1

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->debugLog:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    return-object v0
.end method

.method public static getImpl()Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;
    .locals 2

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->tinkerLogImpRef:[Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getInlineFence()Landroid/os/Handler;
    .locals 2

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->tinkerLogInlineFenceRef:[Landroid/os/Handler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printLog(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printLog(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs printLog(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const/4 v0, 0x3

    aput-object p2, v1, v0

    const/4 v0, 0x4

    aput-object p3, v1, v0

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->getInlineFence()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p0}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->debugLog:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!! NO_LOG_IMPL !! Original Log: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static varargs printLog(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xfa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const/4 v0, 0x3

    aput-object p1, v1, v0

    const/4 v0, 0x4

    aput-object p2, v1, v0

    const/4 v0, 0x5

    aput-object p3, v1, v0

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->getInlineFence()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p0}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->debugLog:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!! NO_LOG_IMPL !! Original Log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static printPendingLogs()V
    .locals 2

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->getInlineFence()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xfa2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    :cond_0
    return-void
.end method

.method public static setTinkerLogImp(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V
    .locals 2

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->tinkerLogImpRef:[Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aput-object p0, v0, v1

    if-eqz p0, :cond_0

    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->debugLog:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    if-eq p0, v1, :cond_0

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printPendingLogs()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printLog(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printLog(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
