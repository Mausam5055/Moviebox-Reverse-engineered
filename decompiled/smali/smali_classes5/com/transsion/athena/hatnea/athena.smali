.class public Lcom/transsion/athena/hatnea/athena;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/hatnea/athena$aethna;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/transsion/athena/hatnea/athena;


# instance fields
.field private final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/transsion/athena/hatnea/anateh;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/hatnea/athena;->b:Ljava/util/Deque;

    return-void
.end method

.method public static a()Lcom/transsion/athena/hatnea/athena;
    .locals 2

    sget-object v0, Lcom/transsion/athena/hatnea/athena;->a:Lcom/transsion/athena/hatnea/athena;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/athena/hatnea/athena;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/hatnea/athena;->a:Lcom/transsion/athena/hatnea/athena;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/athena/hatnea/athena;

    invoke-direct {v1}, Lcom/transsion/athena/hatnea/athena;-><init>()V

    sput-object v1, Lcom/transsion/athena/hatnea/athena;->a:Lcom/transsion/athena/hatnea/athena;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/athena/hatnea/athena;->a:Lcom/transsion/athena/hatnea/athena;

    return-object v0
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/athena/hatnea/anateh;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athena;->b:Ljava/util/Deque;

    new-instance v1, Lcom/transsion/athena/hatnea/c;

    invoke-direct {v1}, Lcom/transsion/athena/hatnea/c;-><init>()V

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Landroidx/core/util/j;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static synthetic c(Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    instance-of p0, p0, Lcom/transsion/athena/hatnea/atenha;

    return p0
.end method

.method public static synthetic d(Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/hatnea/athena;->c(Lcom/transsion/athena/hatnea/anateh;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/transsion/athena/hatnea/anateh;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/athena/hatnea/athena;->a(Ljava/lang/String;Lcom/transsion/athena/hatnea/anateh;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athena;->b:Ljava/util/Deque;

    new-instance v1, Lcom/transsion/athena/hatnea/b;

    invoke-direct {v1, p1}, Lcom/transsion/athena/hatnea/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;Landroidx/core/util/j;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/athena/hatnea/anateh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/athena/hatnea/athena;->a(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/athena/hatnea/athena;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athena;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athena;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/transsion/athena/hatnea/athena$aethna;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/transsion/athena/hatnea/athena$aethna;-><init>(Lcom/transsion/athena/hatnea/athena$athena;)V

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/transsion/athena/hatnea/athena;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athena;->c:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athena;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/hatnea/anateh;

    instance-of v2, v1, Lcom/transsion/athena/hatnea/enatha;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsion/athena/hatnea/enatha;

    iget-object v2, v1, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized b(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athena;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
