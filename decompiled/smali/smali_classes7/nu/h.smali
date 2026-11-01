.class public abstract Lnu/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnu/h$f;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/tinker/entry/ApplicationLike;

.field private static final b:Lwu/f;

.field private static c:Ltu/a;

.field private static d:Lwu/a;

.field private static e:Lwu/b;

.field private static f:Lcom/transsion/tinker/lib/custom/download/DownloadManager;

.field private static g:Lxu/b;

.field private static h:Landroid/content/BroadcastReceiver;

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final j:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwu/f;

    invoke-direct {v0}, Lwu/f;-><init>()V

    sput-object v0, Lnu/h;->b:Lwu/f;

    invoke-static {}, Lxu/b;->a()Lxu/b;

    move-result-object v0

    sput-object v0, Lnu/h;->g:Lxu/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lnu/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lnu/a;

    invoke-direct {v0}, Lnu/a;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnu/h;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static synthetic A(Ljava/lang/String;Lou/c;)V
    .locals 1

    const-string v0, "blacklisted"

    invoke-interface {p1, p0, v0}, Lou/c;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic B(Ljava/lang/String;Ljava/lang/String;Lou/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lou/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic C(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "tinker-reporter"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static D(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lnu/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnu/h;->h:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_1
    new-instance v1, Lnu/h$b;

    invoke-direct {v1, p0}, Lnu/h$b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnu/h;->h:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.tinker.custom.action.PATCH_RESULT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    sget-object v2, Lnu/h;->h:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-static {p0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    sget-object v2, Lnu/h;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lnu/h;->h:Landroid/content/BroadcastReceiver;

    const-string v1, "Tinker.HotfixHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register result receiver failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static synthetic a(Ljava/lang/String;Lou/c;)V
    .locals 0

    invoke-static {p0, p1}, Lnu/h;->x(Ljava/lang/String;Lou/c;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lou/c;)V
    .locals 0

    invoke-static {p0, p1}, Lnu/h;->A(Ljava/lang/String;Lou/c;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lnu/h;->y(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lnu/h;->C(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Lou/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnu/h;->B(Ljava/lang/String;Ljava/lang/String;Lou/c;)V

    return-void
.end method

.method public static synthetic f(Lnu/h$f;)V
    .locals 0

    invoke-static {p0}, Lnu/h;->z(Lnu/h$f;)V

    return-void
.end method

.method static synthetic g()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lnu/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic h(Lnu/h$f;)V
    .locals 0

    invoke-static {p0}, Lnu/h;->p(Lnu/h$f;)V

    return-void
.end method

.method static synthetic i()Lwu/f;
    .locals 1

    sget-object v0, Lnu/h;->b:Lwu/f;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lnu/h;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static k(Landroid/content/Context;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lzu/c;->c(Landroid/content/Context;J)V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v0

    invoke-virtual {v0}, Lou/a;->I()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Tinker.HotfixHelper"

    const-string v1, "hotfix is disabled, skip checkPendingPatch"

    invoke-static {v0, v1, p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_2
    sget-object v0, Lnu/h;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnu/b;

    invoke-direct {v1, p0}, Lnu/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static m(Ljava/io/File;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "Tinker.HotfixHelper"

    const-string v6, "failed to delete old patch cache: %s"

    invoke-static {v4, v6, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static n(Lou/c;)V
    .locals 1

    sget-object v0, Lnu/h;->b:Lwu/f;

    invoke-virtual {v0, p0}, Lwu/f;->p(Lou/c;)V

    return-void
.end method

.method public static o()V
    .locals 0

    invoke-static {}, Lzu/c;->d()V

    return-void
.end method

.method private static p(Lnu/h$f;)V
    .locals 2

    sget-object v0, Lnu/h;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnu/d;

    invoke-direct {v1, p0}, Lnu/d;-><init>(Lnu/h$f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static q(Landroid/content/Context;Lou/d;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_12

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lou/d;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lou/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v3

    invoke-virtual {v3}, Lou/a;->I()Z

    move-result v3

    const-string v4, "Tinker.HotfixHelper"

    if-nez v3, :cond_3

    const-string p0, "hotfix is disabled by remote config, skip downloadAndInstall"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "hotfix disabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lou/d;->m()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0, p1, p2}, Lnu/h;->r(Landroid/content/Context;Lou/d;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lou/d;->d()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Lou/d;->d()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-lez v3, :cond_6

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lou/d;->d()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object v5, v0, v1

    const-string v1, "patch %s expired at %d, reject download"

    invoke-static {v4, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->EXPIRED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expired"

    invoke-static {p0, v0, v1, v2}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patch expired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_5
    return-void

    :cond_6
    invoke-static {p0}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v3

    invoke-static {p0}, Lyu/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v3, v6, :cond_7

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "patch %s already installed, skip re-download"

    invoke-static {v4, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    sget-object v6, Lcom/transsion/tinker/lib/custom/api/PatchState;->BLACKLISTED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v3, v6, :cond_9

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lou/d;->n()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lyu/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object v5, v0, v1

    const-string v1, "patch %s is blacklisted, reject download. reason: %s"

    invoke-static {v4, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lnu/e;

    invoke-direct {v0, p1}, Lnu/e;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnu/h;->p(Lnu/h$f;)V

    if-eqz p2, :cond_8

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patch is blacklisted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lyu/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_8
    return-void

    :cond_9
    if-ne v3, v6, :cond_a

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lou/d;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "mandatory patch %s bypassing BLACKLISTED state"

    invoke-static {v4, v0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lyu/a;->a(Landroid/content/Context;)V

    :cond_a
    sget-object v0, Lnu/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    const-string p0, "a download is already in progress, reject new request"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_b

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A download task is already in progress"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_b
    return-void

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v2

    invoke-virtual {v2}, Lou/a;->G()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p0, v5}, Lyu/a;->k(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d
    invoke-static {v0}, Lnu/h;->m(Ljava/io/File;)V

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnu/f;

    invoke-direct {v2, v5, v1}, Lnu/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lnu/h;->p(Lnu/h$f;)V

    :cond_e
    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->DOWNLOADING:Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start downloading patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INFO"

    invoke-static {p0, v2, v4, v1}, Luu/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lou/d;->d()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lyu/a;->j(Landroid/content/Context;J)V

    sget-object v1, Lnu/h;->f:Lcom/transsion/tinker/lib/custom/download/DownloadManager;

    if-nez v1, :cond_f

    new-instance v1, Lcom/transsion/tinker/lib/custom/download/DownloadManager;

    invoke-direct {v1, p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnu/h;->f:Lcom/transsion/tinker/lib/custom/download/DownloadManager;

    :cond_f
    sget-object v1, Lnu/h;->b:Lwu/f;

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lou/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lwu/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lnu/h;->f:Lcom/transsion/tinker/lib/custom/download/DownloadManager;

    new-instance v2, Lnu/h$a;

    invoke-direct {v2, p2, p0, p1}, Lnu/h$a;-><init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Landroid/content/Context;Lou/d;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/transsion/tinker/lib/custom/download/DownloadManager;->f(Lou/d;Ljava/io/File;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V

    return-void

    :cond_10
    :goto_0
    if-eqz p2, :cond_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "patch url is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_11
    return-void

    :cond_12
    :goto_1
    if-eqz p2, :cond_13

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context or info is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_13
    return-void
.end method

.method private static r(Landroid/content/Context;Lou/d;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V
    .locals 7

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Tinker.HotfixHelper"

    const-string v4, "patch %s disabled by server"

    invoke-static {v0, v4, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lyu/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v2

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v5, "server_invalidated"

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->NONE:Lcom/transsion/tinker/lib/custom/api/PatchState;

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v5}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    aput-object v2, v6, v1

    const-string v1, "patch %s in state %s, rolling back due to server_invalidated"

    invoke-static {v0, v1, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v2, v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v2

    invoke-virtual {v2}, Lou/a;->G()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lnu/h;->m(Ljava/io/File;)V

    :cond_2
    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnu/h;->b:Lwu/f;

    invoke-static {p0, v0, v5, v1}, Lxu/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lou/c;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "patch disabled by server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lou/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method

.method private static s(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lyu/a;->e(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/api/PatchState;

    move-result-object v2

    invoke-static {p0}, Lyu/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->INSTALLED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v5, "Tinker.HotfixHelper"

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "server revoked patch config, current state=%s, no rollback needed"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, p0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "server revoked patch config, cleaning up: patchId=%s state=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    aput-object v2, v6, v1

    invoke-static {v5, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v0

    invoke-virtual {v0}, Lvf/a;->a()V

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->ROLLBACK:Lcom/transsion/tinker/lib/custom/api/PatchState;

    const-string v1, "server_revoked"

    invoke-static {p0, v0, v3, v1}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    if-ne v2, v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v1

    invoke-virtual {v1}, Lou/a;->G()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lnu/h;->m(Ljava/io/File;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static t(Landroid/content/Context;Lou/c;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Tinker.HotfixHelper"

    const-string v0, "initialize: context is null, skip"

    invoke-static {p1, v0, p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_1
    invoke-static {p1}, Lnu/h;->n(Lou/c;)V

    invoke-static {p0}, Lvu/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static u(Lcom/tencent/tinker/entry/ApplicationLike;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnu/h;->v(Lcom/tencent/tinker/entry/ApplicationLike;Lou/c;)V

    return-void
.end method

.method public static v(Lcom/tencent/tinker/entry/ApplicationLike;Lou/c;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lnu/h;->a:Lcom/tencent/tinker/entry/ApplicationLike;

    if-eqz p1, :cond_1

    sget-object v0, Lnu/h;->b:Lwu/f;

    invoke-virtual {v0, p1}, Lwu/f;->p(Lou/c;)V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tinker/entry/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Tinker.HotfixHelper"

    const-string v0, "install failed: application context is null"

    invoke-static {p1, v0, p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object v0, Lnu/h;->g:Lxu/b;

    sget-object v1, Lnu/h;->b:Lwu/f;

    invoke-static {p1, v0, v1}, Lxu/d;->b(Landroid/content/Context;Lxu/b;Lou/c;)V

    new-instance v0, Ltu/a;

    invoke-direct {v0, p1}, Ltu/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnu/h;->c:Ltu/a;

    invoke-virtual {v0, v1}, Ltu/a;->f(Lou/c;)V

    new-instance v0, Lwu/a;

    invoke-direct {v0, p1, v1}, Lwu/a;-><init>(Landroid/content/Context;Lou/c;)V

    sput-object v0, Lnu/h;->d:Lwu/a;

    new-instance v0, Lwu/b;

    invoke-direct {v0, p1, v1}, Lwu/b;-><init>(Landroid/content/Context;Lou/c;)V

    sput-object v0, Lnu/h;->e:Lwu/b;

    sget-object v0, Lnu/h;->g:Lxu/b;

    invoke-static {p1, v0}, Lyu/a;->l(Landroid/content/Context;Lxu/b;)V

    invoke-static {p1}, Lnu/h;->D(Landroid/content/Context;)V

    invoke-static {p1}, Lnu/h;->w(Landroid/content/Context;)V

    sget-object v2, Lnu/h;->d:Lwu/a;

    sget-object v3, Lnu/h;->e:Lwu/b;

    sget-object v4, Lnu/h;->c:Ltu/a;

    new-instance v6, Ltf/g;

    invoke-direct {v6}, Ltf/g;-><init>()V

    const-class v5, Lcom/transsion/tinker/lib/custom/service/CustomResultService;

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lvf/b;->a(Lcom/tencent/tinker/entry/ApplicationLike;Luf/c;Luf/d;Lsf/b;Ljava/lang/Class;Ltf/a;)Lvf/a;

    return-void
.end method

.method private static w(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lnu/h$d;

    invoke-direct {v0, p0}, Lnu/h$d;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->setTinkerLogImp(Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;)V

    return-void
.end method

.method private static synthetic x(Ljava/lang/String;Lou/c;)V
    .locals 1

    const-string v0, "blacklisted_rollback_loop"

    invoke-interface {p1, p0, v0}, Lou/c;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic y(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;->d(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    move-result-object v3

    sget-object v4, Lnu/h$e;->a:[I

    iget-object v5, v3, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->a:Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "Tinker.HotfixHelper"

    if-eq v4, v2, :cond_2

    if-eq v4, v0, :cond_1

    const/4 p0, 0x3

    if-eq v4, p0, :cond_0

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "checkPendingPatch: network error, skip"

    invoke-static {v5, v0, p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lnu/h;->s(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->b:Lou/d;

    invoke-virtual {v4}, Lou/d;->f()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v4, "checkPendingPatch: pending patch found, patchId=%s"

    invoke-static {v5, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lyu/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->b:Lou/d;

    invoke-virtual {v6}, Lou/d;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string p0, "checkPendingPatch: patch %s is blacklisted, skip download to avoid rollback loop"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-static {v5, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lnu/c;

    invoke-direct {p0, v4}, Lnu/c;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnu/h;->p(Lnu/h$f;)V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "checkPendingPatch: new patch available (blacklisted=%s, pending=%s), clearing blacklist"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    aput-object v6, v0, v2

    invoke-static {v5, v7, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lyu/a;->a(Landroid/content/Context;)V

    :cond_4
    iget-object v0, v3, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->b:Lou/d;

    new-instance v1, Lnu/h$c;

    invoke-direct {v1}, Lnu/h$c;-><init>()V

    invoke-static {p0, v0, v1}, Lnu/h;->q(Landroid/content/Context;Lou/d;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V

    :goto_0
    return-void
.end method

.method private static synthetic z(Lnu/h$f;)V
    .locals 2

    :try_start_0
    sget-object v0, Lnu/h;->b:Lwu/f;

    invoke-interface {p0, v0}, Lnu/h$f;->a(Lou/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Tinker.HotfixHelper"

    const-string v1, "reporter dispatch failed: %s"

    invoke-static {p0, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
