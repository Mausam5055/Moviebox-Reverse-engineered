.class public final Lcom/google/android/exoplayer2/source/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/l$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/o$b;

.field private final b:J

.field private final c:Lcom/google/android/exoplayer2/upstream/b;

.field private d:Lcom/google/android/exoplayer2/source/o;

.field private e:Lcom/google/android/exoplayer2/source/n;

.field private f:Lcom/google/android/exoplayer2/source/n$a;

.field private g:Lcom/google/android/exoplayer2/source/l$a;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/l;->c:Lcom/google/android/exoplayer2/upstream/b;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/l;->i:J

    return-void
.end method

.method private j(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->a(JLcom/google/android/exoplayer2/c3;)J

    move-result-wide p1

    return-wide p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/l;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/l;->b:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/l;->i:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/exoplayer2/source/n;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/n;->b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public c(Lcom/google/android/exoplayer2/source/o$b;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/l;->j(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/o;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/l;->c:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/o;->d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/n;->e(Lcom/google/android/exoplayer2/source/n$a;J)V

    :cond_0
    return-void
.end method

.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/l;->j(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/n;->e(Lcom/google/android/exoplayer2/source/n$a;J)V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->i:J

    return-wide v0
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/l;->k(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lt9/x;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/source/n;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->g:Lcom/google/android/exoplayer2/source/l$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/l$a;->a(Lcom/google/android/exoplayer2/source/o$b;)V

    :cond_0
    return-void
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public l(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/l;->i:J

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o;->k(Lcom/google/android/exoplayer2/source/n;)V

    :cond_0
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->maybeThrowPrepareError()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/o;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/l;->g:Lcom/google/android/exoplayer2/source/l$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/l;->h:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/l;->h:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/l$a;->b(Lcom/google/android/exoplayer2/source/o$b;Ljava/io/IOException;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    throw v0
.end method

.method public n(Lcom/google/android/exoplayer2/source/o;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method
