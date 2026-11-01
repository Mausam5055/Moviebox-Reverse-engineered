.class public Lcom/mbridge/msdk/tracker/network/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/tracker/network/u$c;
    }
.end annotation


# instance fields
.field private volatile a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:Lcom/mbridge/msdk/tracker/network/b;

.field private final g:Lcom/mbridge/msdk/tracker/network/m;

.field private final h:Lcom/mbridge/msdk/tracker/network/w;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/network/u$c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/w;ILcom/mbridge/msdk/tracker/network/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/u;->j:Z

    iput p3, p0, Lcom/mbridge/msdk/tracker/network/u;->e:I

    iput-object p4, p0, Lcom/mbridge/msdk/tracker/network/u;->f:Lcom/mbridge/msdk/tracker/network/b;

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/u;->g:Lcom/mbridge/msdk/tracker/network/m;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/network/u;->h:Lcom/mbridge/msdk/tracker/network/w;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/network/u;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/network/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/u;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x5

    :try_start_1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/u;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/m;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/network/u;->g:Lcom/mbridge/msdk/tracker/network/m;

    return-object p0
.end method

.method private b(I)V
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/mbridge/msdk/tracker/network/u$a;

    invoke-direct {v7, p0}, Lcom/mbridge/msdk/tracker/network/u$a;-><init>(Lcom/mbridge/msdk/tracker/network/u;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const-wide/16 v3, 0x64

    move-object v0, v9

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lcom/mbridge/msdk/tracker/network/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/b;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/network/u;->f:Lcom/mbridge/msdk/tracker/network/b;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/w;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/network/u;->h:Lcom/mbridge/msdk/tracker/network/w;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/tracker/network/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "TT;>;)",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/t;

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/u;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/tracker/network/u;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/t;->b(I)Lcom/mbridge/msdk/tracker/network/t;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/network/t;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/tracker/network/u;->a(Lcom/mbridge/msdk/tracker/network/t;I)V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/network/u;->b(Lcom/mbridge/msdk/tracker/network/t;)V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mbridge/msdk/tracker/network/u;->e:I

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/tracker/network/u;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/mbridge/msdk/tracker/network/u$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/tracker/network/u$b;-><init>(Lcom/mbridge/msdk/tracker/network/u;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method a(Lcom/mbridge/msdk/tracker/network/t;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->i:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/u;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/tracker/network/u$c;

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/tracker/network/u$c;->a(Lcom/mbridge/msdk/tracker/network/t;I)V

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

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/u;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/mbridge/msdk/tracker/network/u;->e:I

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/tracker/network/u;->a(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/network/u;->j:Z

    return-void
.end method

.method b(Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/network/u;->d(Lcom/mbridge/msdk/tracker/network/t;)V

    return-void
.end method

.method c(Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/u;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/tracker/network/u;->a(Lcom/mbridge/msdk/tracker/network/t;I)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d(Lcom/mbridge/msdk/tracker/network/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mbridge/msdk/tracker/network/t<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
