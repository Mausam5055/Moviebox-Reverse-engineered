.class public final Landroidx/media3/exoplayer/hls/playlist/c;
.super Lc2/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/c$d;,
        Landroidx/media3/exoplayer/hls/playlist/c$f;,
        Landroidx/media3/exoplayer/hls/playlist/c$h;,
        Landroidx/media3/exoplayer/hls/playlist/c$b;,
        Landroidx/media3/exoplayer/hls/playlist/c$c;,
        Landroidx/media3/exoplayer/hls/playlist/c$e;,
        Landroidx/media3/exoplayer/hls/playlist/c$g;
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:J

.field public final i:Z

.field public final j:I

.field public final k:J

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Landroidx/media3/common/DrmInitData;

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/Map;

.field public final u:J

.field public final v:Landroidx/media3/exoplayer/hls/playlist/c$h;

.field public final w:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V
    .locals 10

    move-object v0, p0

    move-wide v1, p4

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p18

    invoke-direct {p0, p2, p3, v5}, Lc2/d;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v3, p1

    iput v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    move-wide/from16 v3, p7

    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    move/from16 v3, p6

    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    move/from16 v3, p9

    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->i:Z

    move/from16 v3, p10

    iput v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    move-wide/from16 v3, p11

    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    move/from16 v3, p13

    iput v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->l:I

    move-wide/from16 v3, p14

    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    move-wide/from16 v3, p16

    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    move/from16 v3, p19

    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    move/from16 v3, p20

    iput-boolean v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    move-object/from16 v3, p21

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->q:Landroidx/media3/common/DrmInitData;

    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    invoke-static/range {p25 .. p25}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    invoke-static/range {p26 .. p26}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->w:Lcom/google/common/collect/ImmutableList;

    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/c$d;

    iget-wide v6, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    goto :goto_0

    :cond_0
    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/c$f;

    iget-wide v6, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    goto :goto_0

    :cond_1
    iput-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v3, v1, v4

    if-ltz v3, :cond_3

    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_3
    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_1
    iput-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->f:Z

    move-object/from16 v1, p24

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 0

    return-object p0
.end method

.method public b(JI)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 29

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    move/from16 v11, p3

    new-instance v28, Landroidx/media3/exoplayer/hls/playlist/c;

    move-object/from16 v1, v28

    iget v2, v0, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    iget-object v3, v0, Lc2/d;->a:Ljava/lang/String;

    iget-object v4, v0, Lc2/d;->b:Ljava/util/List;

    iget-wide v5, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    iget-boolean v7, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    iget-wide v12, v0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    iget v14, v0, Landroidx/media3/exoplayer/hls/playlist/c;->l:I

    move-object/from16 p1, v1

    move/from16 p2, v2

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    move-wide v15, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Lc2/d;->c:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    move/from16 v21, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->q:Landroidx/media3/common/DrmInitData;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->w:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v27, v1

    const/4 v10, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v1 .. v27}, Landroidx/media3/exoplayer/hls/playlist/c;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V

    return-object v28
.end method

.method public c()Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 31

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/c;

    move-object v2, v1

    iget v3, v0, Landroidx/media3/exoplayer/hls/playlist/c;->d:I

    iget-object v4, v0, Lc2/d;->a:Ljava/lang/String;

    iget-object v5, v0, Lc2/d;->b:Ljava/util/List;

    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c;->e:J

    iget-boolean v8, v0, Landroidx/media3/exoplayer/hls/playlist/c;->g:Z

    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    iget-boolean v11, v0, Landroidx/media3/exoplayer/hls/playlist/c;->i:Z

    iget v12, v0, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    iget-wide v13, v0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    iget v15, v0, Landroidx/media3/exoplayer/hls/playlist/c;->l:I

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->m:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->n:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lc2/d;->c:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->p:Z

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->q:Landroidx/media3/common/DrmInitData;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->v:Landroidx/media3/exoplayer/hls/playlist/c$h;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->t:Ljava/util/Map;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c;->w:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v28, v1

    const/16 v21, 0x1

    move-object/from16 v2, v30

    invoke-direct/range {v2 .. v28}, Landroidx/media3/exoplayer/hls/playlist/c;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V

    return-object v29
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/c;->a(Ljava/util/List;)Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object p1

    return-object p1
.end method

.method public d()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/hls/playlist/c;->u:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public e(Landroidx/media3/exoplayer/hls/playlist/c;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v1, :cond_3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v1, v3, :cond_5

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    if-eqz v1, :cond_4

    iget-boolean p1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->o:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    return v0
.end method
