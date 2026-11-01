.class public final Landroidx/media3/exoplayer/source/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/source/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/q;

.field private b:Landroidx/media3/exoplayer/source/q$a;

.field private c:[Landroidx/media3/exoplayer/source/b$a;

.field private d:J

.field e:J

.field f:J

.field private g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/q;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/media3/exoplayer/source/b$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/b;->d:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/b;->e:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/b;->f:J

    return-void
.end method

.method private h(JLandroidx/media3/exoplayer/c4;)Landroidx/media3/exoplayer/c4;
    .locals 8

    iget-wide v0, p3, Landroidx/media3/exoplayer/c4;->a:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/b;->e:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/a1;->q(JJJ)J

    move-result-wide v0

    iget-wide v2, p3, Landroidx/media3/exoplayer/c4;->b:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/b;->f:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    move-wide v6, p1

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    move-wide v6, v4

    :goto_0
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/a1;->q(JJJ)J

    move-result-wide p1

    iget-wide v2, p3, Landroidx/media3/exoplayer/c4;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-wide v2, p3, Landroidx/media3/exoplayer/c4;->b:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    return-object p3

    :cond_1
    new-instance p3, Landroidx/media3/exoplayer/c4;

    invoke-direct {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/c4;-><init>(JJ)V

    return-object p3
.end method

.method private static i(JJJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/high16 p2, -0x8000000000000000L

    cmp-long p2, p4, p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method private static m(JJ[Lj2/z;)Z
    .locals 2

    cmp-long p2, p0, p2

    const/4 p3, 0x1

    if-gez p2, :cond_0

    return p3

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    array-length p0, p4

    move p2, p1

    :goto_0
    if-ge p2, p0, :cond_2

    aget-object v0, p4, p2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lj2/z;->getSelectedFormat()Landroidx/media3/common/r;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Landroidx/media3/common/y;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/q;->a(Landroidx/media3/exoplayer/v2;)Z

    move-result p1

    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 3

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/b;->e:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/b;->h(JLandroidx/media3/exoplayer/c4;)Landroidx/media3/exoplayer/c4;

    move-result-object p3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->b(JLandroidx/media3/exoplayer/c4;)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->b:Landroidx/media3/exoplayer/source/q$a;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->c(Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    return-void
.end method

.method public e([Lj2/z;[Z[Lg2/u;[ZJ)J
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    array-length v2, v1

    new-array v2, v2, [Landroidx/media3/exoplayer/source/b$a;

    iput-object v2, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    array-length v2, v1

    new-array v2, v2, [Lg2/u;

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    aget-object v5, v1, v3

    check-cast v5, Landroidx/media3/exoplayer/source/b$a;

    aput-object v5, v4, v3

    if-eqz v5, :cond_0

    iget-object v11, v5, Landroidx/media3/exoplayer/source/b$a;->a:Lg2/u;

    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Landroidx/media3/exoplayer/source/q;->e([Lj2/z;[Z[Lg2/u;[ZJ)J

    move-result-wide v12

    iget-wide v8, v0, Landroidx/media3/exoplayer/source/b;->f:J

    move-wide v4, v12

    move-wide/from16 v6, p5

    invoke-static/range {v4 .. v9}, Landroidx/media3/exoplayer/source/b;->i(JJJ)J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/b;->j()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p1

    move-wide/from16 v6, p5

    invoke-static {v12, v13, v6, v7, p1}, Landroidx/media3/exoplayer/source/b;->m(JJ[Lj2/z;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide v5, v0, Landroidx/media3/exoplayer/source/b;->d:J

    :goto_2
    array-length v5, v1

    if-ge v10, v5, :cond_6

    aget-object v5, v2, v10

    if-nez v5, :cond_3

    iget-object v5, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    aput-object v11, v5, v10

    goto :goto_3

    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    aget-object v7, v6, v10

    if-eqz v7, :cond_4

    iget-object v7, v7, Landroidx/media3/exoplayer/source/b$a;->a:Lg2/u;

    if-eq v7, v5, :cond_5

    :cond_4
    new-instance v7, Landroidx/media3/exoplayer/source/b$a;

    invoke-direct {v7, p0, v5}, Landroidx/media3/exoplayer/source/b$a;-><init>(Landroidx/media3/exoplayer/source/b;Lg2/u;)V

    aput-object v7, v6, v10

    :cond_5
    :goto_3
    iget-object v5, v0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    aget-object v5, v5, v10

    aput-object v5, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    return-wide v3
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/q;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b;->k(Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->b:Landroidx/media3/exoplayer/source/q$a;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/q;->g(Landroidx/media3/exoplayer/source/q$a;J)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/b;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/b;->f:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getTrackGroups()Lg2/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getTrackGroups()Lg2/z;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    move-result v0

    return v0
.end method

.method j()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/b;->b:Landroidx/media3/exoplayer/source/q$a;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    return-void
.end method

.method public l(Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/b;->g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->g:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->maybeThrowPrepareError()V

    return-void

    :cond_0
    throw v0
.end method

.method public n(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/b;->e:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/b;->f:J

    return-void
.end method

.method public readDiscontinuity()J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/b;->j()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/b;->d:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/b;->d:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/b;->readDiscontinuity()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/b;->e:J

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/b;->f:J

    invoke-static/range {v3 .. v8}, Landroidx/media3/exoplayer/source/b;->i(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/b;->d:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->c:[Landroidx/media3/exoplayer/source/b$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/b$a;->a()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/b;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->seekToUs(J)J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/b;->e:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/b;->f:J

    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/source/b;->i(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
