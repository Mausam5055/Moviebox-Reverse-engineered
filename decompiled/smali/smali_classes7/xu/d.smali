.class public abstract Lxu/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lxu/b;Lou/c;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lxu/d;->c(Landroid/content/Context;Lxu/b;Lou/c;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lxu/b;Lou/c;)V
    .locals 3

    sget-boolean v0, Lxu/d;->a:Z

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lxu/b;->a:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lxu/d;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lxu/d;->a:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p0, v1

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v2, Lxu/c;

    invoke-direct {v2, p0, p1, p2, v1}, Lxu/c;-><init>(Landroid/content/Context;Lxu/b;Lou/c;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p0, 0x1

    sput-boolean p0, Lxu/d;->a:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic c(Landroid/content/Context;Lxu/b;Lou/c;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Tinker.CrashRollback"

    if-nez p0, :cond_1

    :try_start_0
    const-string p0, "crash monitor skipped: context is null"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-interface {p3, p4, p5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {p0}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v3

    invoke-static {p0}, Lyu/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v3, v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p1, Lxu/b;->c:J

    invoke-static {p0, v5, v6, v7, v8}, Lyu/a;->g(Landroid/content/Context;JJ)I

    move-result v3

    const-string v5, "patch crash count=%d/%d, patchId=%s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p1, Lxu/b;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    const/4 v6, 0x2

    aput-object v4, v8, v6

    invoke-static {v2, v5, v8}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p1, Lxu/b;->b:I

    if-lt v3, p1, :cond_2

    const-string p1, "crash_threshold"

    invoke-static {p0, v4, p1, p2}, Lxu/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lou/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p3, :cond_3

    :goto_0
    invoke-interface {p3, p4, p5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    :try_start_2
    const-string p1, "crash monitor error: %s"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p0, p2, v1

    invoke-static {v2, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    if-eqz p3, :cond_4

    invoke-interface {p3, p4, p5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    throw p0
.end method
