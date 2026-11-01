.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;
    }
.end annotation


# static fields
.field private static volatile k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;


# instance fields
.field private volatile a:I

.field private final b:Landroid/util/SparseArray;

.field private final c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile e:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field private volatile f:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;

.field private final g:Ljava/util/HashSet;

.field private final h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

.field private volatile i:Ljava/lang/String;

.field private volatile j:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x28000

    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->a:I

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$a;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$a;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->d:Ljava/util/concurrent/ExecutorService;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;->Sj(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private static d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;)Ljava/util/concurrent/ExecutorService;
    .locals 11

    invoke-static {}, Lf6/a;->a()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    move v4, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    move v4, v1

    :goto_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$4;

    invoke-direct {v9}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$4;-><init>()V

    new-instance v10, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$b;

    invoke-direct {v10, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$b;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;)V

    const/4 v3, 0x0

    const-wide/16 v5, 0x3c

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public static j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;
    .locals 2

    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    if-nez v0, :cond_1

    const-class v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;-><init>()V

    sput-object v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->k:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    return-object v0
.end method

.method static synthetic k(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$sP;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$3;

    const-string v1, "cancelAll"

    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$3;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;Ljava/lang/String;)V

    invoke-static {v0}, Lf6/a;->l(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method c()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->i(ZZLjava/lang/String;)V

    return-void
.end method

.method f(ZLjava/lang/String;)V
    .locals 7

    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->i:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->j:Z

    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "setCurrentPlayKey, "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance v0, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;

    iget-boolean v1, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->a:Z

    iget-boolean v2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->b:Z

    iget v3, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->c:I

    iget-object v4, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->e:Ljava/util/Map;

    iget-object v6, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->f:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCurrentPlayKey, resume preload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    return-void

    :goto_2
    monitor-exit p1

    throw p2

    :cond_4
    sget v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->g:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    goto :goto_6

    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$f;->a(Z)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_6

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    goto :goto_5

    :goto_4
    monitor-exit v1

    throw p1

    :cond_7
    :goto_5
    return-void

    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_2
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, p2, :cond_c

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_8

    :catchall_2
    move-exception p2

    goto :goto_c

    :cond_9
    :goto_8
    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setCurrentPlayKey, cancel preload: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    if-ne v1, v2, :cond_11

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    monitor-enter p1

    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->sef:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_3
    move-exception p2

    goto :goto_b

    :cond_10
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :goto_b
    monitor-exit p1

    throw p2

    :cond_11
    return-void

    :goto_c
    monitor-exit p1

    throw p2
.end method

.method public varargs g(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "TAG_PROXY_Preloader"

    const-string p2, "cache or videoProxyDB null in Preloader!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs h(ZZILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->g(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method public i(ZZLjava/lang/String;)V
    .locals 7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;

    const-string v3, "cancel b b S"

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-static {v0}, Lf6/a;->l(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method l()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
