.class public abstract Lzu/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile b:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzu/b;

    invoke-direct {v0}, Lzu/b;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lzu/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lzu/c;->f(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lzu/c;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 3

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_1
    invoke-static {}, Lzu/c;->d()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Tinker.StartupWatchdog"

    const-string v2, "watchdog armed, timeout=%dms"

    invoke-static {v0, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lzu/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lzu/a;

    invoke-direct {v1, p0}, Lzu/a;-><init>(Landroid/content/Context;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lzu/c;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method public static d()V
    .locals 3

    sget-object v0, Lzu/c;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "watchdog disarmed"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Tinker.StartupWatchdog"

    invoke-static {v2, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lzu/c;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static synthetic e(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Tinker.StartupWatchdog"

    :try_start_0
    invoke-static {p0}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v3

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-eq v3, v4, :cond_0

    const-string p0, "watchdog fired but state=%s, skip rollback"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-static {v2, p0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lyu/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "startup timeout detected! patchId=%s, triggering rollback"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-static {v2, v4, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "startup_timeout"

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lxu/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lou/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "watchdog error: %s"

    invoke-static {v2, p0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static synthetic f(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "tinker-watchdog"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
