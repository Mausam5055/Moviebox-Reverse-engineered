.class public final Landroidx/media3/exoplayer/hls/playlist/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;

.field public final i:Z

.field public final j:J

.field public final k:J

.field public final l:Lcom/google/common/collect/ImmutableList;

.field public final m:Lcom/google/common/collect/ImmutableList;

.field public final n:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJJJLjava/util/List;ZJJLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/a;->a(Z)V

    move-object v3, p1

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->a:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->b:Landroid/net/Uri;

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->c:Landroid/net/Uri;

    move-wide v1, p4

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->d:J

    move-wide v1, p6

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->e:J

    move-wide v1, p8

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->f:J

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->g:J

    move-object/from16 v1, p12

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->h:Ljava/util/List;

    move/from16 v1, p13

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->i:Z

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->j:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->k:J

    invoke-static/range {p18 .. p18}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->l:Lcom/google/common/collect/ImmutableList;

    invoke-static/range {p19 .. p19}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->m:Lcom/google/common/collect/ImmutableList;

    invoke-static/range {p20 .. p20}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->n:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/c$c;

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->d:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->e:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->f:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->g:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->i:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->i:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->j:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->j:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->k:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->k:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->b:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->b:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->c:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->c:Landroid/net/Uri;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->h:Ljava/util/List;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->h:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->l:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->l:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->m:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->m:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/c$c;->n:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/c$c;->n:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->a:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->b:Landroid/net/Uri;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->c:Landroid/net/Uri;

    iget-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->g:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->h:Ljava/util/List;

    iget-boolean v9, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->i:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->j:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->k:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->l:Lcom/google/common/collect/ImmutableList;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->m:Lcom/google/common/collect/ImmutableList;

    iget-object v14, v0, Landroidx/media3/exoplayer/hls/playlist/c$c;->n:Lcom/google/common/collect/ImmutableList;

    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/4 v1, 0x1

    aput-object v2, v15, v1

    const/4 v1, 0x2

    aput-object v3, v15, v1

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v6, v15, v1

    const/4 v1, 0x6

    aput-object v7, v15, v1

    const/4 v1, 0x7

    aput-object v8, v15, v1

    const/16 v1, 0x8

    aput-object v9, v15, v1

    const/16 v1, 0x9

    aput-object v10, v15, v1

    const/16 v1, 0xa

    aput-object v11, v15, v1

    const/16 v1, 0xb

    aput-object v12, v15, v1

    const/16 v1, 0xc

    aput-object v13, v15, v1

    const/16 v1, 0xd

    aput-object v14, v15, v1

    invoke-static {v15}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
