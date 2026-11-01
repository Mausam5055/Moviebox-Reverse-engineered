.class final Landroidx/media3/exoplayer/b2;
.super Landroidx/media3/common/g;

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/b2$c;,
        Landroidx/media3/exoplayer/b2$d;,
        Landroidx/media3/exoplayer/b2$b;,
        Landroidx/media3/exoplayer/b2$e;
    }
.end annotation


# instance fields
.field private final A:Landroidx/media3/exoplayer/b2$d;

.field private final B:Landroidx/media3/exoplayer/e;

.field private final C:Landroidx/media3/exoplayer/k4;

.field private final D:Landroidx/media3/exoplayer/p4;

.field private final E:Landroidx/media3/exoplayer/s4;

.field private final F:J

.field private final G:Landroidx/media3/exoplayer/m4;

.field private final H:Landroidx/media3/common/util/g;

.field private I:I

.field private J:Z

.field private K:I

.field private L:I

.field private M:Z

.field private N:Landroidx/media3/exoplayer/c4;

.field private O:Lg2/v;

.field private P:Landroidx/media3/exoplayer/ExoPlayer$c;

.field private Q:Z

.field private R:Landroidx/media3/common/a0$b;

.field private S:Landroidx/media3/common/v;

.field private T:Landroidx/media3/common/v;

.field private U:Landroidx/media3/common/r;

.field private V:Landroidx/media3/common/r;

.field private W:Ljava/lang/Object;

.field private X:Landroid/view/Surface;

.field private Y:Landroid/view/SurfaceHolder;

.field private Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field private a0:Z

.field final b:Lj2/f0;

.field private b0:Landroid/view/TextureView;

.field final c:Landroidx/media3/common/a0$b;

.field private c0:I

.field private final d:Landroidx/media3/common/util/l;

.field private d0:I

.field private final e:Landroid/content/Context;

.field private e0:Landroidx/media3/common/util/l0;

.field private final f:Landroidx/media3/common/a0;

.field private f0:Landroidx/media3/exoplayer/j;

.field private final g:[Landroidx/media3/exoplayer/w3;

.field private g0:Landroidx/media3/exoplayer/j;

.field private final h:[Landroidx/media3/exoplayer/w3;

.field private h0:Landroidx/media3/common/c;

.field private final i:Lj2/e0;

.field private i0:F

.field private final j:Landroidx/media3/common/util/p;

.field private j0:Z

.field private final k:Landroidx/media3/exoplayer/r2$f;

.field private k0:Lu1/b;

.field private final l:Landroidx/media3/exoplayer/r2;

.field private l0:Z

.field private final m:Landroidx/media3/common/util/t;

.field private m0:Z

.field private final n:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private n0:I

.field private final o:Landroidx/media3/common/e0$b;

.field private o0:Landroidx/media3/common/PriorityTaskManager;

.field private final p:Ljava/util/List;

.field private p0:Z

.field private final q:Z

.field private q0:Z

.field private final r:Landroidx/media3/exoplayer/source/r$a;

.field private r0:Landroidx/media3/common/m;

.field private final s:Ly1/a;

.field private s0:Landroidx/media3/common/m0;

.field private final t:Landroid/os/Looper;

.field private t0:Landroidx/media3/common/v;

.field private final u:Landroidx/media3/exoplayer/upstream/e;

.field private u0:Landroidx/media3/exoplayer/r3;

.field private final v:J

.field private v0:I

.field private final w:J

.field private w0:I

.field private final x:J

.field private x0:J

.field private final y:Landroidx/media3/common/util/i;

.field private final z:Landroidx/media3/exoplayer/b2$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$b;Landroidx/media3/common/a0;)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x14

    const/4 v7, 0x1

    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/g;-><init>()V

    new-instance v8, Landroidx/media3/common/util/l;

    invoke-direct {v8}, Landroidx/media3/common/util/l;-><init>()V

    iput-object v8, v1, Landroidx/media3/exoplayer/b2;->d:Landroidx/media3/common/util/l;

    :try_start_0
    const-string v8, "ExoPlayerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Init "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "AndroidXMedia3/1.7.1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroidx/media3/common/util/a1;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v1, Landroidx/media3/exoplayer/b2;->e:Landroid/content/Context;

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->i:Lcom/google/common/base/f;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->b:Landroidx/media3/common/util/i;

    invoke-interface {v8, v9}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly1/a;

    iput-object v8, v1, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    iget v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->k:I

    iput v8, v1, Landroidx/media3/exoplayer/b2;->n0:I

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->l:Landroidx/media3/common/PriorityTaskManager;

    iput-object v8, v1, Landroidx/media3/exoplayer/b2;->o0:Landroidx/media3/common/PriorityTaskManager;

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->m:Landroidx/media3/common/c;

    iput-object v8, v1, Landroidx/media3/exoplayer/b2;->h0:Landroidx/media3/common/c;

    iget v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->s:I

    iput v8, v1, Landroidx/media3/exoplayer/b2;->c0:I

    iget v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->t:I

    iput v8, v1, Landroidx/media3/exoplayer/b2;->d0:I

    iget-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->q:Z

    iput-boolean v8, v1, Landroidx/media3/exoplayer/b2;->j0:Z

    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->B:J

    iput-wide v8, v1, Landroidx/media3/exoplayer/b2;->F:J

    new-instance v15, Landroidx/media3/exoplayer/b2$c;

    const/4 v8, 0x0

    invoke-direct {v15, v1, v8}, Landroidx/media3/exoplayer/b2$c;-><init>(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/b2$a;)V

    iput-object v15, v1, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    new-instance v9, Landroidx/media3/exoplayer/b2$d;

    invoke-direct {v9, v8}, Landroidx/media3/exoplayer/b2$d;-><init>(Landroidx/media3/exoplayer/b2$a;)V

    iput-object v9, v1, Landroidx/media3/exoplayer/b2;->A:Landroidx/media3/exoplayer/b2$d;

    new-instance v9, Landroid/os/Handler;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->d:Lcom/google/common/base/q;

    invoke-interface {v10}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v23, v10

    check-cast v23, Landroidx/media3/exoplayer/b4;

    move-object/from16 v10, v23

    move-object v11, v9

    move-object v12, v15

    move-object v13, v15

    move-object v14, v15

    invoke-interface/range {v10 .. v15}, Landroidx/media3/exoplayer/b4;->a(Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;Landroidx/media3/exoplayer/audio/x;Li2/h;Le2/b;)[Landroidx/media3/exoplayer/w3;

    move-result-object v10

    iput-object v10, v1, Landroidx/media3/exoplayer/b2;->g:[Landroidx/media3/exoplayer/w3;

    array-length v11, v10

    const/4 v12, 0x0

    if-lez v11, :cond_0

    move v11, v7

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    invoke-static {v11}, Landroidx/media3/common/util/a;->g(Z)V

    array-length v10, v10

    new-array v10, v10, [Landroidx/media3/exoplayer/w3;

    iput-object v10, v1, Landroidx/media3/exoplayer/b2;->h:[Landroidx/media3/exoplayer/w3;

    move v10, v12

    :goto_1
    iget-object v11, v1, Landroidx/media3/exoplayer/b2;->h:[Landroidx/media3/exoplayer/w3;

    array-length v13, v11

    if-ge v10, v13, :cond_1

    iget-object v13, v1, Landroidx/media3/exoplayer/b2;->g:[Landroidx/media3/exoplayer/w3;

    aget-object v17, v13, v10

    iget-object v13, v1, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    move-object/from16 v16, v23

    move-object/from16 v18, v9

    move-object/from16 v19, v13

    move-object/from16 v20, v13

    move-object/from16 v21, v13

    move-object/from16 v22, v13

    invoke-interface/range {v16 .. v22}, Landroidx/media3/exoplayer/b4;->b(Landroidx/media3/exoplayer/w3;Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;Landroidx/media3/exoplayer/audio/x;Li2/h;Le2/b;)Landroidx/media3/exoplayer/w3;

    move-result-object v13

    aput-object v13, v11, v10

    add-int/2addr v10, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->f:Lcom/google/common/base/q;

    invoke-interface {v9}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj2/e0;

    iput-object v9, v1, Landroidx/media3/exoplayer/b2;->i:Lj2/e0;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->e:Lcom/google/common/base/q;

    invoke-interface {v10}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/source/r$a;

    iput-object v10, v1, Landroidx/media3/exoplayer/b2;->r:Landroidx/media3/exoplayer/source/r$a;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->h:Lcom/google/common/base/q;

    invoke-interface {v10}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/upstream/e;

    iput-object v10, v1, Landroidx/media3/exoplayer/b2;->u:Landroidx/media3/exoplayer/upstream/e;

    iget-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->u:Z

    iput-boolean v11, v1, Landroidx/media3/exoplayer/b2;->q:Z

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->v:Landroidx/media3/exoplayer/c4;

    iput-object v11, v1, Landroidx/media3/exoplayer/b2;->N:Landroidx/media3/exoplayer/c4;

    iget-wide v13, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->w:J

    iput-wide v13, v1, Landroidx/media3/exoplayer/b2;->v:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->x:J

    iput-wide v13, v1, Landroidx/media3/exoplayer/b2;->w:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->y:J

    iput-wide v13, v1, Landroidx/media3/exoplayer/b2;->x:J

    iget-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->C:Z

    iput-boolean v11, v1, Landroidx/media3/exoplayer/b2;->Q:Z

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    iput-object v11, v1, Landroidx/media3/exoplayer/b2;->t:Landroid/os/Looper;

    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->b:Landroidx/media3/common/util/i;

    iput-object v15, v1, Landroidx/media3/exoplayer/b2;->y:Landroidx/media3/common/util/i;

    if-nez p2, :cond_2

    move-object v13, v1

    goto :goto_2

    :cond_2
    move-object/from16 v13, p2

    :goto_2
    iput-object v13, v1, Landroidx/media3/exoplayer/b2;->f:Landroidx/media3/common/a0;

    new-instance v14, Landroidx/media3/common/util/t;

    new-instance v4, Landroidx/media3/exoplayer/j1;

    invoke-direct {v4, v1}, Landroidx/media3/exoplayer/j1;-><init>(Landroidx/media3/exoplayer/b2;)V

    invoke-direct {v14, v11, v15, v4}, Landroidx/media3/common/util/t;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/t$b;)V

    iput-object v14, v1, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    new-instance v4, Lg2/v$a;

    invoke-direct {v4, v12}, Lg2/v$a;-><init>(I)V

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    sget-object v4, Landroidx/media3/exoplayer/ExoPlayer$c;->b:Landroidx/media3/exoplayer/ExoPlayer$c;

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->P:Landroidx/media3/exoplayer/ExoPlayer$c;

    new-instance v4, Lj2/f0;

    iget-object v14, v1, Landroidx/media3/exoplayer/b2;->g:[Landroidx/media3/exoplayer/w3;

    array-length v5, v14

    new-array v5, v5, [Landroidx/media3/exoplayer/z3;

    array-length v14, v14

    new-array v14, v14, [Lj2/z;

    sget-object v6, Landroidx/media3/common/i0;->b:Landroidx/media3/common/i0;

    invoke-direct {v4, v5, v14, v6, v8}, Lj2/f0;-><init>([Landroidx/media3/exoplayer/z3;[Lj2/z;Landroidx/media3/common/i0;Ljava/lang/Object;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->b:Lj2/f0;

    new-instance v5, Landroidx/media3/common/e0$b;

    invoke-direct {v5}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object v5, v1, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    new-instance v5, Landroidx/media3/common/a0$b$a;

    invoke-direct {v5}, Landroidx/media3/common/a0$b$a;-><init>()V

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v5, v2}, Landroidx/media3/common/a0$b$a;->c([I)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    invoke-virtual {v9}, Lj2/e0;->h()Z

    move-result v5

    const/16 v6, 0x1d

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/a0$b$a;->d(IZ)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->r:Z

    const/16 v6, 0x17

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/a0$b$a;->d(IZ)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->r:Z

    const/16 v6, 0x19

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/a0$b$a;->d(IZ)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->r:Z

    const/16 v6, 0x21

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/a0$b$a;->d(IZ)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->r:Z

    const/16 v6, 0x1a

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/a0$b$a;->d(IZ)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->r:Z

    const/16 v6, 0x22

    invoke-virtual {v2, v6, v5}, Landroidx/media3/common/a0$b$a;->d(IZ)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/a0$b$a;->e()Landroidx/media3/common/a0$b;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/b2;->c:Landroidx/media3/common/a0$b;

    new-instance v5, Landroidx/media3/common/a0$b$a;

    invoke-direct {v5}, Landroidx/media3/common/a0$b$a;-><init>()V

    invoke-virtual {v5, v2}, Landroidx/media3/common/a0$b$a;->b(Landroidx/media3/common/a0$b;)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroidx/media3/common/a0$b$a;->a(I)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroidx/media3/common/a0$b$a;->a(I)Landroidx/media3/common/a0$b$a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/a0$b$a;->e()Landroidx/media3/common/a0$b;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/b2;->R:Landroidx/media3/common/a0$b;

    invoke-interface {v15, v11, v8}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/b2;->j:Landroidx/media3/common/util/p;

    new-instance v2, Landroidx/media3/exoplayer/l1;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/l1;-><init>(Landroidx/media3/exoplayer/b2;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/b2;->k:Landroidx/media3/exoplayer/r2$f;

    invoke-static {v4}, Landroidx/media3/exoplayer/r3;->k(Lj2/f0;)Landroidx/media3/exoplayer/r3;

    move-result-object v6

    iput-object v6, v1, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v6, v1, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    invoke-interface {v6, v13, v11}, Ly1/a;->H(Landroidx/media3/common/a0;Landroid/os/Looper;)V

    new-instance v6, Ly1/f4;

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->H:Ljava/lang/String;

    invoke-direct {v6, v13}, Ly1/f4;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroidx/media3/exoplayer/r2;

    iget-object v13, v1, Landroidx/media3/exoplayer/b2;->e:Landroid/content/Context;

    iget-object v5, v1, Landroidx/media3/exoplayer/b2;->g:[Landroidx/media3/exoplayer/w3;

    iget-object v8, v1, Landroidx/media3/exoplayer/b2;->h:[Landroidx/media3/exoplayer/w3;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->g:Lcom/google/common/base/q;

    invoke-interface {v3}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/media3/exoplayer/u2;

    iget v3, v1, Landroidx/media3/exoplayer/b2;->I:I

    iget-boolean v7, v1, Landroidx/media3/exoplayer/b2;->J:Z

    iget-object v12, v1, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    move-object/from16 v36, v6

    iget-object v6, v1, Landroidx/media3/exoplayer/b2;->N:Landroidx/media3/exoplayer/c4;

    move-object/from16 v32, v2

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->z:Landroidx/media3/exoplayer/t2;

    move-object/from16 v37, v11

    move-object/from16 v23, v12

    iget-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->A:J

    move-wide/from16 v26, v11

    iget-boolean v11, v1, Landroidx/media3/exoplayer/b2;->Q:Z

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->I:Z

    move/from16 v29, v12

    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayer$b;->E:Landroidx/media3/exoplayer/s3;

    iget-object v0, v1, Landroidx/media3/exoplayer/b2;->P:Landroidx/media3/exoplayer/ExoPlayer$c;

    move-object/from16 v16, v13

    move-object v13, v14

    move-object/from16 v38, v14

    move-object/from16 v14, v16

    move-object/from16 v39, v15

    move-object v15, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    move-object/from16 v20, v10

    move/from16 v21, v3

    move/from16 v22, v7

    move-object/from16 v24, v6

    move-object/from16 v25, v2

    move/from16 v28, v11

    move-object/from16 v30, v37

    move-object/from16 v31, v39

    move-object/from16 v33, v36

    move-object/from16 v34, v12

    move-object/from16 v35, v0

    invoke-direct/range {v13 .. v35}, Landroidx/media3/exoplayer/r2;-><init>(Landroid/content/Context;[Landroidx/media3/exoplayer/w3;[Landroidx/media3/exoplayer/w3;Lj2/e0;Lj2/f0;Landroidx/media3/exoplayer/u2;Landroidx/media3/exoplayer/upstream/e;IZLy1/a;Landroidx/media3/exoplayer/c4;Landroidx/media3/exoplayer/t2;JZZLandroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/exoplayer/r2$f;Ly1/f4;Landroidx/media3/exoplayer/s3;Landroidx/media3/exoplayer/ExoPlayer$c;)V

    move-object/from16 v0, v38

    iput-object v0, v1, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/r2;->K()Landroid/os/Looper;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroidx/media3/exoplayer/b2;->i0:F

    const/4 v3, 0x0

    iput v3, v1, Landroidx/media3/exoplayer/b2;->I:I

    sget-object v3, Landroidx/media3/common/v;->I:Landroidx/media3/common/v;

    iput-object v3, v1, Landroidx/media3/exoplayer/b2;->S:Landroidx/media3/common/v;

    iput-object v3, v1, Landroidx/media3/exoplayer/b2;->T:Landroidx/media3/common/v;

    iput-object v3, v1, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/media3/exoplayer/b2;->v0:I

    sget-object v3, Lu1/b;->c:Lu1/b;

    iput-object v3, v1, Landroidx/media3/exoplayer/b2;->k0:Lu1/b;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/media3/exoplayer/b2;->l0:Z

    iget-object v3, v1, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/b2;->M(Landroidx/media3/common/a0$d;)V

    new-instance v3, Landroid/os/Handler;

    move-object/from16 v4, v37

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v1, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    invoke-interface {v10, v3, v5}, Landroidx/media3/exoplayer/upstream/e;->d(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/e$a;)V

    iget-object v3, v1, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/b2;->n1(Landroidx/media3/exoplayer/ExoPlayer$a;)V

    move-object/from16 v3, p1

    iget-wide v5, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->c:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    invoke-virtual {v0, v5, v6}, Landroidx/media3/exoplayer/r2;->E(J)V

    :cond_3
    sget v5, Landroidx/media3/common/util/a1;->a:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_4

    iget-object v5, v1, Landroidx/media3/exoplayer/b2;->e:Landroid/content/Context;

    iget-boolean v6, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->D:Z

    move-object/from16 v7, v36

    invoke-static {v5, v1, v6, v7}, Landroidx/media3/exoplayer/b2$b;->c(Landroid/content/Context;Landroidx/media3/exoplayer/b2;ZLy1/f4;)V

    :cond_4
    new-instance v5, Landroidx/media3/common/util/g;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v7, Landroidx/media3/exoplayer/m1;

    invoke-direct {v7, v1}, Landroidx/media3/exoplayer/m1;-><init>(Landroidx/media3/exoplayer/b2;)V

    move-object v13, v5

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v39

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Landroidx/media3/common/util/g;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/g$a;)V

    iput-object v5, v1, Landroidx/media3/exoplayer/b2;->H:Landroidx/media3/common/util/g;

    new-instance v7, Landroidx/media3/exoplayer/n1;

    invoke-direct {v7, v1}, Landroidx/media3/exoplayer/n1;-><init>(Landroidx/media3/exoplayer/b2;)V

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/g;->h(Ljava/lang/Runnable;)V

    new-instance v5, Landroidx/media3/exoplayer/e;

    iget-object v14, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    iget-object v7, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    iget-object v8, v1, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    move-object v13, v5

    move-object v15, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v39

    invoke-direct/range {v13 .. v18}, Landroidx/media3/exoplayer/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/exoplayer/e$b;Landroidx/media3/common/util/i;)V

    iput-object v5, v1, Landroidx/media3/exoplayer/b2;->B:Landroidx/media3/exoplayer/e;

    iget-boolean v7, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->p:Z

    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/e;->f(Z)V

    iget-boolean v5, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->G:Z

    if-eqz v5, :cond_5

    iget-object v13, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->J:Landroidx/media3/exoplayer/m4;

    iput-object v13, v1, Landroidx/media3/exoplayer/b2;->G:Landroidx/media3/exoplayer/m4;

    new-instance v14, Landroidx/media3/exoplayer/o1;

    invoke-direct {v14, v1}, Landroidx/media3/exoplayer/o1;-><init>(Landroidx/media3/exoplayer/b2;)V

    iget-object v15, v1, Landroidx/media3/exoplayer/b2;->e:Landroid/content/Context;

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v39

    invoke-interface/range {v13 .. v18}, Landroidx/media3/exoplayer/m4;->b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    iput-object v5, v1, Landroidx/media3/exoplayer/b2;->G:Landroidx/media3/exoplayer/m4;

    :goto_3
    iget-boolean v5, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->r:Z

    if-eqz v5, :cond_6

    new-instance v5, Landroidx/media3/exoplayer/k4;

    iget-object v14, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    iget-object v15, v1, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    iget-object v7, v1, Landroidx/media3/exoplayer/b2;->h0:Landroidx/media3/common/c;

    invoke-virtual {v7}, Landroidx/media3/common/c;->b()I

    move-result v16

    move-object v13, v5

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v39

    invoke-direct/range {v13 .. v19}, Landroidx/media3/exoplayer/k4;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/k4$b;ILandroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V

    iput-object v5, v1, Landroidx/media3/exoplayer/b2;->C:Landroidx/media3/exoplayer/k4;

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->C:Landroidx/media3/exoplayer/k4;

    :goto_4
    new-instance v4, Landroidx/media3/exoplayer/p4;

    iget-object v5, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    move-object/from16 v7, v39

    invoke-direct {v4, v5, v2, v7}, Landroidx/media3/exoplayer/p4;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/i;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->D:Landroidx/media3/exoplayer/p4;

    iget v5, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->o:I

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    move v5, v6

    :goto_5
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/p4;->e(Z)V

    new-instance v4, Landroidx/media3/exoplayer/s4;

    iget-object v5, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    invoke-direct {v4, v5, v2, v7}, Landroidx/media3/exoplayer/s4;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/util/i;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/b2;->E:Landroidx/media3/exoplayer/s4;

    iget v2, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->o:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    move v12, v6

    :goto_6
    invoke-virtual {v4, v12}, Landroidx/media3/exoplayer/s4;->e(Z)V

    sget-object v2, Landroidx/media3/common/m;->e:Landroidx/media3/common/m;

    iput-object v2, v1, Landroidx/media3/exoplayer/b2;->r0:Landroidx/media3/common/m;

    sget-object v2, Landroidx/media3/common/m0;->e:Landroidx/media3/common/m0;

    iput-object v2, v1, Landroidx/media3/exoplayer/b2;->s0:Landroidx/media3/common/m0;

    sget-object v2, Landroidx/media3/common/util/l0;->c:Landroidx/media3/common/util/l0;

    iput-object v2, v1, Landroidx/media3/exoplayer/b2;->e0:Landroidx/media3/common/util/l0;

    iget-object v2, v1, Landroidx/media3/exoplayer/b2;->h0:Landroidx/media3/common/c;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/ExoPlayer$b;->n:Z

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/r2;->d1(Landroidx/media3/common/c;Z)V

    iget-object v0, v1, Landroidx/media3/exoplayer/b2;->h0:Landroidx/media3/common/c;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/b2;->c0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/b2;->d0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    iget-boolean v0, v1, Landroidx/media3/exoplayer/b2;->j0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/b2;->A:Landroidx/media3/exoplayer/b2$d;

    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/b2;->A:Landroidx/media3/exoplayer/b2$d;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/b2;->n0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/b2;->x2(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Landroidx/media3/exoplayer/b2;->d:Landroidx/media3/common/util/l;

    invoke-virtual {v0}, Landroidx/media3/common/util/l;->f()Z

    return-void

    :goto_7
    iget-object v2, v1, Landroidx/media3/exoplayer/b2;->d:Landroidx/media3/common/util/l;

    invoke-virtual {v2}, Landroidx/media3/common/util/l;->f()Z

    throw v0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static synthetic A0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->g2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private A1(Landroidx/media3/exoplayer/r3;Landroidx/media3/exoplayer/r3;ZIZZ)Landroid/util/Pair;
    .locals 6

    iget-object v0, p2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    iget-object v2, p2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v2, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/e0$b;->c:I

    iget-object v4, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v2, v4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    iget-object v2, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/e0$b;->c:I

    iget-object v4, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_5

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, v2, :cond_3

    move v5, v1

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    :goto_0
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    iget-object p2, p2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v4, p2, Landroidx/media3/exoplayer/source/r$b;->d:J

    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide p1, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    cmp-long p1, v4, p1

    if-gez p1, :cond_6

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    if-eqz p3, :cond_7

    if-ne p4, v2, :cond_7

    if-eqz p6, :cond_7

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private A2(Ljava/util/List;IJZ)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v0, p2

    iget-object v1, v9, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {v9, v1}, Landroidx/media3/exoplayer/b2;->E1(Landroidx/media3/exoplayer/r3;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/b2;->getCurrentPosition()J

    move-result-wide v2

    iget v4, v9, Landroidx/media3/exoplayer/b2;->K:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v9, Landroidx/media3/exoplayer/b2;->K:I

    iget-object v4, v9, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    iget-object v4, v9, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v9, v6, v4}, Landroidx/media3/exoplayer/b2;->u2(II)V

    :cond_0
    move-object/from16 v4, p1

    invoke-direct {v9, v6, v4}, Landroidx/media3/exoplayer/b2;->o1(ILjava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/b2;->x1()Landroidx/media3/common/e0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/e0;->q()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Landroidx/media3/common/e0;->p()I

    move-result v7

    if-ge v0, v7, :cond_2

    :cond_1
    move-wide/from16 v7, p3

    goto :goto_0

    :cond_2
    new-instance v1, Landroidx/media3/common/IllegalSeekPositionException;

    move-wide/from16 v7, p3

    invoke-direct {v1, v4, v0, v7, v8}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/e0;IJ)V

    throw v1

    :goto_0
    const/4 v10, -0x1

    if-eqz p5, :cond_3

    iget-boolean v0, v9, Landroidx/media3/exoplayer/b2;->J:Z

    invoke-virtual {v4, v0}, Landroidx/media3/common/e0;->a(Z)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v12, v0

    goto :goto_1

    :cond_3
    if-ne v0, v10, :cond_4

    move v12, v1

    move-wide v1, v2

    goto :goto_1

    :cond_4
    move v12, v0

    move-wide v1, v7

    :goto_1
    iget-object v0, v9, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {v9, v4, v12, v1, v2}, Landroidx/media3/exoplayer/b2;->o2(Landroidx/media3/common/e0;IJ)Landroid/util/Pair;

    move-result-object v3

    invoke-direct {v9, v0, v4, v3}, Landroidx/media3/exoplayer/b2;->n2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0;Landroid/util/Pair;)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iget v3, v0, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v12, v10, :cond_7

    if-eq v3, v5, :cond_7

    invoke-virtual {v4}, Landroidx/media3/common/e0;->q()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Landroidx/media3/common/e0;->p()I

    move-result v3

    if-lt v12, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x4

    :cond_7
    :goto_3
    invoke-static {v0, v3}, Landroidx/media3/exoplayer/b2;->m2(Landroidx/media3/exoplayer/r3;I)Landroidx/media3/exoplayer/r3;

    move-result-object v3

    iget-object v10, v9, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v13

    iget-object v15, v9, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    invoke-virtual/range {v10 .. v15}, Landroidx/media3/exoplayer/r2;->i1(Ljava/util/List;IJLg2/v;)V

    iget-object v0, v9, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v1, v3, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v9, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v5, v6

    :goto_4
    invoke-direct {v9, v3}, Landroidx/media3/exoplayer/b2;->D1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v5

    move-wide v5, v6

    move v7, v8

    move v8, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public static synthetic B0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->d2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private B2(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/b2;->a0:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->Y:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->Y:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->Y:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/b2;->p2(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/b2;->p2(II)V

    :goto_0
    return-void
.end method

.method public static synthetic C0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->k2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private C1(Landroidx/media3/exoplayer/r3;)J
    .locals 4

    iget-object v0, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v1, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-wide v0, p1, Landroidx/media3/exoplayer/r3;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->E1(Landroidx/media3/exoplayer/r3;)I

    move-result p1

    iget-object v1, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v0}, Landroidx/media3/common/e0$b;->n()J

    move-result-wide v0

    iget-wide v2, p1, Landroidx/media3/exoplayer/r3;->c:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->D1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private C2(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->X:Landroid/view/Surface;

    return-void
.end method

.method public static synthetic D0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->i2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private D1(Landroidx/media3/exoplayer/r3;)J
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/b2;->x0:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/r3;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/r3;->m()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/r3;->s:J

    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/media3/exoplayer/b2;->s2(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private D2(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->W:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-wide v1, p0, Landroidx/media3/exoplayer/b2;->F:J

    goto :goto_1

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v3, p1, v1, v2}, Landroidx/media3/exoplayer/r2;->x1(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->W:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->X:Landroid/view/Surface;

    if-ne v0, v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->X:Landroid/view/Surface;

    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->W:Ljava/lang/Object;

    if-nez v1, :cond_3

    new-instance p1, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->F2(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    :cond_3
    return-void
.end method

.method public static synthetic E0(Landroidx/media3/exoplayer/b2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->r2(Z)V

    return-void
.end method

.method private E1(Landroidx/media3/exoplayer/r3;)I
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/b2;->v0:I

    return p1

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/e0$b;->c:I

    return p1
.end method

.method public static synthetic F0(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/r2$e;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->O1(Landroidx/media3/exoplayer/r2$e;)V

    return-void
.end method

.method private F1(Landroidx/media3/common/e0;Landroidx/media3/common/e0;IJ)Landroid/util/Pair;
    .locals 12

    move-object v0, p0

    move-object v8, p2

    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    iget-object v4, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v6

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v11, :cond_1

    return-object v1

    :cond_1
    iget-object v1, v0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    iget-object v2, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    iget v3, v0, Landroidx/media3/exoplayer/b2;->I:I

    iget-boolean v4, v0, Landroidx/media3/exoplayer/b2;->J:Z

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/r2;->S0(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IZLjava/lang/Object;Landroidx/media3/common/e0;Landroidx/media3/common/e0;)I

    move-result v1

    if-eq v1, v11, :cond_2

    iget-object v2, v0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {p2, v1, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/e0$c;->b()J

    move-result-wide v2

    invoke-direct {p0, p2, v1, v2, v3}, Landroidx/media3/exoplayer/b2;->o2(Landroidx/media3/common/e0;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-direct {p0, p2, v11, v9, v10}, Landroidx/media3/exoplayer/b2;->o2(Landroidx/media3/common/e0;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v11, p3

    :goto_2
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-wide/from16 v9, p4

    :goto_3
    invoke-direct {p0, p2, v11, v9, v10}, Landroidx/media3/exoplayer/b2;->o2(Landroidx/media3/common/e0;IJ)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private F2(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r3;->c(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/r3;->s:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/r3;->q:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/exoplayer/r3;->r:J

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/b2;->m2(Landroidx/media3/exoplayer/r3;I)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Landroidx/media3/exoplayer/b2;->K:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/b2;->K:I

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/r2;->H1()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public static synthetic G0(ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/b2;->Z1(ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private G2()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->R:Landroidx/media3/common/a0$b;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->f:Landroidx/media3/common/a0;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->c:Landroidx/media3/common/a0$b;

    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->O(Landroidx/media3/common/a0;Landroidx/media3/common/a0$b;)Landroidx/media3/common/a0$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/b2;->R:Landroidx/media3/common/a0$b;

    invoke-virtual {v1, v0}, Landroidx/media3/common/a0$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/r1;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/r1;-><init>(Landroidx/media3/exoplayer/b2;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_0
    return-void
.end method

.method public static synthetic H0(FLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->W1(FLandroidx/media3/common/a0$d;)V

    return-void
.end method

.method private H1(J)Landroidx/media3/common/a0$e;
    .locals 13

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->t()I

    move-result v2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v3, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v1, v3}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v3, v3, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v4, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    iget-object v4, v4, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    move v5, v0

    move-object v12, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v3, v0

    move-object v4, v3

    move v5, v1

    move-object v1, v4

    :goto_0
    invoke-static {p1, p2}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    new-instance p1, Landroidx/media3/common/a0$e;

    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object p2, p2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-static {p2}, Landroidx/media3/exoplayer/b2;->J1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object p2, p2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget v10, p2, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v11, p2, Landroidx/media3/exoplayer/source/r$b;->c:I

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/a0$e;-><init>(Ljava/lang/Object;ILandroidx/media3/common/t;Ljava/lang/Object;IJJII)V

    return-object p1
.end method

.method private H2(IILjava/util/List;)V
    .locals 9

    iget v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/r2;->M1(IILjava/util/List;)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/b2$e;

    new-instance v2, Lg2/x;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b2$e;->b()Landroidx/media3/common/e0;

    move-result-object v3

    sub-int v4, v0, p1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/t;

    invoke-direct {v2, v3, v4}, Lg2/x;-><init>(Landroidx/media3/common/e0;Landroidx/media3/common/t;)V

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/b2$e;->d(Landroidx/media3/common/e0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->x1()Landroidx/media3/common/e0;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/r3;->j(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public static synthetic I0(Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/b2;->S1(Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private I1(ILandroidx/media3/exoplayer/r3;I)Landroidx/media3/common/a0$e;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroidx/media3/common/e0$b;

    invoke-direct {v2}, Landroidx/media3/common/e0$b;-><init>()V

    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v3}, Landroidx/media3/common/e0;->q()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v5, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v5, v3, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget v5, v2, Landroidx/media3/common/e0$b;->c:I

    iget-object v6, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v6, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v8, v0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v7, v5, v8}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    iget-object v8, v0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    iget-object v8, v8, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    move-object v9, v3

    move v10, v6

    move-object v6, v7

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move/from16 v7, p3

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    move v10, v4

    :goto_0
    if-nez p1, :cond_3

    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget v4, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v3, v3, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/e0$b;->b(II)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/b2;->J1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v4

    goto :goto_2

    :cond_1
    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget v3, v3, Landroidx/media3/exoplayer/source/r$b;->e:I

    if-eq v3, v4, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-static {v2}, Landroidx/media3/exoplayer/b2;->J1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    goto :goto_2

    :cond_2
    iget-wide v3, v2, Landroidx/media3/common/e0$b;->e:J

    iget-wide v11, v2, Landroidx/media3/common/e0$b;->d:J

    add-long v2, v3, v11

    goto :goto_1

    :cond_3
    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v2, v1, Landroidx/media3/exoplayer/r3;->s:J

    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/b2;->J1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    iget-wide v2, v2, Landroidx/media3/common/e0$b;->e:J

    iget-wide v4, v1, Landroidx/media3/exoplayer/r3;->s:J

    add-long/2addr v2, v4

    goto :goto_1

    :goto_2
    new-instance v17, Landroidx/media3/common/a0$e;

    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v11

    invoke-static {v4, v5}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v13

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget v15, v1, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v1, v1, Landroidx/media3/exoplayer/source/r$b;->c:I

    move-object/from16 v5, v17

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Landroidx/media3/common/a0$e;-><init>(Ljava/lang/Object;ILandroidx/media3/common/t;Ljava/lang/Object;IJJII)V

    return-object v17
.end method

.method private I2(ZI)V
    .locals 11

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->v1(Z)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/r3;->l:Z

    if-ne v2, p1, :cond_0

    iget v2, v1, Landroidx/media3/exoplayer/r3;->n:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Landroidx/media3/exoplayer/r3;->m:I

    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/b2;->K:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/b2;->K:I

    iget-boolean v2, v1, Landroidx/media3/exoplayer/r3;->p:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/r3;->a()Landroidx/media3/exoplayer/r3;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, p1, p2, v0}, Landroidx/media3/exoplayer/r3;->e(ZII)Landroidx/media3/exoplayer/r3;

    move-result-object v3

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/media3/exoplayer/r2;->l1(ZII)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public static synthetic J0(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/r2$e;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->P1(Landroidx/media3/exoplayer/r2$e;)V

    return-void
.end method

.method private static J1(Landroidx/media3/exoplayer/r3;)J
    .locals 6

    new-instance v0, Landroidx/media3/common/e0$c;

    invoke-direct {v0}, Landroidx/media3/common/e0$c;-><init>()V

    new-instance v1, Landroidx/media3/common/e0$b;

    invoke-direct {v1}, Landroidx/media3/common/e0$b;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v3, p0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-wide v2, p0, Landroidx/media3/exoplayer/r3;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget v1, v1, Landroidx/media3/common/e0$b;->c:I

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/e0$c;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/r3;->c:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    iget-object v10, v7, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iput-object v8, v7, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v10, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v1, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0, v1}, Landroidx/media3/common/e0;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v5, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/b2;->A1(Landroidx/media3/exoplayer/r3;Landroidx/media3/exoplayer/r3;ZIZZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v3}, Landroidx/media3/common/e0;->q()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v3, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v4, v7, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/e0$b;->c:I

    iget-object v3, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v4, v7, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    :cond_0
    sget-object v3, Landroidx/media3/common/v;->I:Landroidx/media3/common/v;

    iput-object v3, v7, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, v10, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    iget-object v4, v8, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, v7, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    invoke-virtual {v3}, Landroidx/media3/common/v;->a()Landroidx/media3/common/v$b;

    move-result-object v3

    iget-object v4, v8, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroidx/media3/common/v$b;->N(Ljava/util/List;)Landroidx/media3/common/v$b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/v$b;->J()Landroidx/media3/common/v;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/b2;->s1()Landroidx/media3/common/v;

    move-result-object v3

    iget-object v4, v7, Landroidx/media3/exoplayer/b2;->S:Landroidx/media3/common/v;

    invoke-virtual {v3, v4}, Landroidx/media3/common/v;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-object v3, v7, Landroidx/media3/exoplayer/b2;->S:Landroidx/media3/common/v;

    iget-boolean v3, v10, Landroidx/media3/exoplayer/r3;->l:Z

    iget-boolean v5, v8, Landroidx/media3/exoplayer/r3;->l:Z

    const/4 v6, 0x0

    const/4 v12, 0x1

    if-eq v3, v5, :cond_4

    move v3, v12

    goto :goto_0

    :cond_4
    move v3, v6

    :goto_0
    iget v5, v10, Landroidx/media3/exoplayer/r3;->e:I

    iget v13, v8, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v5, v13, :cond_5

    move v5, v12

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    if-nez v5, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/b2;->L2()V

    :cond_7
    iget-boolean v13, v10, Landroidx/media3/exoplayer/r3;->g:Z

    iget-boolean v14, v8, Landroidx/media3/exoplayer/r3;->g:Z

    if-eq v13, v14, :cond_8

    move v13, v12

    goto :goto_2

    :cond_8
    move v13, v6

    :goto_2
    if-eqz v13, :cond_9

    invoke-direct {v7, v14}, Landroidx/media3/exoplayer/b2;->K2(Z)V

    :cond_9
    if-nez v11, :cond_a

    iget-object v11, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v14, Landroidx/media3/exoplayer/z0;

    move/from16 v15, p2

    invoke-direct {v14, v8, v15}, Landroidx/media3/exoplayer/z0;-><init>(Landroidx/media3/exoplayer/r3;I)V

    invoke-virtual {v11, v6, v14}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_a
    if-eqz p3, :cond_b

    move/from16 v6, p7

    invoke-direct {v7, v9, v10, v6}, Landroidx/media3/exoplayer/b2;->I1(ILandroidx/media3/exoplayer/r3;I)Landroidx/media3/common/a0$e;

    move-result-object v6

    move-wide/from16 v14, p5

    invoke-direct {v7, v14, v15}, Landroidx/media3/exoplayer/b2;->H1(J)Landroidx/media3/common/a0$e;

    move-result-object v11

    iget-object v14, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v15, Landroidx/media3/exoplayer/w1;

    invoke-direct {v15, v9, v6, v11}, Landroidx/media3/exoplayer/w1;-><init>(ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;)V

    const/16 v6, 0xb

    invoke-virtual {v14, v6, v15}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v6, Landroidx/media3/exoplayer/x1;

    invoke-direct {v6, v2, v0}, Landroidx/media3/exoplayer/x1;-><init>(Landroidx/media3/common/t;I)V

    invoke-virtual {v1, v12, v6}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_c
    iget-object v0, v10, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v1, v8, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eq v0, v1, :cond_d

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/y1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/y1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_d

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/z1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/z1;-><init>(Landroidx/media3/exoplayer/r3;)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_d
    iget-object v0, v10, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    iget-object v1, v8, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    if-eq v0, v1, :cond_e

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->i:Lj2/e0;

    iget-object v1, v1, Lj2/f0;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lj2/e0;->i(Ljava/lang/Object;)V

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/a2;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/a2;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_e
    if-nez v4, :cond_f

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->S:Landroidx/media3/common/v;

    iget-object v1, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v2, Landroidx/media3/exoplayer/a1;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/a1;-><init>(Landroidx/media3/common/v;)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_f
    if-eqz v13, :cond_10

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/b1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/b1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_10
    if-nez v5, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/c1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/c1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_12
    if-eqz v5, :cond_13

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/d1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/d1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_13
    if-nez v3, :cond_14

    iget v0, v10, Landroidx/media3/exoplayer/r3;->m:I

    iget v1, v8, Landroidx/media3/exoplayer/r3;->m:I

    if-eq v0, v1, :cond_15

    :cond_14
    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/k1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/k1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_15
    iget v0, v10, Landroidx/media3/exoplayer/r3;->n:I

    iget v1, v8, Landroidx/media3/exoplayer/r3;->n:I

    if-eq v0, v1, :cond_16

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/t1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/t1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_16
    invoke-virtual {v10}, Landroidx/media3/exoplayer/r3;->n()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/r3;->n()Z

    move-result v1

    if-eq v0, v1, :cond_17

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/u1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/u1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_17
    iget-object v0, v10, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    iget-object v1, v8, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    invoke-virtual {v0, v1}, Landroidx/media3/common/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/v1;

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/v1;-><init>(Landroidx/media3/exoplayer/r3;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    :cond_18
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/b2;->G2()V

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    invoke-virtual {v0}, Landroidx/media3/common/util/t;->f()V

    iget-boolean v0, v10, Landroidx/media3/exoplayer/r3;->p:Z

    iget-boolean v1, v8, Landroidx/media3/exoplayer/r3;->p:Z

    if-eq v0, v1, :cond_19

    iget-object v0, v7, Landroidx/media3/exoplayer/b2;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer$a;

    iget-boolean v2, v8, Landroidx/media3/exoplayer/r3;->p:Z

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/ExoPlayer$a;->x(Z)V

    goto :goto_3

    :cond_19
    return-void
.end method

.method public static synthetic K0(Landroidx/media3/exoplayer/b2;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->q2(II)V

    return-void
.end method

.method private K1(Landroidx/media3/exoplayer/r2$e;)V
    .locals 11

    iget v1, p0, Landroidx/media3/exoplayer/b2;->K:I

    iget v2, p1, Landroidx/media3/exoplayer/r2$e;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/b2;->K:I

    iget-boolean v2, p1, Landroidx/media3/exoplayer/r2$e;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p1, Landroidx/media3/exoplayer/r2$e;->e:I

    iput v2, p0, Landroidx/media3/exoplayer/b2;->L:I

    iput-boolean v3, p0, Landroidx/media3/exoplayer/b2;->M:Z

    :cond_0
    if-nez v1, :cond_a

    iget-object v1, p1, Landroidx/media3/exoplayer/r2$e;->b:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v2}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/exoplayer/b2;->v0:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroidx/media3/exoplayer/b2;->x0:J

    iput v4, p0, Landroidx/media3/exoplayer/b2;->w0:I

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/u3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/u3;->F()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-static {v5}, Landroidx/media3/common/util/a;->g(Z)V

    move v5, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/b2$e;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/e0;

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/b2$e;->d(Landroidx/media3/common/e0;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Landroidx/media3/exoplayer/b2;->M:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_8

    iget-object v2, p1, Landroidx/media3/exoplayer/r2$e;->b:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v7, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroidx/media3/exoplayer/r2$e;->b:Landroidx/media3/exoplayer/r3;

    iget-wide v7, v2, Landroidx/media3/exoplayer/r3;->d:J

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-wide v9, v2, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :cond_5
    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p1, Landroidx/media3/exoplayer/r2$e;->b:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p1, Landroidx/media3/exoplayer/r2$e;->b:Landroidx/media3/exoplayer/r3;

    iget-object v5, v2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v6, v2, Landroidx/media3/exoplayer/r3;->d:J

    invoke-direct {p0, v1, v5, v6, v7}, Landroidx/media3/exoplayer/b2;->s2(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;J)J

    move-result-wide v1

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v1, p1, Landroidx/media3/exoplayer/r2$e;->b:Landroidx/media3/exoplayer/r3;

    iget-wide v1, v1, Landroidx/media3/exoplayer/r3;->d:J

    :goto_4
    move-wide v5, v1

    goto :goto_5

    :cond_8
    move v3, v4

    :cond_9
    :goto_5
    iput-boolean v4, p0, Landroidx/media3/exoplayer/b2;->M:Z

    iget-object v1, p1, Landroidx/media3/exoplayer/r2$e;->b:Landroidx/media3/exoplayer/r3;

    iget v4, p0, Landroidx/media3/exoplayer/b2;->L:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    :cond_a
    return-void
.end method

.method private K2(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->o0:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/b2;->p0:Z

    if-nez v1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/b2;->n0:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/PriorityTaskManager;->a(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/b2;->p0:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/b2;->p0:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/b2;->n0:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/b2;->p0:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic L0(Landroidx/media3/exoplayer/r3;ILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->Y1(Landroidx/media3/exoplayer/r3;ILandroidx/media3/common/a0$d;)V

    return-void
.end method

.method private L2()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->L1()Z

    move-result v0

    iget-object v3, p0, Landroidx/media3/exoplayer/b2;->D:Landroidx/media3/exoplayer/p4;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/p4;->f(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->E:Landroidx/media3/exoplayer/s4;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/s4;->f(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->D:Landroidx/media3/exoplayer/p4;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/p4;->f(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->E:Landroidx/media3/exoplayer/s4;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/s4;->f(Z)V

    :goto_2
    return-void
.end method

.method public static synthetic M0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->b2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private static synthetic M1(IILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/a0$d;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method private M2()V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->d:Landroidx/media3/common/util/l;

    invoke-virtual {v1}, Landroidx/media3/common/util/l;->c()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->k()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->k()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/b2;->l0:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/b2;->m0:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v1, v2}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/b2;->m0:Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic N0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->V:Landroidx/media3/common/r;

    return-object p1
.end method

.method private synthetic N1(Landroidx/media3/common/a0$d;Landroidx/media3/common/p;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->f:Landroidx/media3/common/a0;

    new-instance v1, Landroidx/media3/common/a0$c;

    invoke-direct {v1, p2}, Landroidx/media3/common/a0$c;-><init>(Landroidx/media3/common/p;)V

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/a0$d;->onEvents(Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V

    return-void
.end method

.method static synthetic O0(Landroidx/media3/exoplayer/b2;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/b2;->j0:Z

    return p0
.end method

.method private synthetic O1(Landroidx/media3/exoplayer/r2$e;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->K1(Landroidx/media3/exoplayer/r2$e;)V

    return-void
.end method

.method static synthetic P0(Landroidx/media3/exoplayer/b2;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/b2;->j0:Z

    return p1
.end method

.method private synthetic P1(Landroidx/media3/exoplayer/r2$e;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->j:Landroidx/media3/common/util/p;

    new-instance v1, Landroidx/media3/exoplayer/p1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/p1;-><init>(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/r2$e;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic Q0(Landroidx/media3/exoplayer/b2;Lu1/b;)Lu1/b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->k0:Lu1/b;

    return-object p1
.end method

.method private synthetic Q1()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->H:Landroidx/media3/common/util/g;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->e:Landroid/content/Context;

    invoke-static {v1}, Landroidx/media3/common/util/a1;->J(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic R0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    return-object p0
.end method

.method private static synthetic R1(ILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method static synthetic S0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/v;)Landroidx/media3/common/v;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    return-object p1
.end method

.method private static synthetic S1(Landroidx/media3/common/a0$d;)V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/media3/common/a0$d;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic T0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->s1()Landroidx/media3/common/v;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic T1(ILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic U0(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/v;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2;->S:Landroidx/media3/common/v;

    return-object p0
.end method

.method private static synthetic U1(ZLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic V0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/v;)Landroidx/media3/common/v;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->S:Landroidx/media3/common/v;

    return-object p1
.end method

.method private static synthetic V1(Landroidx/media3/common/h0;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onTrackSelectionParametersChanged(Landroidx/media3/common/h0;)V

    return-void
.end method

.method static synthetic W0(Landroidx/media3/exoplayer/b2;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/b2;->a0:Z

    return p0
.end method

.method private static synthetic W1(FLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic X0(Landroidx/media3/exoplayer/b2;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic X1(Landroidx/media3/common/a0$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->R:Landroidx/media3/common/a0$b;

    invoke-interface {p1, v0}, Landroidx/media3/common/a0$d;->onAvailableCommandsChanged(Landroidx/media3/common/a0$b;)V

    return-void
.end method

.method static synthetic Y0(Landroidx/media3/exoplayer/b2;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->p2(II)V

    return-void
.end method

.method private static synthetic Y1(Landroidx/media3/exoplayer/r3;ILandroidx/media3/common/a0$d;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/a0$d;->onTimelineChanged(Landroidx/media3/common/e0;I)V

    return-void
.end method

.method static synthetic Z0(Landroidx/media3/exoplayer/b2;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->C2(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private static synthetic Z1(ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p3, p0}, Landroidx/media3/common/a0$d;->onPositionDiscontinuity(I)V

    invoke-interface {p3, p1, p2, p0}, Landroidx/media3/common/a0$d;->onPositionDiscontinuity(Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V

    return-void
.end method

.method static synthetic a1(Landroidx/media3/exoplayer/b2;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->I2(ZI)V

    return-void
.end method

.method private static synthetic a2(Landroidx/media3/common/t;ILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/a0$d;->onMediaItemTransition(Landroidx/media3/common/t;I)V

    return-void
.end method

.method static synthetic b1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/exoplayer/k4;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2;->C:Landroidx/media3/exoplayer/k4;

    return-object p0
.end method

.method private static synthetic b2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic c1(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/m;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/b2;->w1(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/m;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic d1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/m;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2;->r0:Landroidx/media3/common/m;

    return-object p0
.end method

.method private static synthetic d2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    iget-object p0, p0, Lj2/f0;->d:Landroidx/media3/common/i0;

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onTracksChanged(Landroidx/media3/common/i0;)V

    return-void
.end method

.method static synthetic e1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/m;)Landroidx/media3/common/m;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->r0:Landroidx/media3/common/m;

    return-object p1
.end method

.method private static synthetic e2(Landroidx/media3/common/v;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onMediaMetadataChanged(Landroidx/media3/common/v;)V

    return-void
.end method

.method static synthetic f1(Landroidx/media3/exoplayer/b2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->L2()V

    return-void
.end method

.method private static synthetic f2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r3;->g:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/a0$d;->onLoadingChanged(Z)V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/r3;->g:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onIsLoadingChanged(Z)V

    return-void
.end method

.method static synthetic g1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->f0:Landroidx/media3/exoplayer/j;

    return-object p1
.end method

.method private static synthetic g2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r3;->l:Z

    iget p0, p0, Landroidx/media3/exoplayer/r3;->e:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/a0$d;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic h1(Landroidx/media3/exoplayer/b2;)Ly1/a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    return-object p0
.end method

.method private static synthetic h2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/r3;->e:I

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic i1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->U:Landroidx/media3/common/r;

    return-object p1
.end method

.method private static synthetic i2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r3;->l:Z

    iget p0, p0, Landroidx/media3/exoplayer/r3;->m:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/a0$d;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic j1(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/m0;)Landroidx/media3/common/m0;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->s0:Landroidx/media3/common/m0;

    return-object p1
.end method

.method private static synthetic j2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/r3;->n:I

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic k1(Landroidx/media3/exoplayer/b2;)Landroidx/media3/common/util/t;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    return-object p0
.end method

.method private static synthetic k2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/r3;->n()Z

    move-result p0

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public static synthetic l0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->l2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method static synthetic l1(Landroidx/media3/exoplayer/b2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/b2;->W:Ljava/lang/Object;

    return-object p0
.end method

.method private static synthetic l2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    invoke-interface {p1, p0}, Landroidx/media3/common/a0$d;->onPlaybackParametersChanged(Landroidx/media3/common/z;)V

    return-void
.end method

.method public static synthetic m0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->f2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method static synthetic m1(Landroidx/media3/exoplayer/b2;Landroidx/media3/exoplayer/j;)Landroidx/media3/exoplayer/j;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->g0:Landroidx/media3/exoplayer/j;

    return-object p1
.end method

.method private static m2(Landroidx/media3/exoplayer/r3;I)Landroidx/media3/exoplayer/r3;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/r3;->h(I)Landroidx/media3/exoplayer/r3;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/r3;->b(Z)Landroidx/media3/exoplayer/r3;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static synthetic n0(Landroidx/media3/common/v;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->e2(Landroidx/media3/common/v;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private n2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0;Landroid/util/Pair;)Landroidx/media3/exoplayer/r3;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/e0;->q()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/a;->a(Z)V

    move-object/from16 v3, p1

    iget-object v5, v3, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/b2;->C1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/r3;->j(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/r3;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/e0;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroidx/media3/exoplayer/r3;->l()Landroidx/media3/exoplayer/source/r$b;

    move-result-object v1

    iget-wide v2, v0, Landroidx/media3/exoplayer/b2;->x0:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v14

    sget-object v18, Lg2/z;->d:Lg2/z;

    iget-object v2, v0, Landroidx/media3/exoplayer/b2;->b:Lj2/f0;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v20

    const-wide/16 v16, 0x0

    move-object v9, v1

    move-wide v10, v14

    move-wide v12, v14

    move-object/from16 v19, v2

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/r3;->d(Landroidx/media3/exoplayer/source/r$b;JJJJLg2/z;Lj2/f0;Ljava/util/List;)Landroidx/media3/exoplayer/r3;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/r3;->c(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iget-wide v2, v1, Landroidx/media3/exoplayer/r3;->s:J

    iput-wide v2, v1, Landroidx/media3/exoplayer/r3;->q:J

    return-object v1

    :cond_2
    iget-object v3, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v10, Landroidx/media3/exoplayer/source/r$b;

    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v10, v11}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;)V

    :goto_2
    move-object v14, v10

    goto :goto_3

    :cond_3
    iget-object v10, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    goto :goto_2

    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v6, v7}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v6

    invoke-virtual {v5}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v5, v3, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v2

    sub-long/2addr v6, v2

    :cond_4
    if-eqz v9, :cond_5

    cmp-long v2, v12, v6

    if-gez v2, :cond_6

    :cond_5
    move-wide v6, v12

    move-object v0, v14

    goto/16 :goto_6

    :cond_6
    if-nez v2, :cond_a

    iget-object v2, v8, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v3, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/e0$b;->c:I

    iget-object v3, v14, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/e0$b;->c:I

    if-eq v2, v3, :cond_9

    :cond_7
    iget-object v2, v14, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    invoke-virtual {v14}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    iget v2, v14, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v3, v14, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/e0$b;->b(II)J

    move-result-wide v1

    goto :goto_4

    :cond_8
    iget-object v1, v0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    iget-wide v1, v1, Landroidx/media3/common/e0$b;->d:J

    :goto_4
    iget-wide v10, v8, Landroidx/media3/exoplayer/r3;->s:J

    iget-wide v12, v8, Landroidx/media3/exoplayer/r3;->s:J

    iget-wide v3, v8, Landroidx/media3/exoplayer/r3;->d:J

    iget-wide v5, v8, Landroidx/media3/exoplayer/r3;->s:J

    sub-long v16, v1, v5

    iget-object v5, v8, Landroidx/media3/exoplayer/r3;->h:Lg2/z;

    iget-object v6, v8, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    iget-object v7, v8, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    move-object v9, v14

    move-object v0, v14

    move-wide v14, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/r3;->d(Landroidx/media3/exoplayer/source/r$b;JJJJLg2/z;Lj2/f0;Ljava/util/List;)Landroidx/media3/exoplayer/r3;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/r3;->c(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/r3;

    move-result-object v8

    iput-wide v1, v8, Landroidx/media3/exoplayer/r3;->q:J

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_a
    move-object v0, v14

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-wide v1, v8, Landroidx/media3/exoplayer/r3;->r:J

    sub-long v3, v12, v6

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    iget-wide v1, v8, Landroidx/media3/exoplayer/r3;->q:J

    iget-object v3, v8, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    iget-object v4, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-long v1, v12, v16

    :cond_b
    iget-object v3, v8, Landroidx/media3/exoplayer/r3;->h:Lg2/z;

    iget-object v4, v8, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    iget-object v5, v8, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    move-object v9, v0

    move-wide v10, v12

    move-wide v6, v12

    move-wide v14, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/r3;->d(Landroidx/media3/exoplayer/source/r$b;JJJJLg2/z;Lj2/f0;Ljava/util/List;)Landroidx/media3/exoplayer/r3;

    move-result-object v8

    iput-wide v1, v8, Landroidx/media3/exoplayer/r3;->q:J

    goto :goto_5

    :goto_6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    if-nez v9, :cond_c

    sget-object v1, Lg2/z;->d:Lg2/z;

    :goto_7
    move-object/from16 v18, v1

    goto :goto_8

    :cond_c
    iget-object v1, v8, Landroidx/media3/exoplayer/r3;->h:Lg2/z;

    goto :goto_7

    :goto_8
    move-object v1, v0

    move-object/from16 v0, p0

    if-nez v9, :cond_d

    iget-object v2, v0, Landroidx/media3/exoplayer/b2;->b:Lj2/f0;

    :goto_9
    move-object/from16 v19, v2

    goto :goto_a

    :cond_d
    iget-object v2, v8, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    goto :goto_9

    :goto_a
    if-nez v9, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_b
    move-object/from16 v20, v2

    goto :goto_c

    :cond_e
    iget-object v2, v8, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    goto :goto_b

    :goto_c
    const-wide/16 v16, 0x0

    move-object v9, v1

    move-wide v10, v6

    move-wide v12, v6

    move-wide v14, v6

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/r3;->d(Landroidx/media3/exoplayer/source/r$b;JJJJLg2/z;Lj2/f0;Ljava/util/List;)Landroidx/media3/exoplayer/r3;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/r3;->c(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/r3;

    move-result-object v8

    iput-wide v6, v8, Landroidx/media3/exoplayer/r3;->q:J

    :goto_d
    return-object v8
.end method

.method public static synthetic o0(ZLandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->U1(ZLandroidx/media3/common/a0$d;)V

    return-void
.end method

.method private o1(ILjava/util/List;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/q3$c;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/r;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/b2;->q:Z

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/q3$c;-><init>(Landroidx/media3/exoplayer/source/r;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Landroidx/media3/exoplayer/b2$e;

    iget-object v6, v2, Landroidx/media3/exoplayer/q3$c;->b:Ljava/lang/Object;

    iget-object v2, v2, Landroidx/media3/exoplayer/q3$c;->a:Landroidx/media3/exoplayer/source/p;

    invoke-direct {v5, v6, v2}, Landroidx/media3/exoplayer/b2$e;-><init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/p;)V

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, p1, v1}, Lg2/v;->cloneAndInsert(II)Lg2/v;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    return-object v0
.end method

.method private o2(Landroidx/media3/common/e0;IJ)Landroid/util/Pair;
    .locals 6

    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/media3/exoplayer/b2;->v0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/b2;->x0:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/b2;->w0:I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/e0;->p()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/media3/exoplayer/b2;->J:Z

    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->a(Z)I

    move-result p2

    iget-object p3, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/common/e0$c;->b()J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object v1, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-static {p3, p4}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic p0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->j2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private p2(II)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->e0:Landroidx/media3/common/util/l0;

    invoke-virtual {v0}, Landroidx/media3/common/util/l0;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->e0:Landroidx/media3/common/util/l0;

    invoke-virtual {v0}, Landroidx/media3/common/util/l0;->a()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/media3/common/util/l0;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/l0;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->e0:Landroidx/media3/common/util/l0;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/f1;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/f1;-><init>(II)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    new-instance v0, Landroidx/media3/common/util/l0;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/l0;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic q0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->h2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private q2(II)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v0, Landroidx/media3/exoplayer/s1;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/s1;-><init>(I)V

    const/16 p2, 0x15

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public static synthetic r0(ILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->T1(ILandroidx/media3/common/a0$d;)V

    return-void
.end method

.method private r1(Landroidx/media3/exoplayer/r3;ILjava/util/List;)Landroidx/media3/exoplayer/r3;
    .locals 7

    iget-object v1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/b2;->o1(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->x1()Landroidx/media3/common/e0;

    move-result-object v6

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->E1(Landroidx/media3/exoplayer/r3;)I

    move-result v3

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->C1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v4

    move-object v0, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/b2;->F1(Landroidx/media3/common/e0;Landroidx/media3/common/e0;IJ)Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, p1, v6, v0}, Landroidx/media3/exoplayer/b2;->n2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0;Landroid/util/Pair;)Landroidx/media3/exoplayer/r3;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    invoke-virtual {v0, p2, p3, v1}, Landroidx/media3/exoplayer/r2;->p(ILjava/util/List;Lg2/v;)V

    return-object p1
.end method

.method private r2(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/b2;->q0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget v1, p1, Landroidx/media3/exoplayer/r3;->n:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-boolean p1, p1, Landroidx/media3/exoplayer/r3;->l:Z

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/b2;->I2(ZI)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/r3;->l:Z

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/b2;->I2(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic s0(Landroidx/media3/exoplayer/b2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->Q1()V

    return-void
.end method

.method private s1()Landroidx/media3/common/v;
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->t()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->t0:Landroidx/media3/common/v;

    invoke-virtual {v1}, Landroidx/media3/common/v;->a()Landroidx/media3/common/v$b;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/t;->e:Landroidx/media3/common/v;

    invoke-virtual {v1, v0}, Landroidx/media3/common/v$b;->L(Landroidx/media3/common/v;)Landroidx/media3/common/v$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/v$b;->J()Landroidx/media3/common/v;

    move-result-object v0

    return-object v0
.end method

.method private s2(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;J)J
    .locals 1

    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {p1}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide p1

    add-long/2addr p3, p1

    return-wide p3
.end method

.method public static synthetic t0(Landroidx/media3/common/t;ILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->a2(Landroidx/media3/common/t;ILandroidx/media3/common/a0$d;)V

    return-void
.end method

.method private t1(IILjava/util/List;)Z
    .locals 4

    sub-int v0, p2, p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/b2$e;

    invoke-static {v1}, Landroidx/media3/exoplayer/b2$e;->c(Landroidx/media3/exoplayer/b2$e;)Landroidx/media3/exoplayer/source/r;

    move-result-object v1

    sub-int v3, v0, p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/t;

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/source/r;->q(Landroidx/media3/common/t;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private t2(Landroidx/media3/exoplayer/r3;II)Landroidx/media3/exoplayer/r3;
    .locals 10

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->E1(Landroidx/media3/exoplayer/r3;)I

    move-result v6

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->C1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v4

    iget-object v1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    iget v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    iput v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/b2;->u2(II)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->x1()Landroidx/media3/common/e0;

    move-result-object v9

    move-object v0, p0

    move-object v2, v9

    move v3, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/b2;->F1(Landroidx/media3/common/e0;Landroidx/media3/common/e0;IJ)Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, p1, v9, v0}, Landroidx/media3/exoplayer/b2;->n2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0;Landroid/util/Pair;)Landroidx/media3/exoplayer/r3;

    move-result-object p1

    iget v0, p1, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v0, v8, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ge p2, p3, :cond_0

    if-ne p3, v7, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->p()I

    move-result v0

    if-lt v6, v0, :cond_0

    invoke-static {p1, v1}, Landroidx/media3/exoplayer/b2;->m2(Landroidx/media3/exoplayer/r3;I)Landroidx/media3/exoplayer/r3;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    invoke-virtual {v0, p2, p3, v1}, Landroidx/media3/exoplayer/r2;->H0(IILg2/v;)V

    return-object p1
.end method

.method public static synthetic u0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/a0$d;Landroidx/media3/common/p;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->N1(Landroidx/media3/common/a0$d;Landroidx/media3/common/p;)V

    return-void
.end method

.method private u2(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    invoke-interface {v0, p1, p2}, Lg2/v;->a(II)Lg2/v;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    return-void
.end method

.method public static synthetic v0(ILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->R1(ILandroidx/media3/common/a0$d;)V

    return-void
.end method

.method private v1(Z)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->G:Landroidx/media3/exoplayer/m4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/m4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget v0, v0, Landroidx/media3/exoplayer/r3;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private v2()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->A:Landroidx/media3/exoplayer/b2$d;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->z1(Landroidx/media3/exoplayer/t3$b;)Landroidx/media3/exoplayer/t3;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/t3;->m(I)Landroidx/media3/exoplayer/t3;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/t3;->l(Ljava/lang/Object;)Landroidx/media3/exoplayer/t3;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/t3;->k()Landroidx/media3/exoplayer/t3;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/b2;->Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->b0:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    if-eq v0, v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->b0:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/b2;->b0:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->Y:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/b2;->Y:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public static synthetic w0(Landroidx/media3/exoplayer/b2;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->X1(Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private static w1(Landroidx/media3/exoplayer/k4;)Landroidx/media3/common/m;
    .locals 3

    new-instance v0, Landroidx/media3/common/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/m$b;-><init>(I)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/k4;->l()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/media3/common/m$b;->g(I)Landroidx/media3/common/m$b;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/k4;->k()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/m$b;->f(I)Landroidx/media3/common/m$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/m$b;->e()Landroidx/media3/common/m;

    move-result-object p0

    return-object p0
.end method

.method private w2(IILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->g:[Landroidx/media3/exoplayer/w3;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-eq p1, v4, :cond_0

    invoke-interface {v5}, Landroidx/media3/exoplayer/w3;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_1

    :cond_0
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/b2;->z1(Landroidx/media3/exoplayer/t3$b;)Landroidx/media3/exoplayer/t3;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/t3;->m(I)Landroidx/media3/exoplayer/t3;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroidx/media3/exoplayer/t3;->l(Ljava/lang/Object;)Landroidx/media3/exoplayer/t3;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/t3;->k()Landroidx/media3/exoplayer/t3;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->h:[Landroidx/media3/exoplayer/w3;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    if-eq p1, v4, :cond_3

    invoke-interface {v3}, Landroidx/media3/exoplayer/w3;->getTrackType()I

    move-result v5

    if-ne v5, p1, :cond_4

    :cond_3
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/b2;->z1(Landroidx/media3/exoplayer/t3$b;)Landroidx/media3/exoplayer/t3;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/media3/exoplayer/t3;->m(I)Landroidx/media3/exoplayer/t3;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroidx/media3/exoplayer/t3;->l(Ljava/lang/Object;)Landroidx/media3/exoplayer/t3;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/t3;->k()Landroidx/media3/exoplayer/t3;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static synthetic x0(Landroidx/media3/common/h0;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->V1(Landroidx/media3/common/h0;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private x1()Landroidx/media3/common/e0;
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/u3;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->O:Lg2/v;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/u3;-><init>(Ljava/util/Collection;Lg2/v;)V

    return-object v0
.end method

.method private x2(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic y0(IILandroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->M1(IILandroidx/media3/common/a0$d;)V

    return-void
.end method

.method private y1(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->r:Landroidx/media3/exoplayer/source/r$a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/t;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/r$a;->d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic z0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/b2;->c2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/a0$d;)V

    return-void
.end method

.method private z1(Landroidx/media3/exoplayer/t3$b;)Landroidx/media3/exoplayer/t3;
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->E1(Landroidx/media3/exoplayer/r3;)I

    move-result v0

    new-instance v8, Landroidx/media3/exoplayer/t3;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v4, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Landroidx/media3/exoplayer/b2;->y:Landroidx/media3/common/util/i;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/r2;->K()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/t3;-><init>(Landroidx/media3/exoplayer/t3$a;Landroidx/media3/exoplayer/t3$b;Landroidx/media3/common/e0;ILandroidx/media3/common/util/i;Landroid/os/Looper;)V

    return-object v8
.end method


# virtual methods
.method public A(ZI)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->C:Landroidx/media3/exoplayer/k4;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/k4;->u(ZI)V

    :cond_0
    return-void
.end method

.method public B1()Landroidx/media3/common/util/i;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->y:Landroidx/media3/common/util/i;

    return-object v0
.end method

.method public C(IILjava/util/List;)V
    .locals 11

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    return-void

    :cond_1
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/b2;->t1(IILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/b2;->H2(IILjava/util/List;)V

    return-void

    :cond_2
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/b2;->y1(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/b2;->v0:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, p3, v0}, Landroidx/media3/exoplayer/b2;->z2(Ljava/util/List;Z)V

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v0, p2, p3}, Landroidx/media3/exoplayer/b2;->r1(Landroidx/media3/exoplayer/r3;ILjava/util/List;)Landroidx/media3/exoplayer/r3;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Landroidx/media3/exoplayer/b2;->t2(Landroidx/media3/exoplayer/r3;II)Landroidx/media3/exoplayer/r3;

    move-result-object v3

    iget-object p1, v3, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object p2, p2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/b2;->D1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public D(Ly1/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/c;

    invoke-interface {v0, p1}, Ly1/a;->z(Ly1/c;)V

    return-void
.end method

.method public E2(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->clearVideoSurface()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->v2()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/b2;->a0:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->Y:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/b2;->p2(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroidx/media3/exoplayer/b2;->p2(II)V

    :goto_0
    return-void
.end method

.method public G(II)V
    .locals 11

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v1, p1, p2}, Landroidx/media3/exoplayer/b2;->t2(Landroidx/media3/exoplayer/r3;II)Landroidx/media3/exoplayer/r3;

    move-result-object v3

    iget-object p1, v3, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object p2, p2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/b2;->D1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public G1()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/r2;->K()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public I()Landroidx/media3/common/r;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->U:Landroidx/media3/common/r;

    return-object v0
.end method

.method public K()Lu1/b;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->k0:Lu1/b;

    return-object v0
.end method

.method public L(Landroidx/media3/common/a0$d;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/a0$d;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/t;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public L1()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/r3;->p:Z

    return v0
.end method

.method public M(Landroidx/media3/common/a0$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/a0$d;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/t;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public R()Landroidx/media3/common/r;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->V:Landroidx/media3/common/r;

    return-object v0
.end method

.method public S(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/b2;->y1(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->p1(ILjava/util/List;)V

    return-void
.end method

.method public T(ILandroidx/media3/exoplayer/source/r;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->p1(ILjava/util/List;)V

    return-void
.end method

.method public U(Landroidx/media3/exoplayer/source/r;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/b2;->y2(Ljava/util/List;)V

    return-void
.end method

.method public V(Landroidx/media3/common/h0;)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->i:Lj2/e0;

    invoke-virtual {v0}, Lj2/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->i:Lj2/e0;

    invoke-virtual {v0}, Lj2/e0;->c()Landroidx/media3/common/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/h0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->i:Lj2/e0;

    invoke-virtual {v0, p1}, Lj2/e0;->m(Landroidx/media3/common/h0;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/q1;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/q1;-><init>(Landroidx/media3/common/h0;)V

    const/16 p1, 0x13

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public W()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->C:Landroidx/media3/exoplayer/k4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/k4;->m()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public X(Landroidx/media3/exoplayer/source/r;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/b2;->q1(Ljava/util/List;)V

    return-void
.end method

.method public b(Landroidx/media3/common/z;)V
    .locals 10

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    if-nez p1, :cond_0

    sget-object p1, Landroidx/media3/common/z;->d:Landroidx/media3/common/z;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    invoke-virtual {v0, p1}, Landroidx/media3/common/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r3;->g(Landroidx/media3/common/z;)Landroidx/media3/exoplayer/r3;

    move-result-object v2

    iget v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r2;->n1(Landroidx/media3/common/z;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public bridge synthetic c()Landroidx/media3/common/PlaybackException;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->c()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-object v0
.end method

.method public clearVideoSurface()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->v2()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/b2;->p2(II)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/b2;->u1(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->b0:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->r:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->y1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/b2;->z2(Ljava/util/List;Z)V

    return-void
.end method

.method protected e0(IJIZ)V
    .locals 10

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x1

    if-ltz p1, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/e0;->p()I

    move-result v1

    if-lt p1, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    invoke-interface {v1}, Ly1/a;->m()V

    iget v1, p0, Landroidx/media3/exoplayer/b2;->K:I

    add-int/2addr v1, p4

    iput v1, p0, Landroidx/media3/exoplayer/b2;->K:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroidx/media3/exoplayer/r2$e;

    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/r2$e;-><init>(Landroidx/media3/exoplayer/r3;)V

    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    iget-object p2, p0, Landroidx/media3/exoplayer/b2;->k:Landroidx/media3/exoplayer/r2$f;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/r2$f;->a(Landroidx/media3/exoplayer/r2$e;)V

    return-void

    :cond_3
    iget-object p4, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget v1, p4, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object p4, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    const/4 v1, 0x2

    invoke-static {p4, v1}, Landroidx/media3/exoplayer/b2;->m2(Landroidx/media3/exoplayer/r3;I)Landroidx/media3/exoplayer/r3;

    move-result-object p4

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->t()I

    move-result v8

    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/b2;->o2(Landroidx/media3/common/e0;IJ)Landroid/util/Pair;

    move-result-object v1

    invoke-direct {p0, p4, v0, v1}, Landroidx/media3/exoplayer/b2;->n2(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0;Landroid/util/Pair;)Landroidx/media3/exoplayer/r3;

    move-result-object v2

    iget-object p4, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide p2

    invoke-virtual {p4, v0, p1, p2, p3}, Landroidx/media3/exoplayer/r2;->U0(Landroidx/media3/common/e0;IJ)V

    const/4 v5, 0x1

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/b2;->D1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move v9, p5

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->q:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->C1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget v0, v0, Landroidx/media3/exoplayer/source/r$b;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget v0, v0, Landroidx/media3/exoplayer/source/r$b;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/b2;->w0:I

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->D1(Landroidx/media3/exoplayer/r3;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/e0;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/i0;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    iget-object v0, v0, Lj2/f0;->d:Landroidx/media3/common/i0;

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    iget v2, v1, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v1, v1, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/e0$b;->b(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/g;->Q()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/r3;->l:Z

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/z;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget v0, v0, Landroidx/media3/exoplayer/r3;->e:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget v0, p0, Landroidx/media3/exoplayer/b2;->I:I

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/b2;->J:Z

    return v0
.end method

.method public getVolume()F
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget v0, p0, Landroidx/media3/exoplayer/b2;->i0:F

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget v0, v0, Landroidx/media3/exoplayer/r3;->n:I

    return v0
.end method

.method public k()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->t:Landroid/os/Looper;

    return-object v0
.end method

.method public l()Landroidx/media3/common/h0;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->i:Lj2/e0;

    invoke-virtual {v0}, Lj2/e0;->c()Landroidx/media3/common/h0;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroidx/media3/common/a0$b;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->R:Landroidx/media3/common/a0$b;

    return-object v0
.end method

.method public n1(Landroidx/media3/exoplayer/ExoPlayer$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/b2;->x:J

    return-wide v0
.end method

.method public p()Landroidx/media3/common/m0;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->s0:Landroidx/media3/common/m0;

    return-object v0
.end method

.method public p1(ILjava/util/List;)V
    .locals 10

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/b2;->v0:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, p2, v0}, Landroidx/media3/exoplayer/b2;->z2(Ljava/util/List;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/b2;->r1(Landroidx/media3/exoplayer/r3;ILjava/util/List;)Landroidx/media3/exoplayer/r3;

    move-result-object v2

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public prepare()V
    .locals 12

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget v1, v0, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/b2;->m2(Landroidx/media3/exoplayer/r3;I)Landroidx/media3/exoplayer/r3;

    move-result-object v4

    iget v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/b2;->K:I

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/r2;->B0()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Landroidx/media3/exoplayer/b2;->J2(Landroidx/media3/exoplayer/r3;IZIJIZ)V

    return-void
.end method

.method public q1(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/b2;->p1(ILjava/util/List;)V

    return-void
.end method

.method public r()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/b2;->w:J

    return-wide v0
.end method

.method public release()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AndroidXMedia3/1.7.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/util/a1;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/media3/common/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->B:Landroidx/media3/exoplayer/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/e;->f(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->C:Landroidx/media3/exoplayer/k4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/k4;->t()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->D:Landroidx/media3/exoplayer/p4;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/p4;->f(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->E:Landroidx/media3/exoplayer/s4;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/s4;->f(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->G:Landroidx/media3/exoplayer/m4;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/m4;->disable()V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/r2;->D0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v2, Landroidx/media3/exoplayer/g1;

    invoke-direct {v2}, Landroidx/media3/exoplayer/g1;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    invoke-virtual {v0}, Landroidx/media3/common/util/t;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->j:Landroidx/media3/common/util/p;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroidx/media3/common/util/p;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u:Landroidx/media3/exoplayer/upstream/e;

    iget-object v3, p0, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/upstream/e;->c(Landroidx/media3/exoplayer/upstream/e$a;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/r3;->p:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/r3;->a()Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/media3/exoplayer/b2;->m2(Landroidx/media3/exoplayer/r3;I)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v4, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/r3;->c(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-wide v4, v0, Landroidx/media3/exoplayer/r3;->s:J

    iput-wide v4, v0, Landroidx/media3/exoplayer/r3;->q:J

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroidx/media3/exoplayer/r3;->r:J

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->s:Ly1/a;

    invoke-interface {v0}, Ly1/a;->release()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->v2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->X:Landroid/view/Surface;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Landroidx/media3/exoplayer/b2;->X:Landroid/view/Surface;

    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/b2;->p0:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->o0:Landroidx/media3/common/PriorityTaskManager;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/PriorityTaskManager;

    iget v2, p0, Landroidx/media3/exoplayer/b2;->n0:I

    invoke-virtual {v0, v2}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/b2;->p0:Z

    :cond_5
    sget-object v0, Lu1/b;->c:Lu1/b;

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->k0:Lu1/b;

    iput-boolean v3, p0, Landroidx/media3/exoplayer/b2;->q0:Z

    return-void
.end method

.method public setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x4

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/b2;->w2(IILjava/lang/Object;)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/b2;->I2(ZI)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget v0, p0, Landroidx/media3/exoplayer/b2;->I:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/exoplayer/b2;->I:I

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r2;->q1(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/h1;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/h1;-><init>(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->G2()V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    invoke-virtual {p1}, Landroidx/media3/common/util/t;->f()V

    :cond_0
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/b2;->J:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/b2;->J:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r2;->t1(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/i1;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/i1;-><init>(Z)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->i(ILandroidx/media3/common/util/t$a;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->G2()V

    iget-object p1, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    invoke-virtual {p1}, Landroidx/media3/common/util/t;->f()V

    :cond_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    instance-of v0, p1, Landroidx/media3/exoplayer/video/s;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->v2()V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->B2(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->v2()V

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->A:Landroidx/media3/exoplayer/b2$d;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->z1(Landroidx/media3/exoplayer/t3$b;)Landroidx/media3/exoplayer/t3;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/t3;->m(I)Landroidx/media3/exoplayer/t3;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/t3;->l(Ljava/lang/Object;)Landroidx/media3/exoplayer/t3;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/t3;->k()Landroidx/media3/exoplayer/t3;

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->Z:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b2;->B2(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/b2;->E2(Landroid/view/SurfaceHolder;)V

    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->clearVideoSurface()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->v2()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b2;->b0:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->z:Landroidx/media3/exoplayer/b2$c;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/b2;->D2(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroidx/media3/exoplayer/b2;->p2(II)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->C2(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/b2;->p2(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/a1;->o(FFF)F

    move-result p1

    iget v0, p0, Landroidx/media3/exoplayer/b2;->i0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/b2;->i0:F

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->l:Landroidx/media3/exoplayer/r2;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r2;->z1(F)V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->m:Landroidx/media3/common/util/t;

    new-instance v1, Landroidx/media3/exoplayer/e1;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/e1;-><init>(F)V

    const/16 p1, 0x16

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public stop()V
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->F2(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    new-instance v0, Lu1/b;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-wide v2, v2, Landroidx/media3/exoplayer/r3;->s:J

    invoke-direct {v0, v1, v2, v3}, Lu1/b;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, Landroidx/media3/exoplayer/b2;->k0:Lu1/b;

    return-void
.end method

.method public t()I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b2;->E1(Landroidx/media3/exoplayer/r3;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public u()J
    .locals 5

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/b2;->x0:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/r$b;->d:J

    iget-object v3, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/r$b;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->t()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/g;->a:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->d()J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->q:J

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    iget v1, v1, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    iget-wide v0, v0, Landroidx/media3/common/e0$b;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/b2;->u0:Landroidx/media3/exoplayer/r3;

    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {p0, v3, v2, v0, v1}, Landroidx/media3/exoplayer/b2;->s2(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public u1(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->Y:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b2;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public x()Landroidx/media3/common/v;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b2;->S:Landroidx/media3/common/v;

    return-object v0
.end method

.method public y()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/b2;->v:J

    return-wide v0
.end method

.method public y2(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/b2;->z2(Ljava/util/List;Z)V

    return-void
.end method

.method public z2(Ljava/util/List;Z)V
    .locals 6

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2;->M2()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/b2;->A2(Ljava/util/List;IJZ)V

    return-void
.end method
