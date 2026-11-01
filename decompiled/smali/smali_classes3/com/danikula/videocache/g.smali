.class final Lcom/danikula/videocache/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/danikula/videocache/e;

.field private final d:Ljava/util/List;

.field private final e:Lcom/danikula/videocache/b;

.field private final f:Lcom/danikula/videocache/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/g;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/danikula/videocache/g;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/danikula/videocache/c;

    iput-object p2, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    new-instance p2, Lcom/danikula/videocache/g$a;

    invoke-direct {p2, p1, v0}, Lcom/danikula/videocache/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/danikula/videocache/g;->e:Lcom/danikula/videocache/b;

    return-void
.end method

.method private c()Lcom/danikula/videocache/e;
    .locals 2

    new-instance v0, Lcom/danikula/videocache/e;

    iget-object v1, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    iget-object v1, v1, Lcom/danikula/videocache/c;->c:Lcom/danikula/videocache/a;

    invoke-direct {v0, v1}, Lcom/danikula/videocache/e;-><init>(Lcom/danikula/videocache/a;)V

    iget-object v1, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    iget-object v1, v1, Lcom/danikula/videocache/c;->c:Lcom/danikula/videocache/a;

    invoke-interface {v1}, Lcom/danikula/videocache/a;->B()V

    iget-object v1, p0, Lcom/danikula/videocache/g;->e:Lcom/danikula/videocache/b;

    invoke-virtual {v0, v1}, Lcom/danikula/videocache/e;->l(Lcom/danikula/videocache/b;)V

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/danikula/videocache/g;->c()Lcom/danikula/videocache/e;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    :goto_0
    iput-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v0}, Lcom/danikula/videocache/m;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public d(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    .locals 2

    const-string v0, "processRequest\uff0c shutdown, threadName = "

    invoke-direct {p0}, Lcom/danikula/videocache/g;->e()V

    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v1}, Lcom/danikula/videocache/m;->f()V

    iget-object v1, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v1, p1, p2}, Lcom/danikula/videocache/e;->k(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/danikula/videocache/g;->a()V

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/danikula/videocache/g;->a()V

    throw p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v0}, Lcom/danikula/videocache/m;->g()V

    :cond_0
    return-void
.end method
