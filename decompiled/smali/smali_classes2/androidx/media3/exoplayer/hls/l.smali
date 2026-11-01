.class final Landroidx/media3/exoplayer/hls/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/l$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/hls/g;

.field private final b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final c:Landroidx/media3/exoplayer/hls/f;

.field private final d:Lw1/n;

.field private final e:Landroidx/media3/exoplayer/drm/t;

.field private final f:Landroidx/media3/exoplayer/drm/r$a;

.field private final g:Landroidx/media3/exoplayer/upstream/m;

.field private final h:Landroidx/media3/exoplayer/source/s$a;

.field private final i:Landroidx/media3/exoplayer/upstream/b;

.field private final j:Ljava/util/IdentityHashMap;

.field private final k:Landroidx/media3/exoplayer/hls/t;

.field private final l:Lg2/e;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Ly1/f4;

.field private final q:Landroidx/media3/exoplayer/hls/r$b;

.field private final r:J

.field private s:Landroidx/media3/exoplayer/source/q$a;

.field private t:I

.field private u:Lg2/z;

.field private v:[Landroidx/media3/exoplayer/hls/r;

.field private w:[Landroidx/media3/exoplayer/hls/r;

.field private x:[[I

.field private y:I

.field private z:Landroidx/media3/exoplayer/source/f0;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Landroidx/media3/exoplayer/hls/f;Lw1/n;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/upstream/b;Lg2/e;ZIZLy1/f4;J)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    move-object v1, p2

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-object v1, p3

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->c:Landroidx/media3/exoplayer/hls/f;

    move-object v1, p4

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->d:Lw1/n;

    move-object v1, p6

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->e:Landroidx/media3/exoplayer/drm/t;

    move-object v1, p7

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->f:Landroidx/media3/exoplayer/drm/r$a;

    move-object v1, p8

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->g:Landroidx/media3/exoplayer/upstream/m;

    move-object v1, p9

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->h:Landroidx/media3/exoplayer/source/s$a;

    move-object v1, p10

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->i:Landroidx/media3/exoplayer/upstream/b;

    move-object v1, p11

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->l:Lg2/e;

    move/from16 v2, p12

    iput-boolean v2, v0, Landroidx/media3/exoplayer/hls/l;->m:Z

    move/from16 v2, p13

    iput v2, v0, Landroidx/media3/exoplayer/hls/l;->n:I

    move/from16 v2, p14

    iput-boolean v2, v0, Landroidx/media3/exoplayer/hls/l;->o:Z

    move-object/from16 v2, p15

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->p:Ly1/f4;

    move-wide/from16 v2, p16

    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/l;->r:J

    new-instance v2, Landroidx/media3/exoplayer/hls/l$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/hls/l$b;-><init>(Landroidx/media3/exoplayer/hls/l;Landroidx/media3/exoplayer/hls/l$a;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->q:Landroidx/media3/exoplayer/hls/r$b;

    invoke-interface {p11}, Lg2/e;->b()Landroidx/media3/exoplayer/source/f0;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

    new-instance v1, Landroidx/media3/exoplayer/hls/t;

    invoke-direct {v1}, Landroidx/media3/exoplayer/hls/t;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/exoplayer/hls/r;

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    new-array v2, v1, [Landroidx/media3/exoplayer/hls/r;

    iput-object v2, v0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    new-array v1, v1, [[I

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->x:[[I

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/hls/r;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/hls/l;->t(Landroidx/media3/exoplayer/hls/r;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Landroidx/media3/exoplayer/hls/l;)I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/hls/l;->t:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/hls/l;->t:I

    return v0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/hls/l;)[Landroidx/media3/exoplayer/hls/r;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    return-object p0
.end method

.method static synthetic j(Landroidx/media3/exoplayer/hls/l;Lg2/z;)Lg2/z;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/l;->u:Lg2/z;

    return-object p1
.end method

.method static synthetic k(Landroidx/media3/exoplayer/hls/l;)Landroidx/media3/exoplayer/source/q$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    return-object p0
.end method

.method static synthetic l(Landroidx/media3/exoplayer/hls/l;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    return-object p0
.end method

.method private m(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
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

    if-ge v7, v8, :cond_5

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/hls/playlist/d$a;

    iget-object v8, v8, Landroidx/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v13, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    goto/16 :goto_3

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

    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/d$a;

    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/d$a;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->a:Landroid/net/Uri;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->b:Landroidx/media3/common/r;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v11, Landroidx/media3/exoplayer/hls/playlist/d$a;->b:Landroidx/media3/common/r;

    iget-object v11, v11, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v11, v1}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

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
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Landroid/net/Uri;

    invoke-static {v9}, Landroidx/media3/common/util/a1;->j([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, [Landroid/net/Uri;

    new-array v9, v6, [Landroidx/media3/common/r;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, [Landroidx/media3/common/r;

    const/16 v17, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    const/4 v14, 0x1

    move-object/from16 v12, p0

    move-object v13, v8

    move-object/from16 v19, p6

    move-wide/from16 v20, p1

    invoke-direct/range {v12 .. v21}, Landroidx/media3/exoplayer/hls/l;->p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;

    move-result-object v9

    invoke-static {v4}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object v11

    move-object/from16 v12, p5

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p4

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p0

    iget-boolean v14, v13, Landroidx/media3/exoplayer/hls/l;->m:Z

    if-eqz v14, :cond_4

    if-eqz v10, :cond_4

    new-array v10, v6, [Landroidx/media3/common/r;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroidx/media3/common/r;

    new-instance v14, Landroidx/media3/common/f0;

    invoke-direct {v14, v8, v10}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    new-array v8, v1, [Landroidx/media3/common/f0;

    aput-object v14, v8, v6

    new-array v10, v6, [I

    invoke-virtual {v9, v8, v6, v10}, Landroidx/media3/exoplayer/hls/r;->V([Landroidx/media3/common/f0;I[I)V

    :cond_4
    :goto_3
    add-int/2addr v7, v1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v13, p0

    return-void
.end method

.method private n(Landroidx/media3/exoplayer/hls/playlist/d;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const/4 v12, 0x1

    iget-object v0, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v13, 0x0

    move v2, v13

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v2, v5, :cond_3

    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    iget v7, v5, Landroidx/media3/common/r;->w:I

    if-gtz v7, :cond_2

    iget-object v7, v5, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v7, v6}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v5, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v5, v12}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    aput v12, v1, v2

    add-int/2addr v4, v12

    goto :goto_2

    :cond_1
    const/4 v5, -0x1

    aput v5, v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    aput v6, v1, v2

    add-int/2addr v3, v12

    :goto_2
    add-int/2addr v2, v12

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    move v14, v3

    move v0, v12

    move v2, v13

    goto :goto_3

    :cond_4
    if-ge v4, v0, :cond_5

    sub-int/2addr v0, v4

    move v14, v0

    move v2, v12

    move v0, v13

    goto :goto_3

    :cond_5
    move v14, v0

    move v0, v13

    move v2, v0

    :goto_3
    new-array v3, v14, [Landroid/net/Uri;

    new-array v15, v14, [Landroidx/media3/common/r;

    new-array v8, v14, [I

    move v4, v13

    move v5, v4

    :goto_4
    iget-object v7, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    if-eqz v0, :cond_6

    aget v7, v1, v4

    if-ne v7, v6, :cond_8

    :cond_6
    if-eqz v2, :cond_7

    aget v7, v1, v4

    if-eq v7, v12, :cond_8

    :cond_7
    iget-object v7, v11, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v9, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    aput-object v9, v3, v5

    iget-object v7, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    aput-object v7, v15, v5

    add-int/lit8 v7, v5, 0x1

    aput v4, v8, v5

    move v5, v7

    :cond_8
    add-int/2addr v4, v12

    goto :goto_4

    :cond_9
    aget-object v1, v15, v13

    iget-object v1, v1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v1, v6}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v1, v12}, Landroidx/media3/common/util/a1;->R(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v12, :cond_a

    if-nez v7, :cond_b

    iget-object v1, v11, Landroidx/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    if-gt v9, v12, :cond_b

    add-int v1, v7, v9

    if-lez v1, :cond_b

    move/from16 v16, v12

    goto :goto_5

    :cond_b
    move/from16 v16, v13

    :goto_5
    if-nez v0, :cond_c

    if-lez v7, :cond_c

    move v2, v12

    goto :goto_6

    :cond_c
    move v2, v13

    :goto_6
    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    iget-object v6, v11, Landroidx/media3/exoplayer/hls/playlist/d;->k:Ljava/util/List;

    const-string v4, "main"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v13, v4

    move-object v4, v15

    move/from16 v17, v7

    move-object/from16 v7, p6

    move-object v12, v8

    move/from16 v18, v9

    move-wide/from16 v8, p2

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/l;->p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p5

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v10, Landroidx/media3/exoplayer/hls/l;->m:Z

    if-eqz v1, :cond_13

    if-eqz v16, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v18, :cond_11

    new-array v2, v14, [Landroidx/media3/common/r;

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v14, :cond_d

    aget-object v4, v15, v3

    invoke-static {v4}, Landroidx/media3/exoplayer/hls/l;->s(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_7

    :cond_d
    new-instance v3, Landroidx/media3/common/f0;

    invoke-direct {v3, v13, v2}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v17, :cond_f

    iget-object v2, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    if-nez v2, :cond_e

    iget-object v2, v11, Landroidx/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    new-instance v2, Landroidx/media3/common/f0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":audio"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v15, v4

    iget-object v6, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    invoke-static {v5, v6, v4}, Landroidx/media3/exoplayer/hls/l;->q(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Landroidx/media3/common/r;

    aput-object v5, v7, v4

    invoke-direct {v2, v3, v7}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v2, v11, Landroidx/media3/exoplayer/hls/playlist/d;->k:Ljava/util/List;

    if-eqz v2, :cond_10

    const/4 v4, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":cc:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroidx/media3/common/f0;

    iget-object v6, v10, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/r;

    invoke-interface {v6, v7}, Landroidx/media3/exoplayer/hls/g;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Landroidx/media3/common/r;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-direct {v5, v3, v8}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v7

    goto :goto_8

    :cond_10
    const/4 v7, 0x1

    goto :goto_a

    :cond_11
    const/4 v7, 0x1

    new-array v2, v14, [Landroidx/media3/common/r;

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v14, :cond_12

    aget-object v3, v15, v4

    iget-object v5, v11, Landroidx/media3/exoplayer/hls/playlist/d;->j:Landroidx/media3/common/r;

    invoke-static {v3, v5, v7}, Landroidx/media3/exoplayer/hls/l;->q(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;

    move-result-object v3

    aput-object v3, v2, v4

    add-int/2addr v4, v7

    goto :goto_9

    :cond_12
    new-instance v3, Landroidx/media3/common/f0;

    invoke-direct {v3, v13, v2}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    new-instance v2, Landroidx/media3/common/f0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":id3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/r$b;

    invoke-direct {v4}, Landroidx/media3/common/r$b;-><init>()V

    const-string v5, "ID3"

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    const-string v5, "application/id3"

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Landroidx/media3/common/r;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-direct {v2, v3, v5}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v3, v6, [Landroidx/media3/common/f0;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/common/f0;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v3, v6, v1}, Landroidx/media3/exoplayer/hls/r;->V([Landroidx/media3/common/f0;I[I)V

    :cond_13
    return-void
.end method

.method private o(J)V
    .locals 19

    move-object/from16 v10, p0

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c()Landroidx/media3/exoplayer/hls/playlist/d;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/d;

    iget-boolean v0, v10, Landroidx/media3/exoplayer/hls/l;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/d;->m:Ljava/util/List;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/l;->r(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    move-object v13, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v7, v1, Landroidx/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    iget-object v14, v1, Landroidx/media3/exoplayer/hls/playlist/d;->h:Ljava/util/List;

    iput v11, v10, Landroidx/media3/exoplayer/hls/l;->t:I

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

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/l;->n(Landroidx/media3/exoplayer/hls/playlist/d;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    move-object v4, v15

    move-object v5, v8

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/l;->m(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v10, Landroidx/media3/exoplayer/hls/l;->y:I

    move v9, v11

    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/d$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subtitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/playlist/d$a;->b:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d$a;->a:Landroid/net/Uri;

    new-array v3, v12, [Landroid/net/Uri;

    aput-object v0, v3, v11

    new-array v4, v12, [Landroidx/media3/common/r;

    aput-object v6, v4, v11

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v11, v6

    move-object/from16 v6, v16

    move-object/from16 v17, v7

    move-object v7, v13

    move-object v12, v8

    move/from16 v18, v9

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/hls/l;->p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;

    move-result-object v0

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/media3/common/f0;

    iget-object v2, v10, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    invoke-interface {v2, v11}, Landroidx/media3/exoplayer/hls/g;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroidx/media3/common/r;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v2, v17

    invoke-direct {v1, v2, v4}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    new-array v2, v3, [Landroidx/media3/common/f0;

    aput-object v1, v2, v5

    new-array v1, v5, [I

    invoke-virtual {v0, v2, v5, v1}, Landroidx/media3/exoplayer/hls/r;->V([Landroidx/media3/common/f0;I[I)V

    add-int/lit8 v9, v18, 0x1

    move v11, v5

    move-object v8, v12

    move v12, v3

    goto :goto_2

    :cond_2
    move-object v12, v8

    move v5, v11

    new-array v0, v5, [Landroidx/media3/exoplayer/hls/r;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/exoplayer/hls/r;

    iput-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    new-array v0, v5, [[I

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v10, Landroidx/media3/exoplayer/hls/l;->x:[[I

    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v0, v0

    iput v0, v10, Landroidx/media3/exoplayer/hls/l;->t:I

    move v0, v5

    :goto_3
    iget v1, v10, Landroidx/media3/exoplayer/hls/l;->y:I

    if-ge v0, v1, :cond_3

    iget-object v1, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/r;->e0(Z)V

    add-int/2addr v0, v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    move v11, v5

    :goto_4
    if-ge v11, v1, :cond_4

    aget-object v3, v0, v11

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->r()V

    add-int/2addr v11, v2

    goto :goto_4

    :cond_4
    iget-object v0, v10, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    iput-object v0, v10, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    return-void
.end method

.method private p(Ljava/lang/String;I[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/common/r;Ljava/util/List;Ljava/util/Map;J)Landroidx/media3/exoplayer/hls/r;
    .locals 18

    move-object/from16 v0, p0

    new-instance v14, Landroidx/media3/exoplayer/hls/e;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->a:Landroidx/media3/exoplayer/hls/g;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/l;->c:Landroidx/media3/exoplayer/hls/f;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/l;->d:Lw1/n;

    iget-object v8, v0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/l;->r:J

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/l;->p:Ly1/f4;

    const/4 v13, 0x0

    move-object v1, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/hls/e;-><init>(Landroidx/media3/exoplayer/hls/g;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media3/common/r;Landroidx/media3/exoplayer/hls/f;Lw1/n;Landroidx/media3/exoplayer/hls/t;JLjava/util/List;Ly1/f4;Landroidx/media3/exoplayer/upstream/f;)V

    new-instance v16, Landroidx/media3/exoplayer/hls/r;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/l;->q:Landroidx/media3/exoplayer/hls/r$b;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/l;->i:Landroidx/media3/exoplayer/upstream/b;

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/l;->e:Landroidx/media3/exoplayer/drm/t;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/l;->f:Landroidx/media3/exoplayer/drm/r$a;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/l;->g:Landroidx/media3/exoplayer/upstream/m;

    iget-object v15, v0, Landroidx/media3/exoplayer/hls/l;->h:Landroidx/media3/exoplayer/source/s$a;

    iget v10, v0, Landroidx/media3/exoplayer/hls/l;->n:I

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v5, v14

    move-object/from16 v6, p7

    move-wide/from16 v8, p8

    move/from16 v17, v10

    move-object/from16 v10, p5

    move-object v14, v15

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/hls/r;-><init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/r$b;Landroidx/media3/exoplayer/hls/e;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/b;JLandroidx/media3/common/r;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;I)V

    return-object v16
.end method

.method private static q(Landroidx/media3/common/r;Landroidx/media3/common/r;Z)Landroidx/media3/common/r;
    .locals 12

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    iget v3, p1, Landroidx/media3/common/r;->E:I

    iget v4, p1, Landroidx/media3/common/r;->e:I

    iget v5, p1, Landroidx/media3/common/r;->f:I

    iget-object v6, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    iget-object v7, p1, Landroidx/media3/common/r;->b:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/r;->c:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    if-eqz p2, :cond_1

    iget v3, p0, Landroidx/media3/common/r;->E:I

    iget v4, p0, Landroidx/media3/common/r;->e:I

    iget v5, p0, Landroidx/media3/common/r;->f:I

    iget-object v6, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    iget-object v0, p0, Landroidx/media3/common/r;->c:Ljava/util/List;

    :goto_0
    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v1

    move v5, v4

    move-object v7, v6

    goto :goto_0

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_2

    iget v9, p0, Landroidx/media3/common/r;->h:I

    goto :goto_2

    :cond_2
    move v9, v1

    :goto_2
    if-eqz p2, :cond_3

    iget v1, p0, Landroidx/media3/common/r;->i:I

    :cond_3
    new-instance p2, Landroidx/media3/common/r$b;

    invoke-direct {p2}, Landroidx/media3/common/r$b;-><init>()V

    iget-object v10, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    invoke-virtual {p2, v10}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/common/r;->n:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    return-object p0
.end method

.method private static r(Ljava/util/List;)Ljava/util/Map;
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

    check-cast v3, Landroidx/media3/common/DrmInitData;

    iget-object v4, v3, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/DrmInitData;

    iget-object v7, v6, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6}, Landroidx/media3/common/DrmInitData;->merge(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

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

.method private static s(Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/r$b;

    invoke-direct {v2}, Landroidx/media3/common/r$b;-><init>()V

    iget-object v3, p0, Landroidx/media3/common/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/r;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->i0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/r;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/r;->h:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/r;->i:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/r;->v:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/r;->w:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/r;->x:F

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/r;->e:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/r;->f:I

    invoke-virtual {v0, p0}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic t(Landroidx/media3/exoplayer/hls/r;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/r;->getTrackGroups()Lg2/z;

    move-result-object p0

    invoke-virtual {p0}, Lg2/z;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->u:Lg2/z;

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->r()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/f0;->a(Landroidx/media3/exoplayer/v2;)Z

    move-result p1

    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->H()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/r;->b(JLandroidx/media3/exoplayer/c4;)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide p1
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->T()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    return-void
.end method

.method public d(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2, p3}, Landroidx/media3/exoplayer/hls/r;->S(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/exoplayer/hls/r;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e([Lj2/z;[Z[Lg2/u;[ZJ)J
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
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

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

    invoke-interface {v7}, Lj2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    move-result-object v7

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroidx/media3/exoplayer/hls/r;->getTrackGroups()Lg2/z;

    move-result-object v10

    invoke-virtual {v10, v7}, Lg2/z;->d(Landroidx/media3/common/f0;)I

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
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    array-length v6, v1

    new-array v7, v6, [Lg2/u;

    array-length v8, v1

    new-array v8, v8, [Lg2/u;

    array-length v9, v1

    new-array v14, v9, [Lj2/z;

    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v9, v9

    new-array v15, v9, [Landroidx/media3/exoplayer/hls/r;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_4
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

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

    invoke-virtual/range {v9 .. v16}, Landroidx/media3/exoplayer/hls/r;->b0([Lj2/z;[Z[Lg2/u;[ZJZ)Z

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

    invoke-static {v12}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v12, v7, v10

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/l;->j:Ljava/util/IdentityHashMap;

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
    invoke-static {v13}, Landroidx/media3/common/util/a;->g(Z)V

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

    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/hls/r;->e0(Z)V

    if-nez v9, :cond_b

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    array-length v9, v2

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    aget-object v2, v2, v9

    if-eq v5, v2, :cond_f

    :cond_b
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/hls/t;->b()V

    move/from16 v17, v13

    goto :goto_b

    :cond_c
    iget v2, v0, Landroidx/media3/exoplayer/hls/l;->y:I

    if-ge v6, v2, :cond_d

    goto :goto_a

    :cond_d
    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/hls/r;->e0(Z)V

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

    invoke-static {v10, v12}, Landroidx/media3/common/util/a1;->X0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/hls/r;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/l;->l:Lg2/e;

    new-instance v3, Landroidx/media3/exoplayer/hls/k;

    invoke-direct {v3}, Landroidx/media3/exoplayer/hls/k;-><init>()V

    invoke-static {v1, v3}, Lcom/google/common/collect/Lists;->o(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lg2/e;->a(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/f0;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    return-wide p5
.end method

.method public g(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->n(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V

    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/hls/l;->o(J)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lg2/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->u:Lg2/z;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/z;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->z:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/r;->a0(JZ)Z

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/l;->w:[Landroidx/media3/exoplayer/hls/r;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Landroidx/media3/exoplayer/hls/r;->a0(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->k:Landroidx/media3/exoplayer/hls/t;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/t;->b()V

    :cond_1
    return-wide p1
.end method

.method public u()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->b:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->m(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/l;->v:[Landroidx/media3/exoplayer/hls/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/r;->X()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/l;->s:Landroidx/media3/exoplayer/source/q$a;

    return-void
.end method
