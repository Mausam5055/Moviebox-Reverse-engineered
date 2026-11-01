.class public Landroidx/work/impl/f1;
.super Landroidx/work/WorkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/f1$b;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;

.field private static n:Landroidx/work/impl/f1;

.field private static o:Landroidx/work/impl/f1;

.field private static final p:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroidx/work/b;

.field private d:Landroidx/work/impl/WorkDatabase;

.field private e:Lj4/c;

.field private f:Ljava/util/List;

.field private g:Landroidx/work/impl/s;

.field private h:Landroidx/work/impl/utils/z;

.field private i:Z

.field private j:Landroid/content/BroadcastReceiver$PendingResult;

.field private final k:Li4/n;

.field private final l:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/f1;->m:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/f1;->n:Landroidx/work/impl/f1;

    sput-object v0, Landroidx/work/impl/f1;->o:Landroidx/work/impl/f1;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/f1;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Lj4/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/s;Li4/n;)V
    .locals 2

    invoke-direct {p0}, Landroidx/work/WorkManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/impl/f1;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Landroidx/work/impl/f1$b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/work/t$a;

    invoke-virtual {p2}, Landroidx/work/b;->j()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/work/t$a;-><init>(I)V

    invoke-static {v0}, Landroidx/work/t;->h(Landroidx/work/t;)V

    iput-object p1, p0, Landroidx/work/impl/f1;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/work/impl/f1;->e:Lj4/c;

    iput-object p4, p0, Landroidx/work/impl/f1;->d:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Landroidx/work/impl/f1;->g:Landroidx/work/impl/s;

    iput-object p7, p0, Landroidx/work/impl/f1;->k:Li4/n;

    iput-object p2, p0, Landroidx/work/impl/f1;->c:Landroidx/work/b;

    iput-object p5, p0, Landroidx/work/impl/f1;->f:Ljava/util/List;

    invoke-static {p3}, Landroidx/work/impl/WorkManagerImplExtKt;->f(Lj4/c;)Lkotlinx/coroutines/n0;

    move-result-object p6

    iput-object p6, p0, Landroidx/work/impl/f1;->l:Lkotlinx/coroutines/n0;

    new-instance p7, Landroidx/work/impl/utils/z;

    iget-object v0, p0, Landroidx/work/impl/f1;->d:Landroidx/work/impl/WorkDatabase;

    invoke-direct {p7, v0}, Landroidx/work/impl/utils/z;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p7, p0, Landroidx/work/impl/f1;->h:Landroidx/work/impl/utils/z;

    iget-object p7, p0, Landroidx/work/impl/f1;->g:Landroidx/work/impl/s;

    invoke-interface {p3}, Lj4/c;->c()Lj4/a;

    move-result-object p3

    iget-object v0, p0, Landroidx/work/impl/f1;->d:Landroidx/work/impl/WorkDatabase;

    invoke-static {p5, p7, p3, v0, p2}, Landroidx/work/impl/x;->g(Ljava/util/List;Landroidx/work/impl/s;Ljava/util/concurrent/Executor;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;)V

    iget-object p3, p0, Landroidx/work/impl/f1;->e:Lj4/c;

    new-instance p5, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p5, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/f1;)V

    invoke-interface {p3, p5}, Lj4/c;->d(Ljava/lang/Runnable;)V

    iget-object p1, p0, Landroidx/work/impl/f1;->b:Landroid/content/Context;

    invoke-static {p6, p1, p2, p4}, Landroidx/work/impl/UnfinishedWorkListenerKt;->c(Lkotlinx/coroutines/n0;Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Landroidx/work/b;)V
    .locals 3

    sget-object v0, Landroidx/work/impl/f1;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/impl/f1;->n:Landroidx/work/impl/f1;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/work/impl/f1;->o:Landroidx/work/impl/f1;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroidx/work/impl/f1;->o:Landroidx/work/impl/f1;

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Landroidx/work/impl/WorkManagerImplExtKt;->c(Landroid/content/Context;Landroidx/work/b;)Landroidx/work/impl/f1;

    move-result-object p0

    sput-object p0, Landroidx/work/impl/f1;->o:Landroidx/work/impl/f1;

    :cond_2
    sget-object p0, Landroidx/work/impl/f1;->o:Landroidx/work/impl/f1;

    sput-object p0, Landroidx/work/impl/f1;->n:Landroidx/work/impl/f1;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic i(Landroidx/work/impl/f1;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/f1;->v()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static n()Landroidx/work/impl/f1;
    .locals 2

    sget-object v0, Landroidx/work/impl/f1;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/work/impl/f1;->n:Landroidx/work/impl/f1;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/work/impl/f1;->o:Landroidx/work/impl/f1;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static o(Landroid/content/Context;)Landroidx/work/impl/f1;
    .locals 2

    sget-object v0, Landroidx/work/impl/f1;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/work/impl/f1;->n()Landroidx/work/impl/f1;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Landroidx/work/b$c;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/work/b$c;

    invoke-interface {v1}, Landroidx/work/b$c;->getWorkManagerConfiguration()Landroidx/work/b;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/work/impl/f1;->h(Landroid/content/Context;Landroidx/work/b;)V

    invoke-static {p0}, Landroidx/work/impl/f1;->o(Landroid/content/Context;)Landroidx/work/impl/f1;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic v()Lkotlin/Unit;
    .locals 3

    invoke-virtual {p0}, Landroidx/work/impl/f1;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lh4/q;->c(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/model/k0;->n()I

    invoke-virtual {p0}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/f1;->r()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/work/impl/x;->h(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/h0;
    .locals 1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/work/impl/e0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/work/impl/e0;-><init>(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginUniqueWork needs at least one OneTimeWorkRequest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/util/List;)Landroidx/work/w;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/work/impl/e0;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/e0;-><init>(Landroidx/work/impl/f1;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/work/impl/e0;->a()Landroidx/work/w;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/b0;)Landroidx/work/w;
    .locals 1

    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, Landroidx/work/impl/m1;->e(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)Landroidx/work/w;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/f1;->k(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/b0;)Landroidx/work/impl/e0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/e0;->a()Landroidx/work/w;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/f1;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/work/impl/model/k0;->y(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Landroidx/work/impl/f1$a;

    invoke-direct {v0, p0}, Landroidx/work/impl/f1$a;-><init>(Landroidx/work/impl/f1;)V

    iget-object v1, p0, Landroidx/work/impl/f1;->e:Lj4/c;

    invoke-static {p1, v0, v1}, Landroidx/work/impl/utils/LiveDataUtils;->a(Landroidx/lifecycle/LiveData;Ll/a;Lj4/c;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/UUID;)Landroidx/work/w;
    .locals 0

    invoke-static {p1, p0}, Landroidx/work/impl/utils/e;->e(Ljava/util/UUID;Landroidx/work/impl/f1;)Landroidx/work/w;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/b0;)Landroidx/work/impl/e0;
    .locals 1

    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    if-ne p2, v0, :cond_0

    sget-object p2, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    :goto_0
    new-instance v0, Landroidx/work/impl/e0;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/work/impl/e0;-><init>(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public l()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->b:Landroid/content/Context;

    return-object v0
.end method

.method public m()Landroidx/work/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->c:Landroidx/work/b;

    return-object v0
.end method

.method public p()Landroidx/work/impl/utils/z;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->h:Landroidx/work/impl/utils/z;

    return-object v0
.end method

.method public q()Landroidx/work/impl/s;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->g:Landroidx/work/impl/s;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->f:Ljava/util/List;

    return-object v0
.end method

.method public s()Li4/n;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->k:Li4/n;

    return-object v0
.end method

.method public t()Landroidx/work/impl/WorkDatabase;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->d:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public u()Lj4/c;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/f1;->e:Lj4/c;

    return-object v0
.end method

.method public w()V
    .locals 2

    sget-object v0, Landroidx/work/impl/f1;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/f1;->i:Z

    iget-object v1, p0, Landroidx/work/impl/f1;->j:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/impl/f1;->j:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public x()V
    .locals 3

    invoke-virtual {p0}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b;->n()Landroidx/work/f0;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/e1;

    invoke-direct {v1, p0}, Landroidx/work/impl/e1;-><init>(Landroidx/work/impl/f1;)V

    const-string v2, "ReschedulingWork"

    invoke-static {v0, v2, v1}, Landroidx/work/g0;->a(Landroidx/work/f0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public y(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    sget-object v0, Landroidx/work/impl/f1;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/f1;->j:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Landroidx/work/impl/f1;->j:Landroid/content/BroadcastReceiver$PendingResult;

    iget-boolean v1, p0, Landroidx/work/impl/f1;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/f1;->j:Landroid/content/BroadcastReceiver$PendingResult;

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public z(Landroidx/work/impl/model/x;I)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/f1;->e:Lj4/c;

    new-instance v1, Landroidx/work/impl/utils/StopWorkRunnable;

    iget-object v2, p0, Landroidx/work/impl/f1;->g:Landroidx/work/impl/s;

    new-instance v3, Landroidx/work/impl/y;

    invoke-direct {v3, p1}, Landroidx/work/impl/y;-><init>(Landroidx/work/impl/model/x;)V

    const/4 p1, 0x1

    invoke-direct {v1, v2, v3, p1, p2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/s;Landroidx/work/impl/y;ZI)V

    invoke-interface {v0, v1}, Lj4/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method
