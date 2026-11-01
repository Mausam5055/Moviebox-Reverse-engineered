.class public abstract Le7/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:Z

.field private final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le7/e;->d:Z

    new-instance v0, Le7/e$a;

    invoke-direct {v0, p0}, Le7/e$a;-><init>(Le7/e;)V

    iput-object v0, p0, Le7/e;->e:Landroid/os/Handler;

    iput-wide p1, p0, Le7/e;->a:J

    iput-wide p3, p0, Le7/e;->b:J

    return-void
.end method

.method static synthetic a(Le7/e;)Z
    .locals 0

    iget-boolean p0, p0, Le7/e;->d:Z

    return p0
.end method

.method static synthetic b(Le7/e;)J
    .locals 2

    iget-wide v0, p0, Le7/e;->c:J

    return-wide v0
.end method

.method static synthetic c(Le7/e;)J
    .locals 2

    iget-wide v0, p0, Le7/e;->b:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Le7/e;->d:Z

    iget-object v1, p0, Le7/e;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract e()V
.end method

.method public abstract f(J)V
.end method

.method public final declared-synchronized g()Le7/e;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Le7/e;->d:Z

    iget-wide v0, p0, Le7/e;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Le7/e;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Le7/e;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Le7/e;->c:J

    iget-object v0, p0, Le7/e;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
