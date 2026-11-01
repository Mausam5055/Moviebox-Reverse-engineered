.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource;
.super Landroidx/media3/exoplayer/source/a;

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final h:Landroidx/media3/exoplayer/hls/g;

.field private final i:Landroidx/media3/exoplayer/hls/f;

.field private final j:Lg2/e;

.field private final k:Landroidx/media3/exoplayer/drm/t;

.field private final l:Landroidx/media3/exoplayer/upstream/m;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final q:J

.field private final r:J

.field private s:Landroidx/media3/common/t$g;

.field private t:Lw1/n;

.field private u:Landroidx/media3/common/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer.hls"

    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/hls/g;Lg2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->u:Landroidx/media3/common/t;

    iget-object v1, v1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    move-object v1, p2

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->i:Landroidx/media3/exoplayer/hls/f;

    move-object v1, p3

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->h:Landroidx/media3/exoplayer/hls/g;

    move-object v1, p4

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->j:Lg2/e;

    move-object v1, p6

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    move-object v1, p7

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/upstream/m;

    move-object v1, p8

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->q:J

    move v1, p11

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->m:Z

    move v1, p12

    iput v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->n:I

    move/from16 v1, p13

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->o:Z

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/hls/g;Lg2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLandroidx/media3/exoplayer/hls/HlsMediaSource$a;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Landroidx/media3/exoplayer/hls/HlsMediaSource;-><init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/hls/g;Lg2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V

    return-void
.end method

.method private C(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lg2/w;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b()J

    move-result-wide v4

    sub-long v17, v2, v4

    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    add-long v5, v17, v5

    move-wide v13, v5

    goto :goto_0

    :cond_0
    move-wide v13, v3

    :goto_0
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->G(Landroidx/media3/exoplayer/hls/playlist/c;)J

    move-result-wide v11

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    iget-wide v5, v2, Landroidx/media3/common/t$g;->a:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v2

    :goto_1
    move-wide v5, v2

    goto :goto_2

    :cond_1
    invoke-static {v1, v11, v12}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->I(Landroidx/media3/exoplayer/hls/playlist/c;J)J

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget-wide v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    add-long v9, v2, v11

    move-wide v7, v11

    invoke-static/range {v5 .. v10}, Landroidx/media3/common/util/a1;->q(JJJ)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->J(Landroidx/media3/exoplayer/hls/playlist/c;J)V

    invoke-direct {v0, v1, v11, v12}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->H(Landroidx/media3/exoplayer/hls/playlist/c;J)J

    move-result-wide v19

    iget v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, v1, Landroidx/media3/exoplayer/hls/playlist/c;->f:Z

    if-eqz v2, :cond_2

    move/from16 v23, v4

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    move/from16 v23, v2

    :goto_3
    new-instance v2, Lg2/w;

    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    xor-int/lit8 v22, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    move-result-object v25

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    move-object/from16 v26, v1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x1

    move-object v6, v2

    move-wide/from16 v7, p2

    move-wide v3, v9

    move-wide/from16 v9, p4

    move-wide v15, v3

    move-object/from16 v24, p6

    invoke-direct/range {v6 .. v26}, Lg2/w;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/t;Landroidx/media3/common/t$g;)V

    return-object v2
.end method

.method private D(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lg2/w;
    .locals 24

    move-object/from16 v0, p1

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    if-nez v1, :cond_2

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-static {v3, v1, v2}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->F(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    :goto_0
    move-wide/from16 v16, v1

    goto :goto_3

    :cond_2
    :goto_1
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    goto :goto_0

    :cond_3
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_3
    new-instance v1, Lg2/w;

    move-object v3, v1

    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    move-wide v12, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    move-result-object v22

    const/16 v23, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v21, p6

    invoke-direct/range {v3 .. v23}, Lg2/w;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/t;Landroidx/media3/common/t$g;)V

    return-object v1
.end method

.method private static E(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$d;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c$d;

    iget-wide v3, v2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Landroidx/media3/exoplayer/hls/playlist/c$d;->l:Z

    if-eqz v5, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    cmp-long v2, v3, p1

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static F(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$f;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p2}, Landroidx/media3/common/util/a1;->f(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/c$f;

    return-object p0
.end method

.method private G(Landroidx/media3/exoplayer/hls/playlist/c;)J
    .locals 4

    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->q:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->h0(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/c;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private H(Landroidx/media3/exoplayer/hls/playlist/c;J)J
    .locals 4

    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    add-long/2addr v0, p2

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    iget-wide p2, p2, Landroidx/media3/common/t$g;->a:J

    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide p2

    sub-long/2addr v0, p2

    :goto_0
    iget-boolean p2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    if-eqz p2, :cond_1

    return-wide v0

    :cond_1
    iget-object p2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    invoke-static {p2, v0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->E(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$d;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-wide p1, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    return-wide p1

    :cond_2
    iget-object p2, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_3
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->F(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-result-object p1

    iget-object p2, p1, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    invoke-static {p2, v0, v1}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->E(Ljava/util/List;J)Landroidx/media3/exoplayer/hls/playlist/c$d;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-wide p1, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    return-wide p1

    :cond_4
    iget-wide p1, p1, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    return-wide p1
.end method

.method private static I(Landroidx/media3/exoplayer/hls/playlist/c;J)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    sub-long/2addr v3, v1

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$h;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, p0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    iget-wide v0, v0, Landroidx/media3/exoplayer/hls/playlist/c$h;->c:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    move-wide v3, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    mul-long v3, v2, v0

    :goto_0
    add-long/2addr v3, p1

    return-wide v3
.end method

.method private J(Landroidx/media3/exoplayer/hls/playlist/c;J)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iget v1, v0, Landroidx/media3/common/t$g;->d:F

    const v2, -0x800001

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Landroidx/media3/common/t$g;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c$h;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroidx/media3/exoplayer/hls/playlist/c$h;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroidx/media3/common/t$g$a;

    invoke-direct {v0}, Landroidx/media3/common/t$g$a;-><init>()V

    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/t$g$a;->k(J)Landroidx/media3/common/t$g$a;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    iget v0, v0, Landroidx/media3/common/t$g;->d:F

    :goto_1
    invoke-virtual {p2, v0}, Landroidx/media3/common/t$g$a;->j(F)Landroidx/media3/common/t$g$a;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    iget p3, p1, Landroidx/media3/common/t$g;->e:F

    :goto_2
    invoke-virtual {p2, p3}, Landroidx/media3/common/t$g$a;->h(F)Landroidx/media3/common/t$g$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/t$g$a;->f()Landroidx/media3/common/t$g;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->s:Landroidx/media3/common/t$g;

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->stop()V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/t;->release()V

    return-void
.end method

.method public declared-synchronized a()Landroidx/media3/common/t;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->u:Landroidx/media3/common/t;
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

.method public f(Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 12

    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    invoke-static {v3, v4}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v1

    :goto_0
    iget v0, p1, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide v7, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v7, v9

    :goto_2
    new-instance v11, Landroidx/media3/exoplayer/hls/h;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c()Landroidx/media3/exoplayer/hls/playlist/d;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/d;

    invoke-direct {v11, v0, p1}, Landroidx/media3/exoplayer/hls/h;-><init>(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->C(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lg2/w;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->D(Landroidx/media3/exoplayer/hls/playlist/c;JJLandroidx/media3/exoplayer/hls/h;)Lg2/w;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/a;->u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    move-result-object v10

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/a;->s(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    move-result-object v8

    new-instance v19, Landroidx/media3/exoplayer/hls/l;

    move-object/from16 v1, v19

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->h:Landroidx/media3/exoplayer/hls/g;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->i:Landroidx/media3/exoplayer/hls/f;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->t:Lw1/n;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->l:Landroidx/media3/exoplayer/upstream/m;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->j:Lg2/e;

    iget-boolean v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->m:Z

    iget v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->n:I

    iget-boolean v15, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->o:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/a;->x()Ly1/f4;

    move-result-object v16

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->r:J

    move-wide/from16 v17, v1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v18}, Landroidx/media3/exoplayer/hls/l;-><init>(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/f;Lw1/n;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/upstream/b;Lg2/e;ZIZLy1/f4;J)V

    return-object v19
.end method

.method public j(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/hls/l;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/l;->u()V

    return-void
.end method

.method public declared-synchronized l(Landroidx/media3/common/t;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->u:Landroidx/media3/common/t;
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
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->h()V

    return-void
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/t$h;

    iget-object v2, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    iget-object v4, v1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    iget-object v4, v1, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroidx/media3/common/t$h;->c:Landroidx/media3/common/t$f;

    iget-object v1, v1, Landroidx/media3/common/t$h;->c:Landroidx/media3/common/t$f;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    iget-object p1, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    invoke-virtual {v0, p1}, Landroidx/media3/common/t$g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected z(Lw1/n;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->t:Lw1/n;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->x()Ly1/f4;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/t;->c(Landroid/os/Looper;Ly1/f4;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->k:Landroidx/media3/exoplayer/drm/t;

    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/t;->prepare()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsMediaSource;->a()Landroidx/media3/common/t;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/t$h;

    iget-object v1, v1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->j(Landroid/net/Uri;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;)V

    return-void
.end method
