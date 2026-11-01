.class public final Landroidx/media3/exoplayer/dash/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field final a:Lh2/f;

.field public final b:La2/j;

.field public final c:La2/b;

.field public final d:Lz1/e;

.field private final e:J

.field private final f:J


# direct methods
.method constructor <init>(JLa2/j;La2/b;Lh2/f;JLz1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    iput-object p3, p0, Landroidx/media3/exoplayer/dash/d$b;->b:La2/j;

    iput-object p4, p0, Landroidx/media3/exoplayer/dash/d$b;->c:La2/b;

    iput-wide p6, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    iput-object p5, p0, Landroidx/media3/exoplayer/dash/d$b;->a:Lh2/f;

    iput-object p8, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/dash/d$b;)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    return-wide v0
.end method


# virtual methods
.method b(JLa2/j;)Landroidx/media3/exoplayer/dash/d$b;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Landroidx/media3/exoplayer/dash/d$b;->b:La2/j;

    invoke-virtual {v1}, La2/j;->k()Lz1/e;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, La2/j;->k()Lz1/e;

    move-result-object v10

    if-nez v9, :cond_0

    new-instance v10, Landroidx/media3/exoplayer/dash/d$b;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/d$b;->c:La2/b;

    iget-object v6, v0, Landroidx/media3/exoplayer/dash/d$b;->a:Lh2/f;

    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    move-object v1, v10

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/d$b;-><init>(JLa2/j;La2/b;Lh2/f;JLz1/e;)V

    return-object v10

    :cond_0
    invoke-interface {v9}, Lz1/e;->g()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v11, Landroidx/media3/exoplayer/dash/d$b;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/d$b;->c:La2/b;

    iget-object v6, v0, Landroidx/media3/exoplayer/dash/d$b;->a:Lh2/f;

    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/d$b;-><init>(JLa2/j;La2/b;Lh2/f;JLz1/e;)V

    return-object v11

    :cond_1
    invoke-interface {v9, v2, v3}, Lz1/e;->f(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    new-instance v11, Landroidx/media3/exoplayer/dash/d$b;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/d$b;->c:La2/b;

    iget-object v6, v0, Landroidx/media3/exoplayer/dash/d$b;->a:Lh2/f;

    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/d$b;-><init>(JLa2/j;La2/b;Lh2/f;JLz1/e;)V

    return-object v11

    :cond_2
    invoke-static {v10}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9}, Lz1/e;->h()J

    move-result-wide v6

    invoke-interface {v9, v6, v7}, Lz1/e;->getTimeUs(J)J

    move-result-wide v11

    add-long/2addr v4, v6

    const-wide/16 v13, 0x1

    sub-long v13, v4, v13

    invoke-interface {v9, v13, v14}, Lz1/e;->getTimeUs(J)J

    move-result-wide v15

    invoke-interface {v9, v13, v14, v2, v3}, Lz1/e;->a(JJ)J

    move-result-wide v13

    add-long/2addr v15, v13

    invoke-interface {v10}, Lz1/e;->h()J

    move-result-wide v13

    move-object v1, v9

    invoke-interface {v10, v13, v14}, Lz1/e;->getTimeUs(J)J

    move-result-wide v8

    move-wide/from16 v17, v6

    iget-wide v6, v0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    cmp-long v15, v15, v8

    if-nez v15, :cond_3

    :goto_0
    sub-long/2addr v4, v13

    add-long/2addr v6, v4

    :goto_1
    move-wide v7, v6

    goto :goto_2

    :cond_3
    if-ltz v15, :cond_5

    cmp-long v4, v8, v11

    if-gez v4, :cond_4

    invoke-interface {v10, v11, v12, v2, v3}, Lz1/e;->e(JJ)J

    move-result-wide v4

    sub-long v4, v4, v17

    sub-long/2addr v6, v4

    goto :goto_1

    :cond_4
    invoke-interface {v1, v8, v9, v2, v3}, Lz1/e;->e(JJ)J

    move-result-wide v4

    goto :goto_0

    :goto_2
    new-instance v11, Landroidx/media3/exoplayer/dash/d$b;

    iget-object v5, v0, Landroidx/media3/exoplayer/dash/d$b;->c:La2/b;

    iget-object v6, v0, Landroidx/media3/exoplayer/dash/d$b;->a:Lh2/f;

    move-object v1, v11

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/d$b;-><init>(JLa2/j;La2/b;Lh2/f;JLz1/e;)V

    return-object v11

    :cond_5
    new-instance v1, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v1}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    throw v1
.end method

.method c(Lz1/e;)Landroidx/media3/exoplayer/dash/d$b;
    .locals 10

    new-instance v9, Landroidx/media3/exoplayer/dash/d$b;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    iget-object v3, p0, Landroidx/media3/exoplayer/dash/d$b;->b:La2/j;

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/d$b;->c:La2/b;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/d$b;->a:Lh2/f;

    iget-wide v6, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    move-object v0, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/d$b;-><init>(JLa2/j;La2/b;Lh2/f;JLz1/e;)V

    return-object v9
.end method

.method d(La2/b;)Landroidx/media3/exoplayer/dash/d$b;
    .locals 10

    new-instance v9, Landroidx/media3/exoplayer/dash/d$b;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    iget-object v3, p0, Landroidx/media3/exoplayer/dash/d$b;->b:La2/j;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/d$b;->a:Lh2/f;

    iget-wide v6, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    iget-object v8, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    move-object v0, v9

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/d$b;-><init>(JLa2/j;La2/b;Lh2/f;JLz1/e;)V

    return-object v9
.end method

.method public e(J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/e;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    invoke-interface {v0, v1, v2, p1, p2}, Lz1/e;->b(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public f()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/e;

    invoke-interface {v0}, Lz1/e;->h()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public g(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/d$b;->e(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/e;

    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    invoke-interface {v2, v3, v4, p1, p2}, Lz1/e;->i(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public h()J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/e;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    invoke-interface {v0, v1, v2}, Lz1/e;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/e;

    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    invoke-interface {v2, p1, p2, v3, v4}, Lz1/e;->a(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public j(J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/e;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/d$b;->e:J

    invoke-interface {v0, p1, p2, v1, v2}, Lz1/e;->e(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public k(J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/e;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lz1/e;->getTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public l(J)La2/i;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/e;

    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/d$b;->f:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lz1/e;->d(J)La2/i;

    move-result-object p1

    return-object p1
.end method

.method public m(JJ)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$b;->d:Lz1/e;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/e;

    invoke-interface {v0}, Lz1/e;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/d$b;->i(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
