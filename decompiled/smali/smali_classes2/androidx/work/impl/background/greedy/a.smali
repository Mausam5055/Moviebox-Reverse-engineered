.class public Landroidx/work/impl/background/greedy/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/u;
.implements Landroidx/work/impl/constraints/h;
.implements Landroidx/work/impl/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/greedy/a$b;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;

.field private c:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private final f:Landroidx/work/impl/a0;

.field private final g:Landroidx/work/impl/s;

.field private final h:Landroidx/work/impl/b1;

.field private final i:Landroidx/work/b;

.field private final j:Ljava/util/Map;

.field k:Ljava/lang/Boolean;

.field private final l:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field private final m:Lj4/c;

.field private final n:Landroidx/work/impl/background/greedy/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Li4/n;Landroidx/work/impl/s;Landroidx/work/impl/b1;Lj4/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->e:Ljava/lang/Object;

    invoke-static {}, Landroidx/work/impl/z;->b()Landroidx/work/impl/a0;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->j:Ljava/util/Map;

    iput-object p1, p0, Landroidx/work/impl/background/greedy/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroidx/work/b;->k()Landroidx/work/d0;

    move-result-object p1

    new-instance v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    invoke-virtual {p2}, Landroidx/work/b;->a()Landroidx/work/a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;-><init>(Landroidx/work/impl/u;Landroidx/work/d0;Landroidx/work/a;)V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->c:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    new-instance v0, Landroidx/work/impl/background/greedy/c;

    invoke-direct {v0, p1, p5}, Landroidx/work/impl/background/greedy/c;-><init>(Landroidx/work/d0;Landroidx/work/impl/b1;)V

    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->n:Landroidx/work/impl/background/greedy/c;

    iput-object p6, p0, Landroidx/work/impl/background/greedy/a;->m:Lj4/c;

    new-instance p1, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-direct {p1, p3}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Li4/n;)V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/a;->l:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/a;->i:Landroidx/work/b;

    iput-object p4, p0, Landroidx/work/impl/background/greedy/a;->g:Landroidx/work/impl/s;

    iput-object p5, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/b1;

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->i:Landroidx/work/b;

    invoke-static {v0, v1}, Landroidx/work/impl/utils/a0;->b(Landroid/content/Context;Landroidx/work/b;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->k:Ljava/lang/Boolean;

    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Landroidx/work/impl/background/greedy/a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->g:Landroidx/work/impl/s;

    invoke-virtual {v0, p0}, Landroidx/work/impl/s;->e(Landroidx/work/impl/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/greedy/a;->d:Z

    :cond_0
    return-void
.end method

.method private h(Landroidx/work/impl/model/x;)V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/t1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping tracking for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private i(Landroidx/work/impl/model/j0;)J
    .locals 7

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/greedy/a;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/background/greedy/a$b;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/work/impl/background/greedy/a$b;

    iget v3, p1, Landroidx/work/impl/model/j0;->k:I

    iget-object v4, p0, Landroidx/work/impl/background/greedy/a;->i:Landroidx/work/b;

    invoke-virtual {v4}, Landroidx/work/b;->a()Landroidx/work/a;

    move-result-object v4

    invoke-interface {v4}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/work/impl/background/greedy/a$b;-><init>(IJLandroidx/work/impl/background/greedy/a$a;)V

    iget-object v3, p0, Landroidx/work/impl/background/greedy/a;->j:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v3, v2, Landroidx/work/impl/background/greedy/a$b;->b:J

    iget p1, p1, Landroidx/work/impl/model/j0;->k:I

    iget v1, v2, Landroidx/work/impl/background/greedy/a$b;->a:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x5

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v5, 0x7530

    mul-long/2addr v1, v5

    add-long/2addr v3, v1

    monitor-exit v0

    return-wide v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->f()V

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    const-string v1, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->g()V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling work ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->c:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-interface {v0, p1}, Landroidx/work/impl/a0;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/y;

    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->n:Landroidx/work/impl/background/greedy/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/background/greedy/c;->b(Landroidx/work/impl/y;)V

    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/b1;

    invoke-interface {v1, v0}, Landroidx/work/impl/b1;->e(Landroidx/work/impl/y;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public varargs b([Landroidx/work/impl/model/j0;)V
    .locals 11

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->f()V

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    const-string v1, "Ignoring schedule request in a secondary process"

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->g()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, p1, v3

    invoke-static {v4}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v5

    iget-object v6, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-interface {v6, v5}, Landroidx/work/impl/a0;->a(Landroidx/work/impl/model/x;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0, v4}, Landroidx/work/impl/background/greedy/a;->i(Landroidx/work/impl/model/j0;)J

    move-result-wide v5

    invoke-virtual {v4}, Landroidx/work/impl/model/j0;->c()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, p0, Landroidx/work/impl/background/greedy/a;->i:Landroidx/work/b;

    invoke-virtual {v7}, Landroidx/work/b;->a()Landroidx/work/a;

    move-result-object v7

    invoke-interface {v7}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v4, Landroidx/work/impl/model/j0;->b:Landroidx/work/WorkInfo$State;

    sget-object v10, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v9, v10, :cond_7

    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    iget-object v7, p0, Landroidx/work/impl/background/greedy/a;->c:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    if-eqz v7, :cond_7

    invoke-virtual {v7, v4, v5, v6}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->a(Landroidx/work/impl/model/j0;J)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v4}, Landroidx/work/impl/model/j0;->m()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v4, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {v5}, Landroidx/work/d;->j()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires device idle."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_5

    invoke-virtual {v5}, Landroidx/work/d;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires ContentUri triggers."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v5, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-static {v4}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/work/impl/a0;->a(Landroidx/work/impl/model/x;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting work for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-interface {v5, v4}, Landroidx/work/impl/a0;->c(Landroidx/work/impl/model/j0;)Landroidx/work/impl/y;

    move-result-object v4

    iget-object v5, p0, Landroidx/work/impl/background/greedy/a;->n:Landroidx/work/impl/background/greedy/c;

    invoke-virtual {v5, v4}, Landroidx/work/impl/background/greedy/c;->c(Landroidx/work/impl/y;)V

    iget-object v5, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/b1;

    invoke-interface {v5, v4}, Landroidx/work/impl/b1;->c(Landroidx/work/impl/y;)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Landroidx/work/impl/background/greedy/a;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/model/j0;

    invoke-static {v1}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v2

    iget-object v3, p0, Landroidx/work/impl/background/greedy/a;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroidx/work/impl/background/greedy/a;->l:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v4, p0, Landroidx/work/impl/background/greedy/a;->m:Lj4/c;

    invoke-interface {v4}, Lj4/c;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    invoke-static {v3, v1, v4, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->e(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlinx/coroutines/i0;Landroidx/work/impl/constraints/h;)Lkotlinx/coroutines/t1;

    move-result-object v1

    iget-object v3, p0, Landroidx/work/impl/background/greedy/a;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_a
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroidx/work/impl/model/x;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-interface {v0, p1}, Landroidx/work/impl/a0;->b(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->n:Landroidx/work/impl/background/greedy/c;

    invoke-virtual {v1, v0}, Landroidx/work/impl/background/greedy/c;->b(Landroidx/work/impl/y;)V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/work/impl/background/greedy/a;->h(Landroidx/work/impl/model/x;)V

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/work/impl/background/greedy/a;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroidx/work/impl/model/j0;Landroidx/work/impl/constraints/b;)V
    .locals 4

    invoke-static {p1}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object p1

    instance-of v0, p2, Landroidx/work/impl/constraints/b$a;

    if-eqz v0, :cond_0

    iget-object p2, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-interface {p2, p1}, Landroidx/work/impl/a0;->a(Landroidx/work/impl/model/x;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints met: Scheduling work ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-interface {p2, p1}, Landroidx/work/impl/a0;->d(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;

    move-result-object p1

    iget-object p2, p0, Landroidx/work/impl/background/greedy/a;->n:Landroidx/work/impl/background/greedy/c;

    invoke-virtual {p2, p1}, Landroidx/work/impl/background/greedy/c;->c(Landroidx/work/impl/y;)V

    iget-object p2, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/b1;

    invoke-interface {p2, p1}, Landroidx/work/impl/b1;->c(Landroidx/work/impl/y;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/greedy/a;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constraints not met: Cancelling work ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->f:Landroidx/work/impl/a0;

    invoke-interface {v0, p1}, Landroidx/work/impl/a0;->b(Landroidx/work/impl/model/x;)Landroidx/work/impl/y;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->n:Landroidx/work/impl/background/greedy/c;

    invoke-virtual {v0, p1}, Landroidx/work/impl/background/greedy/c;->b(Landroidx/work/impl/y;)V

    check-cast p2, Landroidx/work/impl/constraints/b$b;

    invoke-virtual {p2}, Landroidx/work/impl/constraints/b$b;->a()I

    move-result p2

    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/b1;

    invoke-interface {v0, p1, p2}, Landroidx/work/impl/b1;->b(Landroidx/work/impl/y;I)V

    :cond_1
    :goto_0
    return-void
.end method
