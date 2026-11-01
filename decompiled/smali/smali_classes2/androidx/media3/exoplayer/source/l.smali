.class public final Landroidx/media3/exoplayer/source/l;
.super Landroidx/media3/exoplayer/source/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/l$b;
    }
.end annotation


# instance fields
.field private final h:J

.field private i:Landroidx/media3/common/t;


# direct methods
.method private constructor <init>(Landroidx/media3/common/t;JLandroidx/media3/exoplayer/source/j;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/l;->i:Landroidx/media3/common/t;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/l;->h:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t;JLandroidx/media3/exoplayer/source/j;Landroidx/media3/exoplayer/source/l$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/l;-><init>(Landroidx/media3/common/t;JLandroidx/media3/exoplayer/source/j;)V

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 0

    return-void
.end method

.method public declared-synchronized a()Landroidx/media3/common/t;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/l;->i:Landroidx/media3/common/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l;->a()Landroidx/media3/common/t;

    move-result-object p1

    iget-object p2, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object p2, p2, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    const-string p3, "Externally loaded mediaItems require a MIME type."

    invoke-static {p2, p3}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroidx/media3/exoplayer/source/k;

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object p3, p1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Landroidx/media3/exoplayer/source/k;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/source/j;)V

    return-object p2
.end method

.method public j(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/k;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/k;->i()V

    return-void
.end method

.method public declared-synchronized l(Landroidx/media3/common/t;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/l;->i:Landroidx/media3/common/t;
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

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 4

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l;->a()Landroidx/media3/common/t;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/t$h;

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    iget-object v2, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroidx/media3/common/t$h;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/l;->h:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected z(Lw1/n;)V
    .locals 8

    new-instance p1, Lg2/w;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/l;->h:J

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l;->a()Landroidx/media3/common/t;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lg2/w;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/t;)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    return-void
.end method
