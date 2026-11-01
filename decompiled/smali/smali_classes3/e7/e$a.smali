.class Le7/e$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le7/e;


# direct methods
.method constructor <init>(Le7/e;)V
    .locals 0

    iput-object p1, p0, Le7/e$a;->a:Le7/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object p1, p0, Le7/e$a;->a:Le7/e;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Le7/e$a;->a:Le7/e;

    invoke-static {v0}, Le7/e;->a(Le7/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Le7/e$a;->a:Le7/e;

    invoke-static {v0}, Le7/e;->b(Le7/e;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Le7/e$a;->a:Le7/e;

    invoke-virtual {v0}, Le7/e;->e()V

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Le7/e$a;->a:Le7/e;

    invoke-virtual {v6, v0, v1}, Le7/e;->f(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-object v4, p0, Le7/e$a;->a:Le7/e;

    invoke-static {v4}, Le7/e;->c(Le7/e;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    sub-long/2addr v0, v6

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Le7/e$a;->a:Le7/e;

    invoke-static {v0}, Le7/e;->c(Le7/e;)J

    move-result-wide v0

    sub-long/2addr v0, v6

    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget-object v4, p0, Le7/e$a;->a:Le7/e;

    invoke-static {v4}, Le7/e;->c(Le7/e;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
