.class final Landroidx/media3/exoplayer/source/ClippingMediaSource$c;
.super Landroidx/media3/exoplayer/source/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/e0;JJZ)V
    .locals 8

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/m;-><init>(Landroidx/media3/common/e0;)V

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    cmp-long v1, p4, p2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    const/4 v3, 0x2

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/e0;->i()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    new-instance v1, Landroidx/media3/common/e0$c;

    invoke-direct {v1}, Landroidx/media3/common/e0$c;-><init>()V

    invoke-virtual {p1, v2, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    if-nez p6, :cond_3

    iget-boolean p6, p1, Landroidx/media3/common/e0$c;->k:Z

    if-nez p6, :cond_3

    cmp-long p6, p2, v4

    if-eqz p6, :cond_3

    iget-boolean p6, p1, Landroidx/media3/common/e0$c;->h:Z

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v3}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    iget-wide p4, p1, Landroidx/media3/common/e0$c;->m:J

    goto :goto_2

    :cond_4
    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    :goto_2
    iget-wide v0, p1, Landroidx/media3/common/e0$c;->m:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p6, v0, v4

    if-eqz p6, :cond_6

    cmp-long p6, p4, v0

    if-lez p6, :cond_5

    move-wide p4, v0

    :cond_5
    cmp-long p6, p2, p4

    if-lez p6, :cond_6

    move-wide p2, p4

    :cond_6
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->g:J

    cmp-long p6, p4, v4

    if-nez p6, :cond_7

    move-wide p2, v4

    goto :goto_3

    :cond_7
    sub-long p2, p4, p2

    :goto_3
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->h:J

    iget-boolean p1, p1, Landroidx/media3/common/e0$c;->i:Z

    if-eqz p1, :cond_9

    if-eqz p6, :cond_8

    cmp-long p1, v0, v4

    if-eqz p1, :cond_9

    cmp-long p1, p4, v0

    if-nez p1, :cond_9

    :cond_8
    move v2, v3

    :cond_9
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->i:Z

    return-void

    :cond_a
    new-instance p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;
    .locals 12

    iget-object p1, p0, Landroidx/media3/exoplayer/source/m;->e:Landroidx/media3/common/e0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    invoke-virtual {p2}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    sub-long v10, v0, v2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v10

    move-wide v8, v0

    :goto_0
    iget-object v5, p2, Landroidx/media3/common/e0$b;->a:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Landroidx/media3/common/e0$b;->t(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/e0$b;

    move-result-object p1

    return-object p1
.end method

.method public o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;
    .locals 4

    iget-object p1, p0, Landroidx/media3/exoplayer/source/m;->e:Landroidx/media3/common/e0;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Landroidx/media3/common/e0;->o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;

    iget-wide p3, p2, Landroidx/media3/common/e0$c;->p:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Landroidx/media3/common/e0$c;->p:J

    iget-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->h:J

    iput-wide p3, p2, Landroidx/media3/common/e0$c;->m:J

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->i:Z

    iput-boolean p1, p2, Landroidx/media3/common/e0$c;->i:Z

    iget-wide p3, p2, Landroidx/media3/common/e0$c;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Landroidx/media3/common/e0$c;->l:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->g:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Landroidx/media3/common/e0$c;->l:J

    :cond_1
    iget-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$c;->f:J

    invoke-static {p3, p4}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide p3

    iget-wide v0, p2, Landroidx/media3/common/e0$c;->e:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    iput-wide v0, p2, Landroidx/media3/common/e0$c;->e:J

    :cond_2
    iget-wide v0, p2, Landroidx/media3/common/e0$c;->f:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    iput-wide v0, p2, Landroidx/media3/common/e0$c;->f:J

    :cond_3
    return-object p2
.end method
