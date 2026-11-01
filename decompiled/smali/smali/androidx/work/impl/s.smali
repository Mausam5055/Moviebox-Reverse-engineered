.class public Landroidx/work/impl/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/foreground/a;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Landroid/content/Context;

.field private c:Landroidx/work/b;

.field private d:Lj4/c;

.field private e:Landroidx/work/impl/WorkDatabase;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Set;

.field private final j:Ljava/util/List;

.field private final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/s;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Lj4/c;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/s;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/work/impl/s;->c:Landroidx/work/b;

    iput-object p3, p0, Landroidx/work/impl/s;->d:Lj4/c;

    iput-object p4, p0, Landroidx/work/impl/s;->e:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/s;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/s;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/s;->i:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/s;->j:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/s;->a:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/s;->h:Ljava/util/Map;

    return-void
.end method

.method public static synthetic b(Landroidx/work/impl/s;Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/work/impl/model/j0;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/s;->m(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/work/impl/s;Landroidx/work/impl/model/x;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/s;->l(Landroidx/work/impl/model/x;Z)V

    return-void
.end method

.method public static synthetic d(Landroidx/work/impl/s;Lcom/google/common/util/concurrent/r;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/s;->n(Lcom/google/common/util/concurrent/r;Landroidx/work/impl/WorkerWrapper;)V

    return-void
.end method

.method private f(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/s;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/work/impl/s;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    :cond_1
    iget-object v2, p0, Landroidx/work/impl/s;->h:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/work/impl/s;->t()V

    :cond_2
    return-object v0
.end method

.method private h(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/s;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/s;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/work/impl/WorkerWrapper;

    :cond_0
    return-object v0
.end method

.method private static i(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/work/impl/WorkerWrapper;->p(I)V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerWrapper interrupted for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerWrapper could not be found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic l(Landroidx/work/impl/model/x;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/s;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/e;

    invoke-interface {v2, p1, p2}, Landroidx/work/impl/e;->c(Landroidx/work/impl/model/x;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic m(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/work/impl/model/j0;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/s;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->m0()Landroidx/work/impl/model/v1;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/work/impl/model/v1;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/work/impl/s;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/work/impl/model/k0;->j(Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object p1

    return-object p1
.end method

.method private synthetic n(Lcom/google/common/util/concurrent/r;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p2, p1}, Landroidx/work/impl/s;->o(Landroidx/work/impl/WorkerWrapper;Z)V

    return-void
.end method

.method private o(Landroidx/work/impl/WorkerWrapper;Z)V
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper;->m()Landroidx/work/impl/model/x;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/work/impl/s;->h(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-direct {p0, v2}, Landroidx/work/impl/s;->f(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object v3, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " executed; reschedule = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/work/impl/s;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/e;

    invoke-interface {v2, v1, p2}, Landroidx/work/impl/e;->c(Landroidx/work/impl/model/x;Z)V

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private q(Landroidx/work/impl/model/x;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/s;->d:Lj4/c;

    invoke-interface {v0}, Lj4/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/r;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/r;-><init>(Landroidx/work/impl/s;Landroidx/work/impl/model/x;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/s;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/s;->b:Landroid/content/Context;

    invoke-static {v1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/s;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/s;->l:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Landroidx/work/impl/s;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/impl/s;->a:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/work/i;)V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving WorkSpec ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to the foreground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/s;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/WorkerWrapper;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/work/impl/s;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/work/impl/s;->b:Landroid/content/Context;

    const-string v3, "ProcessorForegroundLck"

    invoke-static {v2, v3}, Landroidx/work/impl/utils/b0;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroidx/work/impl/s;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/s;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/s;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->m()Landroidx/work/impl/model/x;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f(Landroid/content/Context;Landroidx/work/impl/model/x;Landroidx/work/i;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Landroidx/work/impl/s;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/core/content/b;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Landroidx/work/impl/e;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/s;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Ljava/lang/String;)Landroidx/work/impl/model/j0;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/work/impl/s;->h(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper;->n()Landroidx/work/impl/model/j0;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/s;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/work/impl/s;->h(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p(Landroidx/work/impl/e;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/s;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(Landroidx/work/impl/y;Landroidx/work/WorkerParameters$a;)Z
    .locals 12

    invoke-virtual {p1}, Landroidx/work/impl/y;->a()Landroidx/work/impl/model/x;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/work/impl/s;->e:Landroidx/work/impl/WorkDatabase;

    new-instance v3, Landroidx/work/impl/p;

    invoke-direct {v3, p0, v9, v1}, Landroidx/work/impl/p;-><init>(Landroidx/work/impl/s;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/room/RoomDatabase;->Y(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/work/impl/model/j0;

    const/4 v2, 0x0

    if-nez v8, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find WorkSpec for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroidx/work/t;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Landroidx/work/impl/s;->q(Landroidx/work/impl/model/x;Z)V

    return v2

    :cond_0
    iget-object v10, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0, v1}, Landroidx/work/impl/s;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Landroidx/work/impl/s;->h:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/y;

    invoke-virtual {v1}, Landroidx/work/impl/y;->a()Landroidx/work/impl/model/x;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/impl/model/x;->a()I

    move-result v1

    invoke-virtual {v0}, Landroidx/work/impl/model/x;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Work "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is already enqueued for processing"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Landroidx/work/impl/s;->q(Landroidx/work/impl/model/x;Z)V

    :goto_0
    monitor-exit v10

    return v2

    :cond_2
    invoke-virtual {v8}, Landroidx/work/impl/model/j0;->g()I

    move-result v3

    invoke-virtual {v0}, Landroidx/work/impl/model/x;->a()I

    move-result v4

    if-eq v3, v4, :cond_3

    invoke-direct {p0, v0, v2}, Landroidx/work/impl/s;->q(Landroidx/work/impl/model/x;Z)V

    monitor-exit v10

    return v2

    :cond_3
    new-instance v11, Landroidx/work/impl/WorkerWrapper$a;

    iget-object v3, p0, Landroidx/work/impl/s;->b:Landroid/content/Context;

    iget-object v4, p0, Landroidx/work/impl/s;->c:Landroidx/work/b;

    iget-object v5, p0, Landroidx/work/impl/s;->d:Lj4/c;

    iget-object v7, p0, Landroidx/work/impl/s;->e:Landroidx/work/impl/WorkDatabase;

    move-object v2, v11

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Landroidx/work/impl/WorkerWrapper$a;-><init>(Landroid/content/Context;Landroidx/work/b;Lj4/c;Landroidx/work/impl/foreground/a;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/j0;Ljava/util/List;)V

    invoke-virtual {v11, p2}, Landroidx/work/impl/WorkerWrapper$a;->k(Landroidx/work/WorkerParameters$a;)Landroidx/work/impl/WorkerWrapper$a;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/impl/WorkerWrapper$a;->a()Landroidx/work/impl/WorkerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/impl/WorkerWrapper;->r()Lcom/google/common/util/concurrent/r;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/q;

    invoke-direct {v3, p0, v2, p2}, Landroidx/work/impl/q;-><init>(Landroidx/work/impl/s;Lcom/google/common/util/concurrent/r;Landroidx/work/impl/WorkerWrapper;)V

    iget-object v4, p0, Landroidx/work/impl/s;->d:Lj4/c;

    invoke-interface {v4}, Lj4/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/common/util/concurrent/r;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Landroidx/work/impl/s;->g:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/work/impl/s;->h:Ljava/util/Map;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public s(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processor cancelling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/s;->i:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Landroidx/work/impl/s;->f(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1, p2}, Landroidx/work/impl/s;->i(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public u(Landroidx/work/impl/y;I)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/work/impl/y;->a()Landroidx/work/impl/model/x;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/work/impl/s;->f(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1, p2}, Landroidx/work/impl/s;->i(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public v(Landroidx/work/impl/y;I)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/work/impl/y;->a()Landroidx/work/impl/model/x;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/s;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/s;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/s;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored stopWork. WorkerWrapper "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is in foreground"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/work/impl/s;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Landroidx/work/impl/s;->f(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p1, p2}, Landroidx/work/impl/s;->i(Ljava/lang/String;Landroidx/work/impl/WorkerWrapper;I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return v3

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
