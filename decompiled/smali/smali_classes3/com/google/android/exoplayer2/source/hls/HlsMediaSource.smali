.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/a;

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/exoplayer2/source/hls/g;

.field private final i:Lcom/google/android/exoplayer2/v1$h;

.field private final j:Lcom/google/android/exoplayer2/source/hls/f;

.field private final k:Lt9/d;

.field private final l:Lcom/google/android/exoplayer2/drm/u;

.field private final m:Lcom/google/android/exoplayer2/upstream/z;

.field private final n:Z

.field private final o:I

.field private final p:Z

.field private final q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final r:J

.field private final s:Lcom/google/android/exoplayer2/v1;

.field private t:Lcom/google/android/exoplayer2/v1$g;

.field private u:Lcom/google/android/exoplayer2/upstream/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.hls"

    invoke-static {v0}, Lcom/google/android/exoplayer2/m1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/source/hls/g;Lt9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/v1$h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/v1$h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/v1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v1;->d:Lcom/google/android/exoplayer2/v1$g;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/v1$g;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/source/hls/f;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lcom/google/android/exoplayer2/source/hls/g;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Lt9/d;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/u;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/z;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:J

    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    iput p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:I

    iput-boolean p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/source/hls/g;Lt9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/source/hls/g;Lt9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZ)V

    return-void
.end method

.method private E(Lcom/google/android/exoplayer2/source/hls/playlist/d;JJLcom/google/android/exoplayer2/source/hls/h;)Lt9/u;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->h:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->b()J

    move-result-wide v4

    sub-long v17, v2, v4

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->o:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_0

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->u:J

    add-long v5, v17, v5

    move-wide v13, v5

    goto :goto_0

    :cond_0
    move-wide v13, v3

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->I(Lcom/google/android/exoplayer2/source/hls/playlist/d;)J

    move-result-wide v11

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/v1$g;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/v1$g;->a:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v2

    :goto_1
    move-wide v5, v2

    goto :goto_2

    :cond_1
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->K(Lcom/google/android/exoplayer2/source/hls/playlist/d;J)J

    move-result-wide v2

    goto :goto_1

    :goto_2
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->u:J

    add-long v9, v2, v11

    move-wide v7, v11

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/p0;->r(JJJ)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->L(Lcom/google/android/exoplayer2/source/hls/playlist/d;J)V

    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->J(Lcom/google/android/exoplayer2/source/hls/playlist/d;J)J

    move-result-wide v19

    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->f:Z

    if-eqz v2, :cond_2

    move/from16 v23, v4

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    move/from16 v23, v2

    :goto_3
    new-instance v2, Lt9/u;

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->u:J

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->o:Z

    xor-int/lit8 v22, v1, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/v1;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/v1$g;

    move-object/from16 v26, v1

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x1

    move-object v6, v2

    move-wide/from16 v7, p2

    move-wide v3, v9

    move-wide/from16 v9, p4

    move-wide v15, v3

    move-object/from16 v24, p6

    invoke-direct/range {v6 .. v26}, Lt9/u;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-object v2
.end method

.method private F(Lcom/google/android/exoplayer2/source/hls/playlist/d;JJLcom/google/android/exoplayer2/source/hls/h;)Lt9/u;
    .locals 24

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->g:Z

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->e:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->u:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->r:Ljava/util/List;

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->H(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/d$d;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    :goto_0
    move-wide/from16 v16, v1

    goto :goto_3

    :cond_2
    :goto_1
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->e:J

    goto :goto_0

    :cond_3
    :goto_2
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_3
    new-instance v1, Lt9/u;

    move-object v3, v1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->u:J

    move-wide v12, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/v1;

    move-object/from16 v22, v2

    const/16 v23, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v21, p6

    invoke-direct/range {v3 .. v23}, Lt9/u;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-object v1
.end method

.method private static G(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/d$b;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/d$b;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/d$b;->l:Z

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

.method private static H(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/d$d;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p2}, Lcom/google/android/exoplayer2/util/p0;->g(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/playlist/d$d;

    return-object p0
.end method

.method private I(Lcom/google/android/exoplayer2/source/hls/playlist/d;)J
    .locals 4

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->p:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->r:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->b0(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/d;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private J(Lcom/google/android/exoplayer2/source/hls/playlist/d;J)J
    .locals 4

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->u:J

    add-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/v1$g;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/v1$g;->a:J

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide p2

    sub-long/2addr v0, p2

    :goto_0
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->g:Z

    if-eqz p2, :cond_1

    return-wide v0

    :cond_1
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->s:Ljava/util/List;

    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/d$b;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    return-wide p1

    :cond_2
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_3
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->r:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->H(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/d$d;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d$d;->m:Ljava/util/List;

    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->G(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/d$b;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    return-wide p1

    :cond_4
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    return-wide p1
.end method

.method private static K(Lcom/google/android/exoplayer2/source/hls/playlist/d;J)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->v:Lcom/google/android/exoplayer2/source/hls/playlist/d$f;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->u:J

    sub-long/2addr v3, v1

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$f;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->n:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$f;->c:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    move-wide v3, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d;->m:J

    mul-long v3, v2, v0

    :goto_0
    add-long/2addr v3, p1

    return-wide v3
.end method

.method private L(Lcom/google/android/exoplayer2/source/hls/playlist/d;J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/v1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/v1;->d:Lcom/google/android/exoplayer2/v1$g;

    iget v1, v0, Lcom/google/android/exoplayer2/v1$g;->d:F

    const v2, -0x800001

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/v1$g;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->v:Lcom/google/android/exoplayer2/source/hls/playlist/d$f;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d$f;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d$f;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/v1$g$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1$g$a;-><init>()V

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/v1$g$a;->k(J)Lcom/google/android/exoplayer2/v1$g$a;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/v1$g;

    iget v0, v0, Lcom/google/android/exoplayer2/v1$g;->d:F

    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/v1$g$a;->j(F)Lcom/google/android/exoplayer2/v1$g$a;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/v1$g;

    iget p3, p1, Lcom/google/android/exoplayer2/v1$g;->e:F

    :goto_2
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/v1$g$a;->h(F)Lcom/google/android/exoplayer2/v1$g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1$g$a;->f()Lcom/google/android/exoplayer2/v1$g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->t:Lcom/google/android/exoplayer2/v1$g;

    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Lcom/google/android/exoplayer2/upstream/k0;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/u;->prepare()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->z()Le9/u1;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/u;->b(Landroid/os/Looper;Le9/u1;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->i:Lcom/google/android/exoplayer2/v1$h;

    iget-object v1, v1, Lcom/google/android/exoplayer2/v1$h;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->o(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$c;)V

    return-void
.end method

.method protected D()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->stop()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/u;->release()V

    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/v1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->s:Lcom/google/android/exoplayer2/v1;

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object v7

    new-instance v16, Lcom/google/android/exoplayer2/source/hls/k;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->h:Lcom/google/android/exoplayer2/source/hls/g;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->j:Lcom/google/android/exoplayer2/source/hls/f;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->u:Lcom/google/android/exoplayer2/upstream/k0;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->l:Lcom/google/android/exoplayer2/drm/u;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/z;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->k:Lt9/d;

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->n:Z

    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->o:I

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->p:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/a;->z()Le9/u1;

    move-result-object v15

    move-object/from16 v1, v16

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/source/hls/k;-><init>(Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/upstream/b;Lt9/d;ZIZLe9/u1;)V

    return-object v16
.end method

.method public f(Lcom/google/android/exoplayer2/source/hls/playlist/d;)V
    .locals 12

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->p:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->h:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_0

    :cond_0
    move-wide v9, v1

    :goto_0
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/d;->d:I

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
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/h;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c()Lcom/google/android/exoplayer2/source/hls/playlist/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;

    invoke-direct {v11, v0, p1}, Lcom/google/android/exoplayer2/source/hls/h;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/e;Lcom/google/android/exoplayer2/source/hls/playlist/d;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->E(Lcom/google/android/exoplayer2/source/hls/playlist/d;JJLcom/google/android/exoplayer2/source/hls/h;)Lt9/u;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->F(Lcom/google/android/exoplayer2/source/hls/playlist/d;JJLcom/google/android/exoplayer2/source/hls/h;)Lt9/u;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method

.method public k(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/k;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/k;->q()V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->q:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->h()V

    return-void
.end method
