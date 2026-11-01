.class public final Lwu/f;
.super Ljava/lang/Object;

# interfaces
.implements Lou/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwu/f$b;,
        Lwu/f$a;
    }
.end annotation


# instance fields
.field private volatile a:Lou/c;

.field private volatile b:Lwu/f$b;

.field private volatile c:Lwu/f$a;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwu/f;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic m(Lwu/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lwu/f;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lwu/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lwu/f;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lwu/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lwu/f;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    invoke-interface {v0, p1, p2}, Lou/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    invoke-interface {v0, p1, p2}, Lou/c;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    invoke-interface {v0, p1, p2}, Lou/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;I)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->a(Ljava/lang/Throwable;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lwu/f$a;

    invoke-direct {v0, p1, p2}, Lwu/f$a;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lwu/f;->c:Lwu/f$a;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwu/f;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwu/f;->d:Ljava/util/List;

    new-instance v2, Lwu/d;

    invoke-direct {v2, p0, p1, p2}, Lwu/d;-><init>(Lwu/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/io/File;I)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->e(Ljava/io/File;I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lou/c;->f()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwu/f;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwu/f;->d:Ljava/util/List;

    new-instance v2, Lwu/c;

    invoke-direct {v2, p0, p1, p2}, Lwu/c;-><init>(Lwu/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Ljava/lang/String;ZJ)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lou/c;->i(Ljava/lang/String;ZJ)V

    :cond_0
    return-void
.end method

.method public j(Lcom/tencent/tinker/lib/service/PatchResult;)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lou/c;->j(Lcom/tencent/tinker/lib/service/PatchResult;)V

    :cond_0
    return-void
.end method

.method public k(IJ)V
    .locals 1

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lou/c;->k(IJ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lwu/f$b;

    invoke-direct {v0, p1, p2, p3}, Lwu/f$b;-><init>(IJ)V

    iput-object v0, p0, Lwu/f;->b:Lwu/f$b;

    :goto_0
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lwu/f;->a:Lou/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lou/c;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwu/f;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lwu/f;->d:Ljava/util/List;

    new-instance v2, Lwu/e;

    invoke-direct {v2, p0, p1, p2}, Lwu/e;-><init>(Lwu/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p(Lou/c;)V
    .locals 5

    iput-object p1, p0, Lwu/f;->a:Lou/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwu/f;->b:Lwu/f$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lwu/f;->b:Lwu/f$b;

    iget v2, v0, Lwu/f$b;->a:I

    iget-wide v3, v0, Lwu/f$b;->b:J

    invoke-interface {p1, v2, v3, v4}, Lou/c;->k(IJ)V

    :cond_1
    iget-object v0, p0, Lwu/f;->c:Lwu/f$a;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lwu/f;->c:Lwu/f$a;

    iget-object v1, v0, Lwu/f$a;->a:Ljava/lang/Throwable;

    iget v0, v0, Lwu/f$a;->b:I

    invoke-interface {p1, v1, v0}, Lou/c;->a(Ljava/lang/Throwable;I)V

    :cond_2
    iget-object p1, p0, Lwu/f;->d:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lwu/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lwu/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
