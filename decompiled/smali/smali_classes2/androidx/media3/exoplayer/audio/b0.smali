.class final Landroidx/media3/exoplayer/audio/b0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/b0$a;
    }
.end annotation


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:Z

.field private F:J

.field private G:J

.field private H:Z

.field private I:J

.field private J:Landroidx/media3/common/util/i;

.field private final a:Landroidx/media3/exoplayer/audio/b0$a;

.field private final b:[J

.field private c:Landroid/media/AudioTrack;

.field private d:I

.field private e:I

.field private f:Landroidx/media3/exoplayer/audio/a0;

.field private g:I

.field private h:Z

.field private i:J

.field private j:F

.field private k:Z

.field private l:J

.field private m:J

.field private n:Ljava/lang/reflect/Method;

.field private o:J

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:I

.field private x:I

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/b0$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/audio/b0$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->a:Landroidx/media3/exoplayer/audio/b0$a;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->n:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->b:[J

    sget-object p1, Landroidx/media3/common/util/i;->a:Landroidx/media3/common/util/i;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    return-void
.end method

.method private b()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/b0;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->f()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->B:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->s:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/b0;->w(J)V

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->s:J

    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->t:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->I:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->u:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private e()J
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->d()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->d1(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private f()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->A:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->y:J

    sub-long/2addr v0, v2

    iget v2, p0, Landroidx/media3/exoplayer/audio/b0;->j:F

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->g0(JF)J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->F(JI)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->A:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private l(J)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/a0;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/audio/a0;->f(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->d()J

    move-result-wide v5

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->c()J

    move-result-wide v3

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->e()J

    move-result-wide v9

    sub-long v1, v5, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/b0;->a:Landroidx/media3/exoplayer/audio/b0$a;

    move-wide v7, p1

    invoke-interface/range {v2 .. v10}, Landroidx/media3/exoplayer/audio/b0$a;->onSystemTimeUsMismatch(JJJJ)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->g()V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {v3, v4, v1}, Landroidx/media3/common/util/a1;->d1(JI)J

    move-result-wide v1

    sub-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/b0;->a:Landroidx/media3/exoplayer/audio/b0$a;

    move-wide v7, p1

    invoke-interface/range {v2 .. v10}, Landroidx/media3/exoplayer/audio/b0$a;->onPositionFramesMismatch(JJJJ)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->a()V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->m:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/b0;->b:[J

    iget v7, p0, Landroidx/media3/exoplayer/audio/b0;->w:I

    iget v8, p0, Landroidx/media3/exoplayer/audio/b0;->j:F

    invoke-static {v2, v3, v8}, Landroidx/media3/common/util/a1;->l0(JF)J

    move-result-wide v2

    sub-long/2addr v2, v0

    aput-wide v2, v6, v7

    iget v2, p0, Landroidx/media3/exoplayer/audio/b0;->w:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    rem-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/exoplayer/audio/b0;->w:I

    iget v2, p0, Landroidx/media3/exoplayer/audio/b0;->x:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/audio/b0;->x:I

    :cond_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->m:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/b0;->l:J

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/audio/b0;->x:I

    if-ge v2, v3, :cond_2

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/b0;->l:J

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/b0;->b:[J

    aget-wide v7, v6, v2

    int-to-long v9, v3

    div-long/2addr v7, v9

    add-long/2addr v4, v7

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/b0;->l:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/b0;->h:Z

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/b0;->l(J)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/b0;->n(J)V

    return-void
.end method

.method private n(J)V
    .locals 8

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/b0;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/b0;->r:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/b0;->i:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->o:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->o:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->a:Landroidx/media3/exoplayer/audio/b0$a;

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/audio/b0$a;->onInvalidLatency(J)V

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/b0;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/b0;->n:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/b0;->r:J

    :cond_1
    return-void
.end method

.method private static o(I)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private r()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->l:J

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/audio/b0;->x:I

    iput v2, p0, Landroidx/media3/exoplayer/audio/b0;->w:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->m:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->D:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->G:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/b0;->k:Z

    return-void
.end method

.method private w(J)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/b0;->h:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/b0;->t:J

    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/b0;->v:J

    :cond_1
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/b0;->v:J

    add-long/2addr v2, v6

    :cond_2
    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v6, 0x1d

    if-gt v0, v6, :cond_5

    cmp-long v0, v2, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_4

    iget-wide v8, p0, Landroidx/media3/exoplayer/audio/b0;->t:J

    cmp-long v0, v8, v4

    if-lez v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->z:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/b0;->z:J

    :cond_3
    return-void

    :cond_4
    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/b0;->z:J

    :cond_5
    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/b0;->t:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/b0;->H:Z

    if-eqz v0, :cond_6

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->I:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->I:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/b0;->H:Z

    goto :goto_0

    :cond_6
    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/b0;->u:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/b0;->u:J

    :cond_7
    :goto_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/b0;->t:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/b0;->H:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->b()V

    :cond_0
    return-void
.end method

.method public c()J
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/b0;->m()V

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {v2}, Landroidx/media3/common/util/i;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-object v2, v0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/audio/a0;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/a0;->e()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/a0;->c()J

    move-result-wide v9

    iget v11, v0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {v9, v10, v11}, Landroidx/media3/common/util/a1;->d1(JI)J

    move-result-wide v9

    invoke-virtual {v2}, Landroidx/media3/exoplayer/audio/a0;->d()J

    move-result-wide v11

    sub-long v11, v4, v11

    iget v2, v0, Landroidx/media3/exoplayer/audio/b0;->j:F

    invoke-static {v11, v12, v2}, Landroidx/media3/common/util/a1;->g0(JF)J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_1

    :cond_1
    iget v2, v0, Landroidx/media3/exoplayer/audio/b0;->x:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_3

    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/b0;->y:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/b0;->f()J

    move-result-wide v11

    iget v2, v0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {v11, v12, v2}, Landroidx/media3/common/util/a1;->d1(JI)J

    move-result-wide v11

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/b0;->e()J

    move-result-wide v11

    goto :goto_0

    :cond_3
    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/b0;->l:J

    add-long/2addr v11, v4

    iget v2, v0, Landroidx/media3/exoplayer/audio/b0;->j:F

    invoke-static {v11, v12, v2}, Landroidx/media3/common/util/a1;->g0(JF)J

    move-result-wide v11

    :goto_0
    iget-wide v13, v0, Landroidx/media3/exoplayer/audio/b0;->o:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-wide v13, v0, Landroidx/media3/exoplayer/audio/b0;->y:J

    cmp-long v2, v13, v9

    if-eqz v2, :cond_4

    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/b0;->B:J

    iget v2, v0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {v9, v10, v2}, Landroidx/media3/common/util/a1;->d1(JI)J

    move-result-wide v9

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_1

    :cond_4
    move-wide v9, v11

    :goto_1
    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/b0;->E:Z

    if-eq v2, v8, :cond_5

    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/b0;->D:J

    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/b0;->G:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/b0;->C:J

    iput-wide v11, v0, Landroidx/media3/exoplayer/audio/b0;->F:J

    :cond_5
    iget-wide v11, v0, Landroidx/media3/exoplayer/audio/b0;->G:J

    sub-long v11, v4, v11

    const-wide/32 v13, 0xf4240

    cmp-long v2, v11, v13

    move-wide v15, v4

    if-gez v2, :cond_6

    iget-wide v3, v0, Landroidx/media3/exoplayer/audio/b0;->F:J

    iget v5, v0, Landroidx/media3/exoplayer/audio/b0;->j:F

    invoke-static {v11, v12, v5}, Landroidx/media3/common/util/a1;->g0(JF)J

    move-result-wide v17

    add-long v3, v3, v17

    mul-long/2addr v11, v6

    div-long/2addr v11, v13

    mul-long/2addr v9, v11

    sub-long v11, v6, v11

    mul-long/2addr v11, v3

    add-long/2addr v9, v11

    div-long/2addr v9, v6

    :cond_6
    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/b0;->k:Z

    if-nez v3, :cond_7

    iget-wide v3, v0, Landroidx/media3/exoplayer/audio/b0;->C:J

    cmp-long v3, v9, v3

    if-lez v3, :cond_7

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/b0;->k:Z

    iget-wide v1, v0, Landroidx/media3/exoplayer/audio/b0;->C:J

    sub-long v1, v9, v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v1

    iget v3, v0, Landroidx/media3/exoplayer/audio/b0;->j:F

    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/a1;->l0(JF)J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {v3}, Landroidx/media3/common/util/i;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/b0;->a:Landroidx/media3/exoplayer/audio/b0$a;

    invoke-interface {v1, v3, v4}, Landroidx/media3/exoplayer/audio/b0$a;->b(J)V

    :cond_7
    move-wide v4, v15

    iput-wide v4, v0, Landroidx/media3/exoplayer/audio/b0;->D:J

    iput-wide v9, v0, Landroidx/media3/exoplayer/audio/b0;->C:J

    iput-boolean v8, v0, Landroidx/media3/exoplayer/audio/b0;->E:Z

    return-wide v9
.end method

.method public g(J)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->d()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->A:J

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->y:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/b0;->B:J

    return-void
.end method

.method public h(J)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/b0;->c()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/a1;->F(JI)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(J)Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {p1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->z:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(J)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/b0;->h:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/b0;->p:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/b0;->p:Z

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/b0;->h(J)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/b0;->p:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->a:Landroidx/media3/exoplayer/audio/b0$a;

    iget p2, p0, Landroidx/media3/exoplayer/audio/b0;->e:I

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->i:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/media3/exoplayer/audio/b0$a;->onUnderrun(IJ)V

    :cond_2
    return v2
.end method

.method public p()Z
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->r()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/a0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->h()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->d()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->A:J

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    return-void
.end method

.method public s(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->c:Landroid/media/AudioTrack;

    iput p4, p0, Landroidx/media3/exoplayer/audio/b0;->d:I

    iput p5, p0, Landroidx/media3/exoplayer/audio/b0;->e:I

    new-instance v0, Landroidx/media3/exoplayer/audio/a0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/a0;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/audio/b0;->g:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroidx/media3/exoplayer/audio/b0;->o(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/b0;->h:Z

    invoke-static {p3}, Landroidx/media3/common/util/a1;->G0(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/b0;->q:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_1

    div-int/2addr p5, p4

    int-to-long p2, p5

    iget p4, p0, Landroidx/media3/exoplayer/audio/b0;->g:I

    invoke-static {p2, p3, p4}, Landroidx/media3/common/util/a1;->d1(JI)J

    move-result-wide p2

    goto :goto_1

    :cond_1
    move-wide p2, v0

    :goto_1
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/b0;->i:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/b0;->t:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/b0;->u:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/b0;->H:Z

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/b0;->I:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/b0;->v:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/b0;->p:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->y:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->z:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/b0;->r:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/b0;->o:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/audio/b0;->j:F

    return-void
.end method

.method public t(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/b0;->j:F

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/a0;->h()V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/b0;->r()V

    return-void
.end method

.method public u(Landroidx/media3/common/util/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    return-void
.end method

.method public v()V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->J:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/b0;->y:J

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/b0;->f:Landroidx/media3/exoplayer/audio/a0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/a0;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/a0;->h()V

    return-void
.end method
