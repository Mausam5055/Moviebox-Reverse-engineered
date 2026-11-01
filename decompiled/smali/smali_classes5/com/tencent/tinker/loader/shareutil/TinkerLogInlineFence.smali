.class final Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;
.super Landroid/os/Handler;


# annotations
.annotation build Lcom/tencent/tinker/anno/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerLogInlineFence"

.field public static final synthetic a:I

.field private static final mainThreadHandler:Landroid/os/Handler;

.field private static final pendingLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static dummyThrowExceptionMethod()V
    .locals 1

    const-class v0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private handleMessageImpl(Landroid/os/Message;)V
    .locals 8

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->getDefaultImpl()Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->getImpl()Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_10

    if-eq v2, v4, :cond_d

    if-eq v2, v3, :cond_a

    const/4 v6, 0x5

    if-eq v2, v6, :cond_7

    const/4 v7, 0x6

    if-eq v2, v7, :cond_4

    const/16 v7, 0xfa1

    if-eq v2, v7, :cond_1

    const/16 v0, 0xfa2

    if-eq v2, v0, :cond_0

    const-string v0, "Tinker.TinkerLogInlineFence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[-] Bad msg id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, p1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->printPendingLogs(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Throwable;

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    aget-object v5, p1, v6

    check-cast v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_13

    :cond_3
    sget-object v2, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/String;

    aget-object v3, p1, v3

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v1, :cond_6

    if-ne v1, v0, :cond_13

    :cond_6
    sget-object v2, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    monitor-enter v2

    :try_start_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz v1, :cond_8

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/String;

    aget-object v3, p1, v3

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz v1, :cond_9

    if-ne v1, v0, :cond_13

    :cond_9
    sget-object v2, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    monitor-enter v2

    :try_start_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz v1, :cond_b

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/String;

    aget-object v3, p1, v3

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v1, :cond_c

    if-ne v1, v0, :cond_13

    :cond_c
    sget-object v2, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    monitor-enter v2

    :try_start_3
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_3
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz v1, :cond_e

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/String;

    aget-object v3, p1, v3

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    if-eqz v1, :cond_f

    if-ne v1, v0, :cond_13

    :cond_f
    sget-object v2, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    monitor-enter v2

    :try_start_4
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_4
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz v1, :cond_11

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/String;

    aget-object v3, p1, v3

    check-cast v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    if-eqz v1, :cond_12

    if-ne v1, v0, :cond_13

    :cond_12
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    monitor-enter v0

    :try_start_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :cond_13
    :goto_0
    return-void

    :catchall_5
    move-exception p1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1
.end method

.method private handleMessage_$noinline$(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->dummyThrowExceptionMethod()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->handleMessageImpl(Landroid/os/Message;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->handleMessageImpl(Landroid/os/Message;)V

    throw v0
.end method

.method private static printPendingLogs(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V
    .locals 2

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->pendingLogs:Ljava/util/List;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    invoke-direct {v1, p0}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;-><init>(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V

    const-string p0, "tinker_log_printer"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence;->handleMessage_$noinline$(Landroid/os/Message;)V

    return-void
.end method
