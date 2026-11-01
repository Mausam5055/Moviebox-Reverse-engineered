.class public Lz8/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lt8/d;

.field private final c:La9/d;

.field private final d:Lz8/u;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lb9/a;

.field private final g:Lc9/a;

.field private final h:Lc9/a;

.field private final i:La9/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt8/d;La9/d;Lz8/u;Ljava/util/concurrent/Executor;Lb9/a;Lc9/a;Lc9/a;La9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lz8/o;->b:Lt8/d;

    iput-object p3, p0, Lz8/o;->c:La9/d;

    iput-object p4, p0, Lz8/o;->d:Lz8/u;

    iput-object p5, p0, Lz8/o;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lz8/o;->f:Lb9/a;

    iput-object p7, p0, Lz8/o;->g:Lc9/a;

    iput-object p8, p0, Lz8/o;->h:Lc9/a;

    iput-object p9, p0, Lz8/o;->i:La9/c;

    return-void
.end method

.method public static synthetic a(Lz8/o;Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0, p1}, Lz8/o;->m(Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lz8/o;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz8/o;->n(Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lz8/o;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lz8/o;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lz8/o;Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lz8/o;->l(Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lz8/o;Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lz8/o;->o(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lz8/o;Lcom/google/android/datatransport/runtime/o;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lz8/o;->s(Lcom/google/android/datatransport/runtime/o;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lz8/o;Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz8/o;->r(Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lz8/o;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lz8/o;->q(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lz8/o;Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz8/o;->t(Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic l(Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lz8/o;->c:La9/d;

    invoke-interface {v0, p1}, La9/d;->P(Lcom/google/android/datatransport/runtime/o;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic m(Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lz8/o;->c:La9/d;

    invoke-interface {v0, p1}, La9/d;->X(Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic n(Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz8/o;->c:La9/d;

    invoke-interface {v0, p1}, La9/d;->Q(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lz8/o;->c:La9/d;

    iget-object v0, p0, Lz8/o;->g:Lc9/a;

    invoke-interface {v0}, Lc9/a;->getTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, p2, v0, v1}, La9/d;->G(Lcom/google/android/datatransport/runtime/o;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic o(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz8/o;->c:La9/d;

    invoke-interface {v0, p1}, La9/d;->C(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic p()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz8/o;->i:La9/c;

    invoke-interface {v0}, La9/c;->d()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic q(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lz8/o;->i:La9/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, La9/c;->i(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic r(Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz8/o;->c:La9/d;

    iget-object v1, p0, Lz8/o;->g:Lc9/a;

    invoke-interface {v1}, Lc9/a;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-interface {v0, p1, v1, v2}, La9/d;->G(Lcom/google/android/datatransport/runtime/o;J)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic s(Lcom/google/android/datatransport/runtime/o;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz8/o;->d:Lz8/u;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Lz8/u;->a(Lcom/google/android/datatransport/runtime/o;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic t(Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz8/o;->f:Lb9/a;

    iget-object v1, p0, Lz8/o;->c:La9/d;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz8/f;

    invoke-direct {v2, v1}, Lz8/f;-><init>(La9/d;)V

    invoke-interface {v0, v2}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    invoke-virtual {p0}, Lz8/o;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz8/o;->f:Lb9/a;

    new-instance v1, Lz8/g;

    invoke-direct {v1, p0, p1, p2}, Lz8/g;-><init>(Lz8/o;Lcom/google/android/datatransport/runtime/o;I)V

    invoke-interface {v0, v1}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lz8/o;->u(Lcom/google/android/datatransport/runtime/o;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v0, p0, Lz8/o;->d:Lz8/u;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p1, p2}, Lz8/u;->a(Lcom/google/android/datatransport/runtime/o;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    throw p1
.end method


# virtual methods
.method public j(Lt8/k;)Lcom/google/android/datatransport/runtime/i;
    .locals 4

    iget-object v0, p0, Lz8/o;->f:Lb9/a;

    iget-object v1, p0, Lz8/o;->i:La9/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz8/e;

    invoke-direct {v2, v1}, Lz8/e;-><init>(La9/c;)V

    invoke-interface {v0, v2}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv8/a;

    invoke-static {}, Lcom/google/android/datatransport/runtime/i;->a()Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v1

    iget-object v2, p0, Lz8/o;->g:Lc9/a;

    invoke-interface {v2}, Lc9/a;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/i$a;->i(J)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v1

    iget-object v2, p0, Lz8/o;->h:Lc9/a;

    invoke-interface {v2}, Lc9/a;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/i$a;->o(J)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v1

    const-string v2, "GDT_CLIENT_METRICS"

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->n(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v1

    new-instance v2, Lcom/google/android/datatransport/runtime/h;

    const-string v3, "proto"

    invoke-static {v3}, Lr8/c;->b(Ljava/lang/String;)Lr8/c;

    move-result-object v3

    invoke-virtual {v0}, Lv8/a;->f()[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/datatransport/runtime/h;-><init>(Lr8/c;[B)V

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/i$a;->d()Lcom/google/android/datatransport/runtime/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lt8/k;->a(Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/i;

    move-result-object p1

    return-object p1
.end method

.method k()Z
    .locals 2

    iget-object v0, p0, Lz8/o;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(Lcom/google/android/datatransport/runtime/o;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .locals 11

    iget-object v0, p0, Lz8/o;->b:Lt8/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lt8/d;->a(Ljava/lang/String;)Lt8/k;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->e(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v3

    :cond_0
    :goto_0
    move-wide v8, v1

    :cond_1
    :goto_1
    iget-object v1, p0, Lz8/o;->f:Lb9/a;

    new-instance v2, Lz8/h;

    invoke-direct {v2, p0, p1}, Lz8/h;-><init>(Lz8/o;Lcom/google/android/datatransport/runtime/o;)V

    invoke-interface {v1, v2}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lz8/o;->f:Lb9/a;

    new-instance v2, Lz8/i;

    invoke-direct {v2, p0, p1}, Lz8/i;-><init>(Lz8/o;Lcom/google/android/datatransport/runtime/o;)V

    invoke-interface {v1, v2}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v1, v2, p1}, Lw8/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->a()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v1

    :goto_2
    move-object v3, v1

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La9/k;

    invoke-virtual {v3}, La9/k;->b()Lcom/google/android/datatransport/runtime/i;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Lz8/o;->j(Lt8/k;)Lcom/google/android/datatransport/runtime/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lt8/e;->a()Lt8/e$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lt8/e$a;->b(Ljava/lang/Iterable;)Lt8/e$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->c()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lt8/e$a;->c([B)Lt8/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lt8/e$a;->a()Lt8/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lt8/k;->b(Lt8/e;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    move-result-object v1

    goto :goto_2

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->TRANSIENT_ERROR:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    const/4 v10, 0x1

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lz8/o;->f:Lb9/a;

    new-instance v1, Lz8/j;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lz8/j;-><init>(Lz8/o;Ljava/lang/Iterable;Lcom/google/android/datatransport/runtime/o;J)V

    invoke-interface {v0, v1}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    iget-object v0, p0, Lz8/o;->d:Lz8/u;

    add-int/2addr p2, v10

    invoke-interface {v0, p1, p2, v10}, Lz8/u;->b(Lcom/google/android/datatransport/runtime/o;IZ)V

    return-object v3

    :cond_6
    iget-object v1, p0, Lz8/o;->f:Lb9/a;

    new-instance v2, Lz8/k;

    invoke-direct {v2, p0, v6}, Lz8/k;-><init>(Lz8/o;Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->OK:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v1, v2, :cond_7

    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->b()J

    move-result-wide v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lz8/o;->f:Lb9/a;

    new-instance v5, Lz8/l;

    invoke-direct {v5, p0}, Lz8/l;-><init>(Lz8/o;)V

    invoke-interface {v4, v5}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->c()Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;->INVALID_PAYLOAD:Lcom/google/android/datatransport/runtime/backends/BackendResponse$Status;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La9/k;

    invoke-virtual {v4}, La9/k;->b()Lcom/google/android/datatransport/runtime/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/i;->n()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lz8/o;->f:Lb9/a;

    new-instance v4, Lz8/m;

    invoke-direct {v4, p0, v1}, Lz8/m;-><init>(Lz8/o;Ljava/util/Map;)V

    invoke-interface {v2, v4}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    iget-object p2, p0, Lz8/o;->f:Lb9/a;

    new-instance v0, Lz8/n;

    invoke-direct {v0, p0, p1, v8, v9}, Lz8/n;-><init>(Lz8/o;Lcom/google/android/datatransport/runtime/o;J)V

    invoke-interface {p2, v0}, Lb9/a;->b(Lb9/a$a;)Ljava/lang/Object;

    return-object v3
.end method

.method public v(Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lz8/o;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lz8/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lz8/d;-><init>(Lz8/o;Lcom/google/android/datatransport/runtime/o;ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
