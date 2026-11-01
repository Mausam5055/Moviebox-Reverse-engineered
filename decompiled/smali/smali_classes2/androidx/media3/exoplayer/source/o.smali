.class public final Landroidx/media3/exoplayer/source/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/source/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/o$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/r$b;

.field private final b:J

.field private final c:Landroidx/media3/exoplayer/upstream/b;

.field private d:Landroidx/media3/exoplayer/source/r;

.field private e:Landroidx/media3/exoplayer/source/q;

.field private f:Landroidx/media3/exoplayer/source/q$a;

.field private g:Landroidx/media3/exoplayer/source/o$a;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/o;->c:Landroidx/media3/exoplayer/upstream/b;

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/o;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/o;->i:J

    return-void
.end method

.method private k(J)J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/q;->a(Landroidx/media3/exoplayer/v2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->b(JLandroidx/media3/exoplayer/c4;)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Landroidx/media3/exoplayer/source/q;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->c(Landroidx/media3/exoplayer/source/q;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->g:Landroidx/media3/exoplayer/source/o$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/o$a;->b(Landroidx/media3/exoplayer/source/r$b;)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    return-void
.end method

.method public e([Lj2/z;[Z[Lg2/u;[ZJ)J
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/o;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/o;->b:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iput-wide v3, v0, Landroidx/media3/exoplayer/source/o;->i:J

    iget-object v1, v0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/media3/exoplayer/source/q;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/source/q;->e([Lj2/z;[Z[Lg2/u;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/q;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/o;->l(Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/o;->b:J

    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/source/o;->k(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/q;->g(Landroidx/media3/exoplayer/source/q$a;J)V

    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lg2/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getTrackGroups()Lg2/z;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroidx/media3/exoplayer/source/r$b;)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->b:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/o;->k(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/r;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/o;->c:Landroidx/media3/exoplayer/upstream/b;

    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media3/exoplayer/source/r;->g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/q;->g(Landroidx/media3/exoplayer/source/q$a;J)V

    :cond_0
    return-void
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->i:J

    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->b:J

    return-wide v0
.end method

.method public l(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    return-void
.end method

.method public m(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/o;->i:J

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->maybeThrowPrepareError()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/r;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/o;->g:Landroidx/media3/exoplayer/source/o$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/o;->h:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/o;->h:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-interface {v1, v2, v0}, Landroidx/media3/exoplayer/source/o$a;->a(Landroidx/media3/exoplayer/source/r$b;Ljava/io/IOException;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    throw v0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/r;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r;->j(Landroidx/media3/exoplayer/source/q;)V

    :cond_0
    return-void
.end method

.method public o(Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method
