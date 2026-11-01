.class public final Lcom/google/android/exoplayer2/source/hls/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/hls/p$b;
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/hls/g;

.field private final b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final c:Lcom/google/android/exoplayer2/source/hls/f;

.field private final d:Lcom/google/android/exoplayer2/upstream/k0;

.field private final e:Lcom/google/android/exoplayer2/drm/u;

.field private final f:Lcom/google/android/exoplayer2/drm/s$a;

.field private final g:Lcom/google/android/exoplayer2/upstream/z;

.field private final h:Lcom/google/android/exoplayer2/source/p$a;

.field private final i:Lcom/google/android/exoplayer2/upstream/b;

.field private final j:Ljava/util/IdentityHashMap;

.field private final k:Lcom/google/android/exoplayer2/source/hls/q;

.field private final l:Lt9/d;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Le9/u1;

.field private q:Lcom/google/android/exoplayer2/source/n$a;

.field private r:I

.field private s:Lt9/x;

.field private t:[Lcom/google/android/exoplayer2/source/hls/p;

.field private u:[Lcom/google/android/exoplayer2/source/hls/p;

.field private v:[[I

.field private w:I

.field private x:Lcom/google/android/exoplayer2/source/b0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/upstream/b;Lt9/d;ZIZLe9/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->a:Lcom/google/android/exoplayer2/source/hls/g;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/k;->c:Lcom/google/android/exoplayer2/source/hls/f;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/k;->d:Lcom/google/android/exoplayer2/upstream/k0;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/k;->e:Lcom/google/android/exoplayer2/drm/u;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/k;->f:Lcom/google/android/exoplayer2/drm/s$a;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/k;->g:Lcom/google/android/exoplayer2/upstream/z;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/hls/k;->h:Lcom/google/android/exoplayer2/source/p$a;

    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/k;->i:Lcom/google/android/exoplayer2/upstream/b;

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/k;->l:Lt9/d;

    iput-boolean p11, p0, Lcom/google/android/exoplayer2/source/hls/k;->m:Z

    iput p12, p0, Lcom/google/android/exoplayer2/source/hls/k;->n:I

    iput-boolean p13, p0, Lcom/google/android/exoplayer2/source/hls/k;->o:Z

    iput-object p14, p0, Lcom/google/android/exoplayer2/source/hls/k;->p:Le9/u1;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {p10, p2}, Lt9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    new-instance p2, Lcom/google/android/exoplayer2/source/hls/q;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/source/hls/q;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/p;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/p;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    new-array p1, p1, [[I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->v:[[I

    return-void
.end method

.method private i(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 22

    move-object/from16 v0, p3

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->d:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v13, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v10, v1

    move v9, v6

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    iget-object v11, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->d:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->a:Landroid/net/Uri;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/o1;

    iget-object v11, v11, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v1, :cond_1

    move v11, v1

    goto :goto_2

    :cond_1
    move v11, v6

    :goto_2
    and-int/2addr v10, v11

    :cond_2
    add-int/2addr v9, v1

    goto :goto_1

    :cond_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const-string v11, "audio:"

    if-eqz v9, :cond_4

    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    new-array v9, v6, [Landroid/net/Uri;

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/p0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, [Landroid/net/Uri;

    new-array v9, v6, [Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, [Lcom/google/android/exoplayer2/o1;

    const/16 v17, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    const/4 v14, 0x1

    move-object/from16 v12, p0

    move-object v13, v8

    move-object/from16 v19, p6

    move-wide/from16 v20, p1

    invoke-direct/range {v12 .. v21}, Lcom/google/android/exoplayer2/source/hls/k;->l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;

    move-result-object v9

    invoke-static {v4}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object v11

    move-object/from16 v12, p5

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p4

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p0

    iget-boolean v14, v13, Lcom/google/android/exoplayer2/source/hls/k;->m:Z

    if-eqz v14, :cond_5

    if-eqz v10, :cond_5

    new-array v10, v6, [Lcom/google/android/exoplayer2/o1;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/exoplayer2/o1;

    new-instance v14, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v14, v8, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    new-array v8, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v14, v8, v6

    new-array v10, v6, [I

    invoke-virtual {v9, v8, v6, v10}, Lcom/google/android/exoplayer2/source/hls/p;->Q([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V

    :cond_5
    :goto_4
    add-int/2addr v7, v1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v13, p0

    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/source/hls/playlist/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 20

    move-object/from16 v0, p1

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v5, v8, :cond_3

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;

    iget-object v8, v8, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->b:Lcom/google/android/exoplayer2/o1;

    iget v10, v8, Lcom/google/android/exoplayer2/o1;->r:I

    if-gtz v10, :cond_2

    iget-object v10, v8, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v10, v9}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    iget-object v8, v8, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    aput v1, v3, v5

    add-int/2addr v7, v1

    goto :goto_2

    :cond_1
    const/4 v8, -0x1

    aput v8, v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    aput v9, v3, v5

    add-int/2addr v6, v1

    :goto_2
    add-int/2addr v5, v1

    goto :goto_0

    :cond_3
    if-lez v6, :cond_4

    move v5, v1

    move v2, v6

    move v6, v4

    goto :goto_3

    :cond_4
    if-ge v7, v2, :cond_5

    sub-int/2addr v2, v7

    move v6, v1

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v4

    move v6, v5

    :goto_3
    new-array v13, v2, [Landroid/net/Uri;

    new-array v7, v2, [Lcom/google/android/exoplayer2/o1;

    new-array v8, v2, [I

    move v10, v4

    move v11, v10

    :goto_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_9

    if-eqz v5, :cond_6

    aget v12, v3, v10

    if-ne v12, v9, :cond_8

    :cond_6
    if-eqz v6, :cond_7

    aget v12, v3, v10

    if-eq v12, v1, :cond_8

    :cond_7
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;

    iget-object v14, v12, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->a:Landroid/net/Uri;

    aput-object v14, v13, v11

    iget-object v12, v12, Lcom/google/android/exoplayer2/source/hls/playlist/e$b;->b:Lcom/google/android/exoplayer2/o1;

    aput-object v12, v7, v11

    add-int/lit8 v12, v11, 0x1

    aput v10, v8, v11

    move v11, v12

    :cond_8
    add-int/2addr v10, v1

    goto :goto_4

    :cond_9
    aget-object v3, v7, v4

    iget-object v3, v3, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/p0;->K(Ljava/lang/String;I)I

    move-result v3

    if-gt v3, v1, :cond_a

    if-gt v6, v1, :cond_a

    add-int v9, v3, v6

    if-lez v9, :cond_a

    move v9, v1

    goto :goto_5

    :cond_a
    move v9, v4

    :goto_5
    if-nez v5, :cond_b

    if-lez v3, :cond_b

    move v12, v1

    goto :goto_6

    :cond_b
    move v12, v4

    :goto_6
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/o1;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->k:Ljava/util/List;

    const-string v14, "main"

    move-object/from16 v10, p0

    move-object v11, v14

    move-object v4, v14

    move-object v14, v7

    move-object/from16 v16, v5

    move-object/from16 v17, p6

    move-wide/from16 v18, p2

    invoke-direct/range {v10 .. v19}, Lcom/google/android/exoplayer2/source/hls/k;->l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;

    move-result-object v5

    move-object/from16 v10, p4

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p5

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    iget-boolean v10, v8, Lcom/google/android/exoplayer2/source/hls/k;->m:Z

    if-eqz v10, :cond_12

    if-eqz v9, :cond_12

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_f

    new-array v6, v2, [Lcom/google/android/exoplayer2/o1;

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v2, :cond_c

    aget-object v11, v7, v10

    invoke-static {v11}, Lcom/google/android/exoplayer2/source/hls/k;->o(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    move-result-object v11

    aput-object v11, v6, v10

    add-int/2addr v10, v1

    goto :goto_7

    :cond_c
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v3, :cond_e

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/o1;

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    const-string v3, ":audio"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v7, v7, v6

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/o1;

    invoke-static {v7, v10, v6}, Lcom/google/android/exoplayer2/source/hls/k;->m(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Z)Lcom/google/android/exoplayer2/o1;

    move-result-object v7

    new-array v10, v1, [Lcom/google/android/exoplayer2/o1;

    aput-object v7, v10, v6

    invoke-direct {v2, v3, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->k:Ljava/util/List;

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":cc:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/o1;

    new-array v10, v1, [Lcom/google/android/exoplayer2/o1;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-direct {v3, v2, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v1

    goto :goto_8

    :cond_f
    new-array v3, v2, [Lcom/google/android/exoplayer2/o1;

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v2, :cond_10

    aget-object v10, v7, v6

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/o1;

    invoke-static {v10, v11, v1}, Lcom/google/android/exoplayer2/source/hls/k;->m(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Z)Lcom/google/android/exoplayer2/o1;

    move-result-object v10

    aput-object v10, v3, v6

    add-int/2addr v6, v1

    goto :goto_9

    :cond_10
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v4, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    const-string v2, ":id3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string v4, "ID3"

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    const-string v4, "application/id3"

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v3

    new-array v1, v1, [Lcom/google/android/exoplayer2/o1;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-interface {v9, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v5, v1, v4, v0}, Lcom/google/android/exoplayer2/source/hls/p;->Q([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V

    :cond_12
    return-void
.end method

.method private k(J)V
    .locals 19

    move-object/from16 v10, p0

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->c()Lcom/google/android/exoplayer2/source/hls/playlist/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;

    iget-boolean v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/hls/k;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->g:Ljava/util/List;

    iget-object v14, v1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->h:Ljava/util/List;

    iput v11, v10, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-object v4, v15

    move-object v5, v8

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/k;->j(Lcom/google/android/exoplayer2/source/hls/playlist/e;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    move-object v4, v15

    move-object v5, v8

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/hls/k;->i(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->w:I

    move v9, v11

    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "subtitle:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->a:Landroid/net/Uri;

    new-array v3, v12, [Landroid/net/Uri;

    aput-object v0, v3, v11

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/o1;

    new-array v4, v12, [Lcom/google/android/exoplayer2/o1;

    aput-object v0, v4, v11

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object v11, v7

    move-object v7, v13

    move-object v12, v8

    move/from16 v18, v9

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/hls/k;->l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;

    move-result-object v0

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, v11, Lcom/google/android/exoplayer2/source/hls/playlist/e$a;->b:Lcom/google/android/exoplayer2/o1;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/google/android/exoplayer2/o1;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v17

    invoke-direct {v1, v2, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    new-array v2, v3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v1, v2, v5

    new-array v1, v5, [I

    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/exoplayer2/source/hls/p;->Q([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V

    add-int/lit8 v9, v18, 0x1

    move v11, v5

    move-object v8, v12

    move v12, v3

    goto :goto_2

    :cond_2
    move-object v12, v8

    move v5, v11

    new-array v0, v5, [Lcom/google/android/exoplayer2/source/hls/p;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/hls/p;

    iput-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    new-array v0, v5, [[I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->v:[[I

    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    iput v1, v10, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    aget-object v0, v0, v5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/p;->Z(Z)V

    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v2, v0

    :goto_3
    if-ge v11, v2, :cond_3

    aget-object v3, v0, v11

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->o()V

    add-int/2addr v11, v1

    goto :goto_3

    :cond_3
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    iput-object v0, v10, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    return-void
.end method

.method private l(Ljava/lang/String;I[Landroid/net/Uri;[Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Ljava/util/List;Ljava/util/Map;J)Lcom/google/android/exoplayer2/source/hls/p;
    .locals 18

    move-object/from16 v15, p0

    new-instance v10, Lcom/google/android/exoplayer2/source/hls/e;

    iget-object v1, v15, Lcom/google/android/exoplayer2/source/hls/k;->a:Lcom/google/android/exoplayer2/source/hls/g;

    iget-object v2, v15, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, v15, Lcom/google/android/exoplayer2/source/hls/k;->c:Lcom/google/android/exoplayer2/source/hls/f;

    iget-object v6, v15, Lcom/google/android/exoplayer2/source/hls/k;->d:Lcom/google/android/exoplayer2/upstream/k0;

    iget-object v7, v15, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    iget-object v9, v15, Lcom/google/android/exoplayer2/source/hls/k;->p:Le9/u1;

    move-object v0, v10

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/hls/e;-><init>(Lcom/google/android/exoplayer2/source/hls/g;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/source/hls/f;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/source/hls/q;Ljava/util/List;Le9/u1;)V

    new-instance v16, Lcom/google/android/exoplayer2/source/hls/p;

    iget-object v6, v15, Lcom/google/android/exoplayer2/source/hls/k;->i:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v11, v15, Lcom/google/android/exoplayer2/source/hls/k;->e:Lcom/google/android/exoplayer2/drm/u;

    iget-object v12, v15, Lcom/google/android/exoplayer2/source/hls/k;->f:Lcom/google/android/exoplayer2/drm/s$a;

    iget-object v13, v15, Lcom/google/android/exoplayer2/source/hls/k;->g:Lcom/google/android/exoplayer2/upstream/z;

    iget-object v14, v15, Lcom/google/android/exoplayer2/source/hls/k;->h:Lcom/google/android/exoplayer2/source/p$a;

    iget v9, v15, Lcom/google/android/exoplayer2/source/hls/k;->n:I

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p0

    move-object v4, v10

    move-object/from16 v5, p7

    move-wide/from16 v7, p8

    move/from16 v17, v9

    move-object/from16 v9, p5

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer2/source/hls/p;-><init>(Ljava/lang/String;ILcom/google/android/exoplayer2/source/hls/p$b;Lcom/google/android/exoplayer2/source/hls/e;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;I)V

    return-object v16
.end method

.method private static m(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/o1;Z)Lcom/google/android/exoplayer2/o1;
    .locals 10

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget v3, p1, Lcom/google/android/exoplayer2/o1;->y:I

    iget v4, p1, Lcom/google/android/exoplayer2/o1;->d:I

    iget v5, p1, Lcom/google/android/exoplayer2/o1;->e:I

    iget-object v6, p1, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz p2, :cond_1

    iget v3, p0, Lcom/google/android/exoplayer2/o1;->y:I

    iget v4, p0, Lcom/google/android/exoplayer2/o1;->d:I

    iget v5, p0, Lcom/google/android/exoplayer2/o1;->e:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v0

    move v5, v4

    move-object p1, v6

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/w;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_2

    iget v8, p0, Lcom/google/android/exoplayer2/o1;->f:I

    goto :goto_1

    :cond_2
    move v8, v0

    :goto_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->g:I

    :cond_3
    new-instance p2, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    iget-object v9, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-virtual {p2, v9}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/o1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/o1$b;->Z(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/o1$b;->g0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/o1$b;->c0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    return-object p0
.end method

.method private static n(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v4, v3, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v7, v6, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData;->merge(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static o(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->i:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/o1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/o1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->Z(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->q:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->r:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->s:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->P(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/o1;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->g0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/o1;->e:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/o1$b;->c0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->E()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/p;->a(JLcom/google/android/exoplayer2/c3;)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    aput v8, v4, v6

    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    invoke-interface {v7}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lt9/x;

    move-result-object v10

    invoke-virtual {v10, v7}, Lt9/x;->c(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_1

    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    array-length v6, v1

    new-array v7, v6, [Lt9/s;

    array-length v8, v1

    new-array v8, v8, [Lt9/s;

    array-length v9, v1

    new-array v14, v9, [Lcom/google/android/exoplayer2/trackselection/h;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v9, v9

    new-array v15, v9, [Lcom/google/android/exoplayer2/source/hls/p;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_4
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v9, v9

    if-ge v13, v9, :cond_10

    const/4 v9, 0x0

    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    aget-object v11, v9, v13

    move-object v9, v11

    move-object v10, v14

    move-object v5, v11

    move-object/from16 v11, p2

    move v2, v12

    move-object v12, v8

    move/from16 v18, v6

    move v6, v13

    move-object/from16 v13, p4

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-wide/from16 v14, p5

    move/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/exoplayer2/source/hls/p;->W([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJZ)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    array-length v12, v1

    const/4 v13, 0x1

    if-ge v10, v12, :cond_a

    aget-object v12, v8, v10

    aget v14, v4, v10

    if-ne v14, v6, :cond_7

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v12, v7, v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/k;->j:Ljava/util/IdentityHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    goto :goto_9

    :cond_7
    aget v14, v3, v10

    if-ne v14, v6, :cond_9

    if-nez v12, :cond_8

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    :goto_8
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    :cond_9
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v10, v20

    if-eqz v11, :cond_e

    aput-object v5, v10, v2

    add-int/lit8 v12, v2, 0x1

    if-nez v2, :cond_c

    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/source/hls/p;->Z(Z)V

    if-nez v9, :cond_b

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v9, v2

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    aget-object v2, v2, v9

    if-eq v5, v2, :cond_f

    :cond_b
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/q;->b()V

    move/from16 v17, v13

    goto :goto_b

    :cond_c
    iget v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->w:I

    if-ge v6, v2, :cond_d

    goto :goto_a

    :cond_d
    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v5, v13}, Lcom/google/android/exoplayer2/source/hls/p;->Z(Z)V

    goto :goto_b

    :cond_e
    move v12, v2

    :cond_f
    :goto_b
    add-int/lit8 v13, v6, 0x1

    move-object/from16 v2, p3

    move-object v15, v10

    move/from16 v6, v18

    move-object/from16 v14, v19

    goto/16 :goto_4

    :cond_10
    move-object v10, v15

    const/4 v5, 0x0

    invoke-static {v7, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v12}, Lcom/google/android/exoplayer2/util/p0;->G0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/source/hls/p;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/k;->l:Lt9/d;

    invoke-interface {v2, v1}, Lt9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    return-wide p5
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->O()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public continueLoading(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->s:Lt9/x;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/p;->o()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->d(Landroid/net/Uri;)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/p;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->m(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/hls/k;->k(J)V

    return-void
.end method

.method public f(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/p;->N(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/z$c;Z)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return v2
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/p;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/k;->p(Lcom/google/android/exoplayer2/source/hls/p;)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->s:Lt9/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt9/x;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 11

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->r:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lt9/x;

    move-result-object v5

    iget v5, v5, Lt9/x;->a:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lt9/x;

    move-result-object v7

    iget v7, v7, Lt9/x;->a:I

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lt9/x;

    move-result-object v10

    invoke-virtual {v10, v8}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lt9/x;

    invoke-direct {v1, v0}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/k;->s:Lt9/x;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public p(Lcom/google/android/exoplayer2/source/hls/p;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public q()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->b:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->k(Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->t:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/p;->S()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->q:Lcom/google/android/exoplayer2/source/n$a;

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->x:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/p;->V(JZ)Z

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/k;->u:[Lcom/google/android/exoplayer2/source/hls/p;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplayer2/source/hls/p;->V(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/k;->k:Lcom/google/android/exoplayer2/source/hls/q;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/q;->b()V

    :cond_1
    return-wide p1
.end method
