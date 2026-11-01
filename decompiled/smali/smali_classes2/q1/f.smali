.class public final Lq1/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lq1/e;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq1/e;

    invoke-direct {v0}, Lq1/e;-><init>()V

    iput-object v0, p0, Lq1/f;->a:Lq1/e;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lq1/f;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lq1/f;->c:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Lq1/f;Ljava/lang/AutoCloseable;)V
    .locals 0

    invoke-direct {p0, p1}, Lq1/f;->g(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public static final synthetic b(Lq1/f;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lq1/f;->c:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic c(Lq1/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lq1/f;->b:Ljava/util/Map;

    return-object p0
.end method

.method private final g(Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/AutoCloseable;)V
    .locals 2

    const-string v0, "closeable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lq1/f;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lq1/f;->g(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lq1/f;->a:Lq1/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lq1/f;->b(Lq1/f;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lq1/f;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lq1/f;->g(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lq1/f;->a:Lq1/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lq1/f;->c(Lq1/f;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-direct {p0, p1}, Lq1/f;->g(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lq1/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/f;->d:Z

    iget-object v0, p0, Lq1/f;->a:Lq1/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lq1/f;->c(Lq1/f;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-static {p0, v2}, Lq1/f;->a(Lq1/f;Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lq1/f;->b(Lq1/f;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    invoke-static {p0, v2}, Lq1/f;->a(Lq1/f;Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lq1/f;->b(Lq1/f;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/AutoCloseable;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq1/f;->a:Lq1/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lq1/f;->c(Lq1/f;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
