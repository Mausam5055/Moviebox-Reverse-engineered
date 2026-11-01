.class public abstract Lcom/danikula/videocache/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/danikula/videocache/a;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private volatile d:I

.field protected volatile e:Z

.field private volatile f:Z

.field private volatile g:J

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/m;->c:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/danikula/videocache/m;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/danikula/videocache/m;->g:J

    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danikula/videocache/a;

    iput-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {p1, p0}, Lcom/danikula/videocache/a;->F(Lcom/danikula/videocache/m;)V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/danikula/videocache/m;->f:Z

    iget-object v1, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/danikula/videocache/m;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForSourceData error\uff0c error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/danikula/videocache/q;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {v0, p1, p2}, Lcom/danikula/videocache/a;->E(J)V

    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {v0, p1, p2}, Lcom/danikula/videocache/a;->C(J)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/danikula/videocache/m;->f:Z

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "-------get new data, notify wait~"

    invoke-static {v1}, Lcom/danikula/videocache/q;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/danikula/videocache/m;->f:Z

    iget-object v1, p0, Lcom/danikula/videocache/m;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d([BJILjava/lang/String;)I
    .locals 8

    invoke-static {p1, p2, p3, p4}, Lcom/danikula/videocache/n;->a([BJI)V

    :goto_0
    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {v0}, Lcom/danikula/videocache/a;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/danikula/videocache/a;->H(JILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/danikula/videocache/m;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/danikula/videocache/m;->h:Z

    invoke-direct {p0}, Lcom/danikula/videocache/m;->h()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/danikula/videocache/m;->h:Z

    const-string v1, " ,offset = "

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWaited\uff0c isAvailable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {v2, p2, p3, p4, p5}, Lcom/danikula/videocache/a;->H(JILjava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danikula/videocache/m;->h:Z

    iget-object v2, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/danikula/videocache/a;->D([BJILjava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    sget-object p4, Lcom/transsnet/downloader/util/i;->a:Lcom/transsnet/downloader/util/i;

    const-string p5, "4"

    invoke-virtual {p4, p5}, Lcom/transsnet/downloader/util/i;->b(Ljava/lang/String;)V

    :cond_2
    iget-wide p4, p0, Lcom/danikula/videocache/m;->g:J

    const-wide/16 v2, 0x0

    cmp-long p4, p4, v2

    if-ltz p4, :cond_3

    iget-wide p4, p0, Lcom/danikula/videocache/m;->g:J

    sub-long p4, p2, p4

    const-wide/32 v2, 0x7d000

    cmp-long p4, p4, v2

    if-lez p4, :cond_4

    if-lez p1, :cond_4

    :cond_3
    iput-wide p2, p0, Lcom/danikula/videocache/m;->g:J

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ProxyCache read\uff0c isCompleted = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {p5}, Lcom/danikula/videocache/a;->isCompleted()Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/danikula/videocache/q;->f(Ljava/lang/String;)V

    :cond_4
    return p1
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/danikula/videocache/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Shutdown proxy"

    invoke-static {v1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/danikula/videocache/m;->e:Z

    iget-object v1, p0, Lcom/danikula/videocache/m;->a:Lcom/danikula/videocache/a;

    invoke-interface {v1}, Lcom/danikula/videocache/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown proxy, error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/danikula/videocache/q;->a(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public f()V
    .locals 1

    const-string v0, "----start"

    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/danikula/videocache/m;->e:Z

    return-void
.end method

.method public g()V
    .locals 1

    const-string v0, "--stop"

    invoke-static {v0}, Lcom/danikula/videocache/q;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/danikula/videocache/m;->e:Z

    invoke-virtual {p0}, Lcom/danikula/videocache/m;->c()V

    return-void
.end method
