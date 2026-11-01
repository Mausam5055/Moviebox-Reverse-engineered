.class public final Landroidx/media3/exoplayer/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/t2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/l$b;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:J

.field private final d:F

.field private final e:J

.field private final f:J

.field private final g:F

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:J

.field private s:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/l;->a:F

    iput p2, p0, Landroidx/media3/exoplayer/l;->b:F

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->c:J

    iput p5, p0, Landroidx/media3/exoplayer/l;->d:F

    iput-wide p6, p0, Landroidx/media3/exoplayer/l;->e:J

    iput-wide p8, p0, Landroidx/media3/exoplayer/l;->f:J

    iput p10, p0, Landroidx/media3/exoplayer/l;->g:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->h:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->i:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->k:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->l:J

    iput p1, p0, Landroidx/media3/exoplayer/l;->o:F

    iput p2, p0, Landroidx/media3/exoplayer/l;->n:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/l;->p:F

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->q:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->j:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->m:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->r:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->s:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLandroidx/media3/exoplayer/l$a;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroidx/media3/exoplayer/l;-><init>(FFJFJJF)V

    return-void
.end method

.method private f(J)V
    .locals 12

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->r:J

    const-wide/16 v2, 0x3

    iget-wide v4, p0, Landroidx/media3/exoplayer/l;->s:J

    mul-long/2addr v4, v2

    add-long v10, v0, v4

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->m:J

    cmp-long v0, v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    iget-wide p1, p0, Landroidx/media3/exoplayer/l;->c:J

    invoke-static {p1, p2}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide p1

    iget v0, p0, Landroidx/media3/exoplayer/l;->p:F

    sub-float/2addr v0, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-long v2, v0

    iget p2, p0, Landroidx/media3/exoplayer/l;->n:F

    sub-float/2addr p2, v1

    mul-float/2addr p2, p1

    float-to-long p1, p2

    add-long/2addr v2, p1

    iget-wide p1, p0, Landroidx/media3/exoplayer/l;->j:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->m:J

    sub-long/2addr v0, v2

    const/4 v2, 0x3

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v10, v2, v3

    const/4 v3, 0x1

    aput-wide p1, v2, v3

    const/4 p1, 0x2

    aput-wide v0, v2, p1

    invoke-static {v2}, Lcom/google/common/primitives/Longs;->h([J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/l;->m:J

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/l;->p:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/l;->d:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v6, p1, v0

    iget-wide v8, p0, Landroidx/media3/exoplayer/l;->m:J

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->q(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/l;->m:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iput-wide v0, p0, Landroidx/media3/exoplayer/l;->m:J

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v4, p0, Landroidx/media3/exoplayer/l;->i:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/l;->k:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/l;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v0

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->j:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Landroidx/media3/exoplayer/l;->j:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/l;->m:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/l;->r:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/l;->s:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/l;->q:J

    return-void
.end method

.method private static h(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float/2addr p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private i(JJ)V
    .locals 2

    sub-long/2addr p1, p3

    iget-wide p3, p0, Landroidx/media3/exoplayer/l;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/l;->r:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/exoplayer/l;->s:J

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/l;->g:F

    invoke-static {p3, p4, p1, p2, v0}, Landroidx/media3/exoplayer/l;->h(JJF)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->r:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide p3, p0, Landroidx/media3/exoplayer/l;->s:J

    iget v0, p0, Landroidx/media3/exoplayer/l;->g:F

    invoke-static {p3, p4, p1, p2, v0}, Landroidx/media3/exoplayer/l;->h(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/l;->s:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a(JJ)F
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/l;->i(JJ)V

    iget-wide p3, p0, Landroidx/media3/exoplayer/l;->q:J

    cmp-long p3, p3, v2

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v2, p0, Landroidx/media3/exoplayer/l;->q:J

    sub-long/2addr p3, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/l;->c:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/l;->p:F

    return p1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/media3/exoplayer/l;->q:J

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/l;->f(J)V

    iget-wide p3, p0, Landroidx/media3/exoplayer/l;->m:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v2, p0, Landroidx/media3/exoplayer/l;->e:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_2

    iput v1, p0, Landroidx/media3/exoplayer/l;->p:F

    goto :goto_0

    :cond_2
    iget p3, p0, Landroidx/media3/exoplayer/l;->d:F

    long-to-float p1, p1

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    iget p1, p0, Landroidx/media3/exoplayer/l;->o:F

    iget p2, p0, Landroidx/media3/exoplayer/l;->n:F

    invoke-static {p3, p1, p2}, Landroidx/media3/common/util/a1;->o(FFF)F

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/l;->p:F

    :goto_0
    iget p1, p0, Landroidx/media3/exoplayer/l;->p:F

    return p1
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->m:J

    return-wide v0
.end method

.method public c()V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/l;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/l;->f:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/exoplayer/l;->m:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/l;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Landroidx/media3/exoplayer/l;->m:J

    :cond_1
    iput-wide v2, p0, Landroidx/media3/exoplayer/l;->q:J

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/l;->i:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/l;->g()V

    return-void
.end method

.method public e(Landroidx/media3/common/t$g;)V
    .locals 3

    iget-wide v0, p1, Landroidx/media3/common/t$g;->a:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/l;->h:J

    iget-wide v0, p1, Landroidx/media3/common/t$g;->b:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/l;->k:J

    iget-wide v0, p1, Landroidx/media3/common/t$g;->c:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/l;->l:J

    iget v0, p1, Landroidx/media3/common/t$g;->d:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/l;->a:F

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/l;->o:F

    iget p1, p1, Landroidx/media3/common/t$g;->e:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Landroidx/media3/exoplayer/l;->b:F

    :goto_1
    iput p1, p0, Landroidx/media3/exoplayer/l;->n:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/l;->h:J

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/l;->g()V

    return-void
.end method
