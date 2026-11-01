.class final Landroidx/media3/exoplayer/y2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/y2$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/q;

.field public final b:Ljava/lang/Object;

.field public final c:[Lg2/u;

.field public final d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Landroidx/media3/exoplayer/z2;

.field public i:Z

.field private final j:[Z

.field private final k:[Landroidx/media3/exoplayer/y3;

.field private final l:Lj2/e0;

.field private final m:Landroidx/media3/exoplayer/q3;

.field private n:Landroidx/media3/exoplayer/y2;

.field private o:Lg2/z;

.field private p:Lj2/f0;

.field private q:J


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/y3;JLj2/e0;Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/z2;Lj2/f0;J)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/y2;->k:[Landroidx/media3/exoplayer/y3;

    move-wide v3, p2

    iput-wide v3, v0, Landroidx/media3/exoplayer/y2;->q:J

    move-object v3, p4

    iput-object v3, v0, Landroidx/media3/exoplayer/y2;->l:Lj2/e0;

    move-object/from16 v3, p6

    iput-object v3, v0, Landroidx/media3/exoplayer/y2;->m:Landroidx/media3/exoplayer/q3;

    iget-object v4, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v5, v4, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    move-wide/from16 v5, p9

    iput-wide v5, v0, Landroidx/media3/exoplayer/y2;->d:J

    sget-object v5, Lg2/z;->d:Lg2/z;

    iput-object v5, v0, Landroidx/media3/exoplayer/y2;->o:Lg2/z;

    move-object/from16 v5, p8

    iput-object v5, v0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    array-length v5, v1

    new-array v5, v5, [Lg2/u;

    iput-object v5, v0, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, v0, Landroidx/media3/exoplayer/y2;->j:[Z

    iget-wide v5, v2, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v7, v2, Landroidx/media3/exoplayer/z2;->d:J

    iget-boolean v9, v2, Landroidx/media3/exoplayer/z2;->f:Z

    move-object v1, v4

    move-object/from16 v2, p6

    move-object v3, p5

    move-wide v4, v5

    move-wide v6, v7

    move v8, v9

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/y2;->f(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/upstream/b;JJZ)Landroidx/media3/exoplayer/source/q;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    return-void
.end method

.method private c([Lg2/u;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->k:[Landroidx/media3/exoplayer/y3;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/y3;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    invoke-virtual {v1, v0}, Lj2/f0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lg2/h;

    invoke-direct {v1}, Lg2/h;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static f(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/upstream/b;JJZ)Landroidx/media3/exoplayer/source/q;
    .locals 7

    invoke-virtual {p1, p0, p2, p3, p4}, Landroidx/media3/exoplayer/q3;->h(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p5, p0

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/media3/exoplayer/source/b;

    xor-int/lit8 v2, p7, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/q;ZJJ)V

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method private g()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    iget v2, v1, Lj2/f0;->a:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lj2/f0;->c(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    iget-object v2, v2, Lj2/f0;->c:[Lj2/z;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lj2/z;->disable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private h([Lg2/u;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->k:[Landroidx/media3/exoplayer/y3;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/y3;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    iget v2, v1, Lj2/f0;->a:I

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lj2/f0;->c(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    iget-object v2, v2, Lj2/f0;->c:[Lj2/z;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lj2/z;->enable()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private u()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->n:Landroidx/media3/exoplayer/y2;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static y(Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/source/q;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Landroidx/media3/exoplayer/source/b;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/media3/exoplayer/source/b;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/q3;->z(Landroidx/media3/exoplayer/source/q;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/q3;->z(Landroidx/media3/exoplayer/source/q;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    invoke-static {p1, v0, p0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/y2;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->n:Landroidx/media3/exoplayer/y2;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->g()V

    iput-object p1, p0, Landroidx/media3/exoplayer/y2;->n:Landroidx/media3/exoplayer/y2;

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->i()V

    return-void
.end method

.method public B(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/y2;->q:J

    return-void
.end method

.method public C(J)J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public D(J)J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public E()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    instance-of v1, v0, Landroidx/media3/exoplayer/source/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v1, v1, Landroidx/media3/exoplayer/z2;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/source/b;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/media3/exoplayer/source/b;->n(JJ)V

    :cond_1
    return-void
.end method

.method public a(Lj2/f0;JZ)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->k:[Landroidx/media3/exoplayer/y3;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/y2;->b(Lj2/f0;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Lj2/f0;JZ[Z)J
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Lj2/f0;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Landroidx/media3/exoplayer/y2;->j:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    invoke-virtual {p1, v6, v3}, Lj2/f0;->b(Lj2/f0;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/y2;->h([Lg2/u;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->g()V

    iput-object v1, v0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->i()V

    iget-object v6, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    iget-object v7, v1, Lj2/f0;->c:[Lj2/z;

    iget-object v8, v0, Landroidx/media3/exoplayer/y2;->j:[Z

    iget-object v9, v0, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/source/q;->e([Lj2/z;[Z[Lg2/u;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/y2;->c([Lg2/u;)V

    iput-boolean v2, v0, Landroidx/media3/exoplayer/y2;->g:Z

    move v6, v2

    :goto_2
    iget-object v7, v0, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Lj2/f0;->c(I)Z

    move-result v7

    invoke-static {v7}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v7, v0, Landroidx/media3/exoplayer/y2;->k:[Landroidx/media3/exoplayer/y3;

    aget-object v7, v7, v6

    invoke-interface {v7}, Landroidx/media3/exoplayer/y3;->getTrackType()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    iput-boolean v5, v0, Landroidx/media3/exoplayer/y2;->g:Z

    goto :goto_4

    :cond_2
    iget-object v7, v1, Lj2/f0;->c:[Lj2/z;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-static {v7}, Landroidx/media3/common/util/a;->g(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public d(Landroidx/media3/exoplayer/z2;)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->e:J

    iget-wide v2, p1, Landroidx/media3/exoplayer/z2;->e:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/b3;->e(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v1, v0, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v3, p1, Landroidx/media3/exoplayer/z2;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Landroidx/media3/exoplayer/v2;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->u()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/q;->a(Landroidx/media3/exoplayer/v2;)Z

    return-void
.end method

.method public j()J
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->g:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v3, v0, Landroidx/media3/exoplayer/z2;->e:J

    :cond_2
    return-wide v3
.end method

.method public k()Landroidx/media3/exoplayer/y2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->n:Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/y2;->q:J

    return-wide v0
.end method

.method public n()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/y2;->q:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public o()Lg2/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->o:Lg2/z;

    return-object v0
.end method

.method public p()Lj2/f0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->p:Lj2/f0;

    return-object v0
.end method

.method public q(FLandroidx/media3/common/e0;Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/y2;->f:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getTrackGroups()Lg2/z;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/y2;->o:Lg2/z;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/y2;->z(FLandroidx/media3/common/e0;Z)Lj2/f0;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v0, p2, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide p2, p2, Landroidx/media3/exoplayer/z2;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x1

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroidx/media3/exoplayer/y2;->a(Lj2/f0;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/y2;->q:J

    iget-object p3, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v2, p3, Landroidx/media3/exoplayer/z2;->b:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/y2;->q:J

    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/z2;->b(J)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    return-void
.end method

.method public r()Z
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->maybeThrowPrepareError()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lg2/u;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/y2;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/y2;->j()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v2, v2, Landroidx/media3/exoplayer/z2;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/y2;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/y2;->e:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->g(Landroidx/media3/exoplayer/source/q$a;J)V

    return-void
.end method

.method public w(J)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->u()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->reevaluateBuffer(J)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/y2;->g()V

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->m:Landroidx/media3/exoplayer/q3;

    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/y2;->y(Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method public z(FLandroidx/media3/common/e0;Z)Lj2/f0;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/y2;->l:Lj2/e0;

    iget-object v1, p0, Landroidx/media3/exoplayer/y2;->k:[Landroidx/media3/exoplayer/y3;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/y2;->o()Lg2/z;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v3, v3, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0, v1, v2, v3, p2}, Lj2/e0;->k([Landroidx/media3/exoplayer/y3;Lg2/z;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;)Lj2/f0;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p2, Lj2/f0;->a:I

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Lj2/f0;->c(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p2, Lj2/f0;->c:[Lj2/z;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/y2;->k:[Landroidx/media3/exoplayer/y3;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroidx/media3/exoplayer/y3;->getTrackType()I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :cond_1
    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    goto :goto_3

    :cond_2
    iget-object v2, p2, Lj2/f0;->c:[Lj2/z;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p2, Lj2/f0;->c:[Lj2/z;

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_6

    aget-object v3, v1, v0

    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Lj2/z;->onPlaybackSpeed(F)V

    invoke-interface {v3, p3}, Lj2/z;->b(Z)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-object p2
.end method
