.class final Landroidx/media3/exoplayer/r2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/q$a;
.implements Lj2/e0$a;
.implements Landroidx/media3/exoplayer/q3$d;
.implements Landroidx/media3/exoplayer/n$a;
.implements Landroidx/media3/exoplayer/t3$a;
.implements Landroidx/media3/exoplayer/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/r2$f;,
        Landroidx/media3/exoplayer/r2$e;,
        Landroidx/media3/exoplayer/r2$h;,
        Landroidx/media3/exoplayer/r2$b;,
        Landroidx/media3/exoplayer/r2$c;,
        Landroidx/media3/exoplayer/r2$d;,
        Landroidx/media3/exoplayer/r2$g;
    }
.end annotation


# static fields
.field private static final e0:J


# instance fields
.field private final A:Z

.field private final B:Landroidx/media3/exoplayer/h;

.field private C:Landroidx/media3/exoplayer/c4;

.field private D:Landroidx/media3/exoplayer/r3;

.field private E:Landroidx/media3/exoplayer/r2$e;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:J

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:Landroidx/media3/exoplayer/r2$h;

.field private S:J

.field private T:J

.field private U:I

.field private V:Z

.field private W:Landroidx/media3/exoplayer/ExoPlaybackException;

.field private X:J

.field private Y:J

.field private Z:Landroidx/media3/exoplayer/ExoPlayer$c;

.field private final a:[Landroidx/media3/exoplayer/a4;

.field private a0:Landroidx/media3/common/e0;

.field private final b:[Landroidx/media3/exoplayer/y3;

.field private b0:J

.field private final c:[Z

.field private c0:Z

.field private final d:Lj2/e0;

.field private d0:F

.field private final e:Lj2/f0;

.field private final f:Landroidx/media3/exoplayer/u2;

.field private final g:Landroidx/media3/exoplayer/upstream/e;

.field private final h:Landroidx/media3/common/util/p;

.field private final i:Landroidx/media3/exoplayer/s3;

.field private final j:Landroid/os/Looper;

.field private final k:Landroidx/media3/common/e0$c;

.field private final l:Landroidx/media3/common/e0$b;

.field private final m:J

.field private final n:Z

.field private final o:Landroidx/media3/exoplayer/n;

.field private final p:Ljava/util/ArrayList;

.field private final q:Landroidx/media3/common/util/i;

.field private final r:Landroidx/media3/exoplayer/r2$f;

.field private final s:Landroidx/media3/exoplayer/b3;

.field private final t:Landroidx/media3/exoplayer/q3;

.field private final u:Landroidx/media3/exoplayer/t2;

.field private final v:J

.field private final w:Ly1/f4;

.field private final x:Z

.field private final y:Ly1/a;

.field private final z:Landroidx/media3/common/util/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/media3/exoplayer/r2;->e0:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroidx/media3/exoplayer/w3;[Landroidx/media3/exoplayer/w3;Lj2/e0;Lj2/f0;Landroidx/media3/exoplayer/u2;Landroidx/media3/exoplayer/upstream/e;IZLy1/a;Landroidx/media3/exoplayer/c4;Landroidx/media3/exoplayer/t2;JZZLandroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/exoplayer/r2$f;Ly1/f4;Landroidx/media3/exoplayer/s3;Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-wide/from16 v6, p13

    move-object/from16 v8, p18

    move-object/from16 v9, p20

    move-object/from16 v10, p22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v11, v0, Landroidx/media3/exoplayer/r2;->b0:J

    move-object/from16 v13, p19

    iput-object v13, v0, Landroidx/media3/exoplayer/r2;->r:Landroidx/media3/exoplayer/r2$f;

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->d:Lj2/e0;

    move-object/from16 v13, p5

    iput-object v13, v0, Landroidx/media3/exoplayer/r2;->e:Lj2/f0;

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    iput-object v4, v0, Landroidx/media3/exoplayer/r2;->g:Landroidx/media3/exoplayer/upstream/e;

    move/from16 v14, p8

    iput v14, v0, Landroidx/media3/exoplayer/r2;->L:I

    move/from16 v14, p9

    iput-boolean v14, v0, Landroidx/media3/exoplayer/r2;->M:Z

    move-object/from16 v14, p11

    iput-object v14, v0, Landroidx/media3/exoplayer/r2;->C:Landroidx/media3/exoplayer/c4;

    move-object/from16 v14, p12

    iput-object v14, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    iput-wide v6, v0, Landroidx/media3/exoplayer/r2;->v:J

    iput-wide v6, v0, Landroidx/media3/exoplayer/r2;->X:J

    move/from16 v6, p15

    iput-boolean v6, v0, Landroidx/media3/exoplayer/r2;->G:Z

    move/from16 v6, p16

    iput-boolean v6, v0, Landroidx/media3/exoplayer/r2;->x:Z

    iput-object v8, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    iput-object v9, v0, Landroidx/media3/exoplayer/r2;->w:Ly1/f4;

    iput-object v10, v0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    iput-object v5, v0, Landroidx/media3/exoplayer/r2;->y:Ly1/a;

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Landroidx/media3/exoplayer/r2;->d0:F

    iput-wide v11, v0, Landroidx/media3/exoplayer/r2;->Y:J

    iput-wide v11, v0, Landroidx/media3/exoplayer/r2;->J:J

    invoke-interface {v3, v9}, Landroidx/media3/exoplayer/u2;->h(Ly1/f4;)J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/exoplayer/r2;->m:J

    invoke-interface {v3, v9}, Landroidx/media3/exoplayer/u2;->i(Ly1/f4;)Z

    move-result v3

    iput-boolean v3, v0, Landroidx/media3/exoplayer/r2;->n:Z

    sget-object v3, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->a0:Landroidx/media3/common/e0;

    invoke-static/range {p5 .. p5}, Landroidx/media3/exoplayer/r3;->k(Lj2/f0;)Landroidx/media3/exoplayer/r3;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    new-instance v6, Landroidx/media3/exoplayer/r2$e;

    invoke-direct {v6, v3}, Landroidx/media3/exoplayer/r2$e;-><init>(Landroidx/media3/exoplayer/r3;)V

    iput-object v6, v0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    array-length v3, v1

    new-array v3, v3, [Landroidx/media3/exoplayer/y3;

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    array-length v3, v1

    new-array v3, v3, [Z

    iput-object v3, v0, Landroidx/media3/exoplayer/r2;->c:[Z

    invoke-virtual/range {p4 .. p4}, Lj2/e0;->d()Landroidx/media3/exoplayer/y3$a;

    move-result-object v3

    array-length v6, v1

    new-array v6, v6, [Landroidx/media3/exoplayer/a4;

    iput-object v6, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v6, v11, :cond_2

    aget-object v11, v1, v6

    invoke-interface {v11, v6, v9, v8}, Landroidx/media3/exoplayer/w3;->g(ILy1/f4;Landroidx/media3/common/util/i;)V

    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    aget-object v13, v1, v6

    invoke-interface {v13}, Landroidx/media3/exoplayer/w3;->getCapabilities()Landroidx/media3/exoplayer/y3;

    move-result-object v13

    aput-object v13, v11, v6

    if-eqz v3, :cond_0

    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    aget-object v11, v11, v6

    invoke-interface {v11, v3}, Landroidx/media3/exoplayer/y3;->n(Landroidx/media3/exoplayer/y3$a;)V

    :cond_0
    aget-object v11, p3, v6

    if-eqz v11, :cond_1

    array-length v7, v1

    add-int/2addr v7, v6

    invoke-interface {v11, v7, v9, v8}, Landroidx/media3/exoplayer/w3;->g(ILy1/f4;Landroidx/media3/common/util/i;)V

    move v7, v12

    :cond_1
    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    new-instance v12, Landroidx/media3/exoplayer/a4;

    aget-object v13, v1, v6

    aget-object v14, p3, v6

    invoke-direct {v12, v13, v14, v6}, Landroidx/media3/exoplayer/a4;-><init>(Landroidx/media3/exoplayer/w3;Landroidx/media3/exoplayer/w3;I)V

    aput-object v12, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v7, v0, Landroidx/media3/exoplayer/r2;->A:Z

    new-instance v1, Landroidx/media3/exoplayer/n;

    invoke-direct {v1, p0, v8}, Landroidx/media3/exoplayer/n;-><init>(Landroidx/media3/exoplayer/n$a;Landroidx/media3/common/util/i;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media3/common/e0$c;

    invoke-direct {v1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    new-instance v1, Landroidx/media3/common/e0$b;

    invoke-direct {v1}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {v2, p0, v4}, Lj2/e0;->e(Lj2/e0$a;Landroidx/media3/exoplayer/upstream/e;)V

    iput-boolean v12, v0, Landroidx/media3/exoplayer/r2;->V:Z

    const/4 v1, 0x0

    move-object/from16 v2, p17

    invoke-interface {v8, v2, v1}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->z:Landroidx/media3/common/util/p;

    new-instance v2, Landroidx/media3/exoplayer/b3;

    new-instance v3, Landroidx/media3/exoplayer/o2;

    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/o2;-><init>(Landroidx/media3/exoplayer/r2;)V

    invoke-direct {v2, v5, v1, v3, v10}, Landroidx/media3/exoplayer/b3;-><init>(Ly1/a;Landroidx/media3/common/util/p;Landroidx/media3/exoplayer/y2$a;Landroidx/media3/exoplayer/ExoPlayer$c;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    new-instance v2, Landroidx/media3/exoplayer/q3;

    invoke-direct {v2, p0, v5, v1, v9}, Landroidx/media3/exoplayer/q3;-><init>(Landroidx/media3/exoplayer/q3$d;Ly1/a;Landroidx/media3/common/util/p;Ly1/f4;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    if-nez p21, :cond_3

    new-instance v1, Landroidx/media3/exoplayer/s3;

    invoke-direct {v1}, Landroidx/media3/exoplayer/s3;-><init>()V

    goto :goto_1

    :cond_3
    move-object/from16 v1, p21

    :goto_1
    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->i:Landroidx/media3/exoplayer/s3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/s3;->a()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    invoke-interface {v8, v1, p0}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    new-instance v2, Landroidx/media3/exoplayer/h;

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v1, p0}, Landroidx/media3/exoplayer/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/exoplayer/h$a;)V

    iput-object v2, v0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    return-void
.end method

.method private A()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {v1}, Landroidx/media3/common/util/i;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroidx/media3/common/util/p;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->O1()V

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1c

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/r2;->T0(J)V

    return-void

    :cond_1
    const-string v7, "doSomeWork"

    invoke-static {v7}, Landroidx/media3/common/util/q0;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->T1()V

    iget-boolean v7, v3, Landroidx/media3/exoplayer/y2;->f:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {v7}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/exoplayer/r2;->T:J

    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    iget-object v9, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v9, v9, Landroidx/media3/exoplayer/r3;->s:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/r2;->m:J

    sub-long/2addr v9, v11

    iget-boolean v11, v0, Landroidx/media3/exoplayer/r2;->n:Z

    invoke-interface {v7, v9, v10, v11}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    move v9, v5

    move v10, v9

    move v7, v8

    :goto_0
    iget-object v11, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v12, v11

    if-ge v7, v12, :cond_7

    aget-object v11, v11, v7

    invoke-virtual {v11}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v12

    if-nez v12, :cond_2

    invoke-direct {v0, v7, v8}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    goto :goto_3

    :cond_2
    iget-wide v12, v0, Landroidx/media3/exoplayer/r2;->S:J

    iget-wide v14, v0, Landroidx/media3/exoplayer/r2;->T:J

    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/media3/exoplayer/a4;->I(JJ)V

    if-eqz v9, :cond_3

    invoke-virtual {v11}, Landroidx/media3/exoplayer/a4;->t()Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v5

    goto :goto_1

    :cond_3
    move v9, v8

    :goto_1
    invoke-virtual {v11, v3}, Landroidx/media3/exoplayer/a4;->a(Landroidx/media3/exoplayer/y2;)Z

    move-result v11

    invoke-direct {v0, v7, v11}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    move v10, v5

    goto :goto_2

    :cond_4
    move v10, v8

    :goto_2
    if-nez v11, :cond_5

    invoke-direct {v0, v7}, Landroidx/media3/exoplayer/r2;->l0(I)V

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v7}, Landroidx/media3/exoplayer/source/q;->maybeThrowPrepareError()V

    move v9, v5

    move v10, v9

    :cond_7
    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v11, v7, Landroidx/media3/exoplayer/z2;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v9, :cond_9

    iget-boolean v7, v3, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v7, :cond_9

    cmp-long v7, v11, v13

    if-eqz v7, :cond_8

    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v13, v7, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v7, v11, v13

    if-gtz v7, :cond_9

    :cond_8
    move v7, v5

    goto :goto_4

    :cond_9
    move v7, v8

    :goto_4
    if-eqz v7, :cond_a

    iget-boolean v9, v0, Landroidx/media3/exoplayer/r2;->H:Z

    if-eqz v9, :cond_a

    iput-boolean v8, v0, Landroidx/media3/exoplayer/r2;->H:Z

    iget-object v9, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v9, v9, Landroidx/media3/exoplayer/r3;->n:I

    const/4 v11, 0x5

    invoke-direct {v0, v8, v9, v8, v11}, Landroidx/media3/exoplayer/r2;->m1(ZIZI)V

    :cond_a
    const/4 v9, 0x3

    if-eqz v7, :cond_b

    iget-object v7, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-boolean v7, v7, Landroidx/media3/exoplayer/z2;->j:Z

    if-eqz v7, :cond_b

    invoke-direct {v0, v6}, Landroidx/media3/exoplayer/r2;->w1(I)V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->J1()V

    goto :goto_5

    :cond_b
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v7, v7, Landroidx/media3/exoplayer/r3;->e:I

    if-ne v7, v4, :cond_c

    invoke-direct {v0, v10}, Landroidx/media3/exoplayer/r2;->E1(Z)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {v0, v9}, Landroidx/media3/exoplayer/r2;->w1(I)V

    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {v0, v8, v8}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/n;->f()V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->G1()V

    goto :goto_5

    :cond_c
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v7, v7, Landroidx/media3/exoplayer/r3;->e:I

    if-ne v7, v9, :cond_10

    iget v7, v0, Landroidx/media3/exoplayer/r2;->Q:I

    if-nez v7, :cond_d

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->b0()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_5

    :cond_d
    if-nez v10, :cond_10

    :cond_e
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v7

    invoke-direct {v0, v7, v8}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/r2;->w1(I)V

    iget-boolean v7, v0, Landroidx/media3/exoplayer/r2;->I:Z

    if-eqz v7, :cond_f

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->z0()V

    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    invoke-interface {v7}, Landroidx/media3/exoplayer/t2;->c()V

    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->J1()V

    :cond_10
    :goto_5
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v7, v7, Landroidx/media3/exoplayer/r3;->e:I

    if-ne v7, v4, :cond_15

    move v7, v8

    :goto_6
    iget-object v10, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v11, v10

    if-ge v7, v11, :cond_12

    aget-object v10, v10, v7

    invoke-virtual {v10, v3}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-direct {v0, v7}, Landroidx/media3/exoplayer/r2;->l0(I)V

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_12
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v7, v3, Landroidx/media3/exoplayer/r3;->g:Z

    if-nez v7, :cond_15

    iget-wide v10, v3, Landroidx/media3/exoplayer/r3;->r:J

    const-wide/32 v12, 0x7a120

    cmp-long v3, v10, v12

    if-gez v3, :cond_15

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/r2;->a0(Landroidx/media3/exoplayer/y2;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-wide v10, v0, Landroidx/media3/exoplayer/r2;->Y:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v12

    if-nez v3, :cond_13

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {v3}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Landroidx/media3/exoplayer/r2;->Y:J

    goto :goto_7

    :cond_13
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {v3}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Landroidx/media3/exoplayer/r2;->Y:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xfa0

    cmp-long v3, v10, v12

    if-gez v3, :cond_14

    goto :goto_7

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v0, Landroidx/media3/exoplayer/r2;->Y:J

    :goto_7
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    if-ne v3, v9, :cond_16

    move v3, v5

    goto :goto_8

    :cond_16
    move v3, v8

    :goto_8
    iget-boolean v7, v0, Landroidx/media3/exoplayer/r2;->P:Z

    if-eqz v7, :cond_17

    iget-boolean v7, v0, Landroidx/media3/exoplayer/r2;->O:Z

    if-eqz v7, :cond_17

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v5, v8

    :goto_9
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v10, v7, Landroidx/media3/exoplayer/r3;->p:Z

    if-eq v10, v5, :cond_18

    invoke-virtual {v7, v5}, Landroidx/media3/exoplayer/r3;->i(Z)Landroidx/media3/exoplayer/r3;

    move-result-object v7

    iput-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_18
    iput-boolean v8, v0, Landroidx/media3/exoplayer/r2;->O:Z

    if-nez v5, :cond_1b

    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v5, v5, Landroidx/media3/exoplayer/r3;->e:I

    if-ne v5, v6, :cond_19

    goto :goto_a

    :cond_19
    if-nez v3, :cond_1a

    if-eq v5, v4, :cond_1a

    if-ne v5, v9, :cond_1b

    iget v3, v0, Landroidx/media3/exoplayer/r2;->Q:I

    if-eqz v3, :cond_1b

    :cond_1a
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/r2;->T0(J)V

    :cond_1b
    :goto_a
    invoke-static {}, Landroidx/media3/common/util/q0;->b()V

    :cond_1c
    :goto_b
    return-void
.end method

.method private A1(F)V
    .locals 4

    iput p1, p0, Landroidx/media3/exoplayer/r2;->d0:F

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/h;->f()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->T(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private B(Landroidx/media3/exoplayer/y2;IZJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->x()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_1

    move/from16 v17, v5

    goto :goto_0

    :cond_1
    move/from16 v17, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v3

    iget-object v6, v3, Lj2/f0;->b:[Landroidx/media3/exoplayer/z3;

    aget-object v6, v6, p2

    iget-object v3, v3, Lj2/f0;->c:[Lj2/z;

    aget-object v7, v3, p2

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    move/from16 v18, v5

    goto :goto_1

    :cond_2
    move/from16 v18, v4

    :goto_1
    if-nez p3, :cond_3

    if-eqz v18, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    iget v3, v0, Landroidx/media3/exoplayer/r2;->Q:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/media3/exoplayer/r2;->Q:I

    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    aget-object v8, v3, p2

    iget-wide v10, v0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v13

    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v15, v3, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v12, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    move-object v3, v2

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-wide v7, v10

    move/from16 v10, v17

    move-object/from16 v16, v12

    move-wide/from16 v11, p4

    invoke-virtual/range {v3 .. v16}, Landroidx/media3/exoplayer/a4;->e(Landroidx/media3/exoplayer/z3;Lj2/z;Lg2/u;JZZJJLandroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/n;)V

    new-instance v3, Landroidx/media3/exoplayer/r2$a;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/r2$a;-><init>(Landroidx/media3/exoplayer/r2;)V

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3, v1}, Landroidx/media3/exoplayer/a4;->n(ILjava/lang/Object;Landroidx/media3/exoplayer/y2;)V

    if-eqz v18, :cond_4

    if-eqz v17, :cond_4

    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->U()V

    :cond_4
    return-void
.end method

.method private B1()Z
    .locals 6

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->H:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->i:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private C()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v0, v0

    new-array v0, v0, [Z

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->D([ZJ)V

    return-void
.end method

.method private C0()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->w:Ly1/f4;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/u2;->c(Ly1/f4;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->w1(I)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->Q1()V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->g:Landroidx/media3/exoplayer/upstream/e;

    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/e;->b()Lw1/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/q3;->w(Lw1/n;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    return-void
.end method

.method private C1()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/r2;->a0(Landroidx/media3/exoplayer/y2;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->l()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Landroidx/media3/exoplayer/r2;->M(J)J

    move-result-wide v3

    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v5

    if-ne v1, v5, :cond_1

    iget-wide v5, v0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v1, v5, v6}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v5

    :goto_0
    move-wide v9, v5

    goto :goto_1

    :cond_1
    iget-wide v5, v0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v1, v5, v6}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v5

    iget-object v7, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v7, v7, Landroidx/media3/exoplayer/z2;->b:J

    sub-long/2addr v5, v7

    goto :goto_0

    :goto_1
    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v5, v5, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v6, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v6, v6, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {v0, v5, v6}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    invoke-interface {v5}, Landroidx/media3/exoplayer/t2;->b()J

    move-result-wide v5

    :goto_2
    move-wide/from16 v16, v5

    goto :goto_3

    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :goto_3
    new-instance v15, Landroidx/media3/exoplayer/u2$a;

    iget-object v6, v0, Landroidx/media3/exoplayer/r2;->w:Ly1/f4;

    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v7, v5, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v8, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v1

    iget v13, v1, Landroidx/media3/common/z;->a:F

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v14, v1, Landroidx/media3/exoplayer/r3;->l:Z

    iget-boolean v1, v0, Landroidx/media3/exoplayer/r2;->I:Z

    iget-wide v11, v0, Landroidx/media3/exoplayer/r2;->J:J

    move-object v5, v15

    move-wide/from16 v18, v11

    move-wide v11, v3

    move-object v2, v15

    move v15, v1

    invoke-direct/range {v5 .. v19}, Landroidx/media3/exoplayer/u2$a;-><init>(Ly1/f4;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJFZZJJ)V

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/u2;->f(Landroidx/media3/exoplayer/u2$a;)Z

    move-result v1

    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v5

    if-nez v1, :cond_4

    iget-boolean v6, v5, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v6, :cond_4

    const-wide/32 v6, 0x7a120

    cmp-long v3, v3, v6

    if-gez v3, :cond_4

    iget-wide v3, v0, Landroidx/media3/exoplayer/r2;->m:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-gtz v3, :cond_3

    iget-boolean v3, v0, Landroidx/media3/exoplayer/r2;->n:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v1, v5, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v3, v3, Landroidx/media3/exoplayer/r3;->s:J

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/u2;->f(Landroidx/media3/exoplayer/u2$a;)Z

    move-result v1

    :cond_4
    return v1
.end method

.method private D([ZJ)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v7, v2}, Lj2/f0;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->L()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v1

    if-ge v8, v1, :cond_3

    invoke-virtual {v7, v8}, Lj2/f0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, v8

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-boolean v4, p1, v8

    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->B(Landroidx/media3/exoplayer/y2;IZJ)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private D1()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/media3/exoplayer/r3;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private E0()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0, v1, v0}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->F0()V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->w:Ly1/f4;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/u2;->b(Ly1/f4;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/h;->i()V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->d:Lj2/e0;

    invoke-virtual {v0}, Lj2/e0;->j()V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->w1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->i:Landroidx/media3/exoplayer/s3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/s3;->b()V

    monitor-enter p0

    :try_start_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/r2;->F:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->i:Landroidx/media3/exoplayer/s3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/s3;->b()V

    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/r2;->F:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private E1(Z)Z
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/r2;->Q:I

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->b0()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/r3;->g:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v4, v4, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v5, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v5, v5, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {v0, v4, v5}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    invoke-interface {v4}, Landroidx/media3/exoplayer/t2;->b()J

    move-result-wide v4

    :goto_0
    move-wide/from16 v17, v4

    goto :goto_1

    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/y2;->s()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/z2;->j:Z

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    iget-object v6, v4, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v6, v6, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, v4, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v6, :cond_5

    move v1, v3

    :cond_5
    if-nez v5, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroidx/media3/exoplayer/y2;->j()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Landroidx/media3/exoplayer/r2;->M(J)J

    move-result-wide v12

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    new-instance v3, Landroidx/media3/exoplayer/u2$a;

    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->w:Ly1/f4;

    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v8, v4, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v4, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v9, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v4, v0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v2, v4, v5}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v10

    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v2

    iget v14, v2, Landroidx/media3/common/z;->a:F

    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v15, v2, Landroidx/media3/exoplayer/r3;->l:Z

    iget-boolean v2, v0, Landroidx/media3/exoplayer/r2;->I:Z

    iget-wide v4, v0, Landroidx/media3/exoplayer/r2;->J:J

    move-object v6, v3

    move/from16 v16, v2

    move-wide/from16 v19, v4

    invoke-direct/range {v6 .. v20}, Landroidx/media3/exoplayer/u2$a;-><init>(Ly1/f4;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJFZZJJ)V

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/u2;->a(Landroidx/media3/exoplayer/u2$a;)Z

    move-result v1

    return v1

    :cond_7
    :goto_3
    return v3
.end method

.method private F([Lj2/z;)Lcom/google/common/collect/ImmutableList;
    .locals 7

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    invoke-interface {v5, v2}, Lj2/c0;->getFormat(I)Landroidx/media3/common/r;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/media3/common/x;

    new-array v6, v2, [Landroidx/media3/common/x$a;

    invoke-direct {v5, v6}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private F0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/exoplayer/y3;->f()V

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->H()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z
    .locals 4

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-boolean p2, p1, Landroidx/media3/common/e0$c;->i:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Landroidx/media3/common/e0$c;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private G()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v2, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v3, v0, Landroidx/media3/exoplayer/r3;->s:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/r2;->H(Landroidx/media3/common/e0;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private G0(IILg2/v;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/q3;->A(IILg2/v;)Landroidx/media3/common/e0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    return-void
.end method

.method private G1()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lj2/f0;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->U()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private H(Landroidx/media3/common/e0;Ljava/lang/Object;J)J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-wide v0, p1, Landroidx/media3/common/e0$c;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-boolean p2, p1, Landroidx/media3/common/e0$c;->i:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/e0$c;->a()J

    move-result-wide p1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-wide v0, v0, Landroidx/media3/common/e0$c;->f:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide p1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {v0}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method private I(Landroidx/media3/exoplayer/y2;)J
    .locals 8

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v0

    iget-boolean v2, p1, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->k(Landroidx/media3/exoplayer/y2;)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    return-wide v5

    :cond_3
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method private I0()V
    .locals 18

    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/z;->a:F

    iget-object v1, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    iget-object v2, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v3, 0x0

    move v4, v11

    :goto_0
    if-eqz v1, :cond_d

    iget-boolean v5, v1, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v5, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v6, v5, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/r3;->l:Z

    invoke-virtual {v1, v0, v6, v5}, Landroidx/media3/exoplayer/y2;->z(FLandroidx/media3/common/e0;Z)Lj2/f0;

    move-result-object v5

    iget-object v6, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v6

    if-ne v1, v6, :cond_1

    move-object v3, v5

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v6

    invoke-virtual {v5, v6}, Lj2/f0;->a(Lj2/f0;)Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v13, 0x4

    if-eqz v4, :cond_7

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v14

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, v14}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    move-result v0

    and-int/2addr v0, v11

    if-eqz v0, :cond_2

    move v8, v11

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v0, v0

    new-array v15, v0, [Z

    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lj2/f0;

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v6, v0, Landroidx/media3/exoplayer/r3;->s:J

    move-object v4, v14

    move-object v9, v15

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/y2;->b(Lj2/f0;JZ[Z)J

    move-result-wide v8

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v1, v0, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v1, v13, :cond_3

    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    move/from16 v16, v11

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v4, v0, Landroidx/media3/exoplayer/r3;->c:J

    iget-wide v6, v0, Landroidx/media3/exoplayer/r3;->d:J

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move-wide v2, v8

    move-wide v11, v8

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    if-eqz v16, :cond_4

    invoke-direct {v10, v11, v12}, Landroidx/media3/exoplayer/r2;->M0(J)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_3
    iget-object v2, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v2

    iget-object v3, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->x()Z

    move-result v3

    aput-boolean v3, v0, v1

    iget-object v3, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v4, v3, v1

    iget-object v3, v14, Landroidx/media3/exoplayer/y2;->c:[Lg2/u;

    aget-object v5, v3, v1

    iget-object v6, v10, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    iget-wide v7, v10, Landroidx/media3/exoplayer/r2;->S:J

    aget-boolean v9, v15, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/a4;->B(Lg2/u;Landroidx/media3/exoplayer/n;JZ)V

    iget-object v3, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v3

    sub-int v3, v2, v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    invoke-direct {v10, v1, v3}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    :cond_5
    iget v3, v10, Landroidx/media3/exoplayer/r2;->Q:I

    iget-object v4, v10, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v3, v2

    iput v3, v10, Landroidx/media3/exoplayer/r2;->Q:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-wide v1, v10, Landroidx/media3/exoplayer/r2;->S:J

    invoke-direct {v10, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->D([ZJ)V

    const/4 v0, 0x1

    iput-boolean v0, v14, Landroidx/media3/exoplayer/y2;->i:Z

    move v5, v0

    goto :goto_4

    :cond_7
    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    iget-boolean v0, v1, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v2, v0, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v6, v10, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-boolean v0, v10, Landroidx/media3/exoplayer/r2;->A:Z

    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-ne v0, v1, :cond_8

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v2, v3, v6}, Landroidx/media3/exoplayer/y2;->a(Lj2/f0;JZ)J

    :cond_9
    const/4 v5, 0x1

    :goto_4
    invoke-direct {v10, v5}, Landroidx/media3/exoplayer/r2;->R(Z)V

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v0, v0, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v0, v13, :cond_a

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->g0()V

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->T1()V

    iget-object v0, v10, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    :cond_a
    return-void

    :cond_b
    move v5, v11

    const/4 v6, 0x0

    if-ne v1, v2, :cond_c

    move v4, v6

    :cond_c
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    move v11, v5

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void
.end method

.method private I1(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/r2;->N:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->w:Ly1/f4;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/u2;->d(Ly1/f4;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean p2, p2, Landroidx/media3/exoplayer/r3;->l:Z

    invoke-virtual {p1, p2, v1}, Landroidx/media3/exoplayer/h;->o(ZI)I

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->w1(I)V

    return-void
.end method

.method private J(Landroidx/media3/common/e0;)Landroid/util/Pair;
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/media3/exoplayer/r3;->l()Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->M:Z

    invoke-virtual {p1, v0}, Landroidx/media3/common/e0;->a(Z)I

    move-result v6

    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v1, v2}, Landroidx/media3/exoplayer/b3;->R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v0, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget p1, v3, Landroidx/media3/exoplayer/source/r$b;->c:I

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    iget v4, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v0, v4}, Landroidx/media3/common/e0$b;->l(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {p1}, Landroidx/media3/common/e0$b;->g()J

    move-result-wide v1

    :cond_1
    move-wide v4, v1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private J0()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->I0()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    return-void
.end method

.method private J1()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->g()V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->W()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private K0(ZZZZ)V
    .locals 33

    move-object/from16 v1, p0

    const-string v2, "ExoPlayerImplInternal"

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroidx/media3/common/util/p;->removeMessages(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->g()V

    const-wide v6, 0xe8d4a51000L

    iput-wide v6, v1, Landroidx/media3/exoplayer/r2;->S:J

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->z()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v6, "Disable failed."

    invoke-static {v2, v6, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz p1, :cond_0

    iget-object v6, v1, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v7, v6

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_0

    aget-object v0, v6, v8

    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/a4;->L()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v9, v0

    const-string v0, "Reset failed."

    invoke-static {v2, v0, v9}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    iput v4, v1, Landroidx/media3/exoplayer/r2;->Q:I

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v6, v0, Landroidx/media3/exoplayer/r3;->s:J

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v8, v1, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-static {v0, v8}, Landroidx/media3/exoplayer/r2;->c0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v8, v0, Landroidx/media3/exoplayer/r3;->s:J

    goto :goto_5

    :cond_2
    :goto_4
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v8, v0, Landroidx/media3/exoplayer/r3;->c:J

    :goto_5
    if-eqz p2, :cond_3

    iput-object v3, v1, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/r2;->J(Landroidx/media3/common/e0;)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_3

    :goto_6
    move-wide/from16 v28, v6

    move-wide v9, v8

    goto :goto_7

    :cond_3
    move v5, v4

    goto :goto_6

    :goto_7
    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->g()V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/r2;->K:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    if-eqz p3, :cond_4

    instance-of v4, v0, Landroidx/media3/exoplayer/u3;

    if-eqz v4, :cond_4

    check-cast v0, Landroidx/media3/exoplayer/u3;

    iget-object v4, v1, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/q3;->q()Lg2/v;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/u3;->E(Lg2/v;)Landroidx/media3/exoplayer/u3;

    move-result-object v0

    iget v4, v2, Landroidx/media3/exoplayer/source/r$b;->b:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    iget-object v4, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v6, v1, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v4, v6}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v4, v1, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    iget v4, v4, Landroidx/media3/common/e0$b;->c:I

    iget-object v6, v1, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    invoke-virtual {v0, v4, v6}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/e0$c;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Landroidx/media3/exoplayer/source/r$b;

    iget-object v6, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v7, v2, Landroidx/media3/exoplayer/source/r$b;->d:J

    invoke-direct {v4, v6, v7, v8}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;J)V

    move-object v7, v0

    move-object/from16 v19, v4

    goto :goto_8

    :cond_4
    move-object v7, v0

    move-object/from16 v19, v2

    :goto_8
    new-instance v0, Landroidx/media3/exoplayer/r3;

    iget-object v2, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v13, v2, Landroidx/media3/exoplayer/r3;->e:I

    if-eqz p4, :cond_5

    :goto_9
    move-object v14, v3

    goto :goto_a

    :cond_5
    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    goto :goto_9

    :goto_a
    if-eqz v5, :cond_6

    sget-object v3, Lg2/z;->d:Lg2/z;

    :goto_b
    move-object/from16 v16, v3

    goto :goto_c

    :cond_6
    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->h:Lg2/z;

    goto :goto_b

    :goto_c
    if-eqz v5, :cond_7

    iget-object v3, v1, Landroidx/media3/exoplayer/r2;->e:Lj2/f0;

    :goto_d
    move-object/from16 v17, v3

    goto :goto_e

    :cond_7
    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    goto :goto_d

    :goto_e
    if-eqz v5, :cond_8

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_f
    move-object/from16 v18, v2

    goto :goto_10

    :cond_8
    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    goto :goto_f

    :goto_10
    iget-object v2, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v3, v2, Landroidx/media3/exoplayer/r3;->l:Z

    move/from16 v20, v3

    iget v3, v2, Landroidx/media3/exoplayer/r3;->m:I

    move/from16 v21, v3

    iget v3, v2, Landroidx/media3/exoplayer/r3;->n:I

    move/from16 v22, v3

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    move-object/from16 v23, v2

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/4 v15, 0x0

    const-wide/16 v26, 0x0

    move-object v6, v0

    move-object/from16 v8, v19

    move-wide/from16 v11, v28

    move-wide/from16 v24, v28

    invoke-direct/range {v6 .. v32}, Landroidx/media3/exoplayer/r3;-><init>(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLg2/z;Lj2/f0;Ljava/util/List;Landroidx/media3/exoplayer/source/r$b;ZIILandroidx/media3/common/z;JJJJZ)V

    iput-object v0, v1, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    if-eqz p3, :cond_9

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->N()V

    iget-object v0, v1, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->y()V

    :cond_9
    return-void
.end method

.method private K1()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->K:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/r3;->g:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/r3;->b(Z)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_2
    return-void
.end method

.method private L()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->q:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->M(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private L0()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/z2;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->H:Z

    return-void
.end method

.method private L1(Landroidx/media3/exoplayer/source/r$b;Lg2/z;Lj2/f0;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-wide v2, v0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    goto :goto_1

    :cond_0
    iget-wide v2, v0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v2

    iget-object v4, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v4, v4, Landroidx/media3/exoplayer/z2;->b:J

    sub-long/2addr v2, v4

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->j()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/r2;->M(J)J

    move-result-wide v10

    iget-object v2, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {v0, v2, v1}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    invoke-interface {v1}, Landroidx/media3/exoplayer/t2;->b()J

    move-result-wide v1

    :goto_2
    move-wide v15, v1

    goto :goto_3

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    new-instance v2, Landroidx/media3/exoplayer/u2$a;

    iget-object v5, v0, Landroidx/media3/exoplayer/r2;->w:Ly1/f4;

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v6, v3, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v3

    iget v12, v3, Landroidx/media3/common/z;->a:F

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v13, v3, Landroidx/media3/exoplayer/r3;->l:Z

    iget-boolean v14, v0, Landroidx/media3/exoplayer/r2;->I:Z

    iget-wide v3, v0, Landroidx/media3/exoplayer/r2;->J:J

    move-wide/from16 v17, v3

    move-object v4, v2

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v18}, Landroidx/media3/exoplayer/u2$a;-><init>(Ly1/f4;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJFZZJJ)V

    move-object/from16 v3, p3

    iget-object v3, v3, Lj2/f0;->c:[Lj2/z;

    move-object/from16 v4, p2

    invoke-interface {v1, v2, v4, v3}, Landroidx/media3/exoplayer/u2;->g(Landroidx/media3/exoplayer/u2$a;Lg2/z;[Lj2/z;)V

    return-void
.end method

.method private M(J)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private M0(J)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v1, 0xe8d4a51000L

    add-long/2addr p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/y2;->D(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/r2;->S:J

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/n;->d(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v2, v0, v3, v4}, Landroidx/media3/exoplayer/a4;->M(Landroidx/media3/exoplayer/y2;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x0()V

    return-void
.end method

.method private N(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    iget v2, v0, Landroidx/media3/exoplayer/r3;->n:I

    iget v0, v0, Landroidx/media3/exoplayer/r3;->m:I

    invoke-direct {p0, v1, p1, v2, v0}, Landroidx/media3/exoplayer/r2;->S1(ZIII)V

    return-void
.end method

.method private static N0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)V
    .locals 4

    iget-object v0, p1, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/e0$c;->o:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    iget-wide v0, p3, Landroidx/media3/common/e0$b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Landroidx/media3/exoplayer/r2$d;->b(IJLjava/lang/Object;)V

    return-void
.end method

.method private N1(IILjava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/q3;->E(IILjava/util/List;)Landroidx/media3/common/e0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    return-void
.end method

.method private O()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/r2;->d0:F

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->A1(F)V

    return-void
.end method

.method private static O0(Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0;Landroidx/media3/common/e0;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    iget-object v2, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/t3;->e()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/t3;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v1

    :goto_0
    new-instance v3, Landroidx/media3/exoplayer/r2$h;

    iget-object v4, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/t3;->g()Landroidx/media3/common/e0;

    move-result-object v4

    iget-object v5, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/t3;->c()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Landroidx/media3/exoplayer/r2$h;-><init>(Landroidx/media3/common/e0;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/r2;->R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Landroidx/media3/exoplayer/r2$d;->b(IJLjava/lang/Object;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/t3;->e()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    invoke-static {v8, p0, v9, v10}, Landroidx/media3/exoplayer/r2;->N0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)V

    :cond_2
    return v12

    :cond_3
    invoke-virtual {v8, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    :cond_4
    iget-object v3, v0, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/t3;->e()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_5

    invoke-static {v8, p0, v9, v10}, Landroidx/media3/exoplayer/r2;->N0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)V

    return v12

    :cond_5
    iput v2, v0, Landroidx/media3/exoplayer/r2$d;->b:I

    iget-object v2, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-boolean v2, v10, Landroidx/media3/common/e0$b;->f:Z

    if-eqz v2, :cond_6

    iget v2, v10, Landroidx/media3/common/e0$b;->c:I

    invoke-virtual {v1, v2, v9}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/e0$c;->n:I

    iget-object v3, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    iget-wide v1, v0, Landroidx/media3/exoplayer/r2$d;->c:J

    invoke-virtual/range {p6 .. p6}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v3

    add-long v5, v1, v3

    iget-object v1, v0, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    invoke-virtual {v8, v1, v10}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v1

    iget v4, v1, Landroidx/media3/common/e0$b;->c:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Landroidx/media3/exoplayer/r2$d;->b(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method private O1()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->o0()Z

    move-result v0

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->s0()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->t0()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->u0()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->q0()V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->r0(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private P(Landroidx/media3/exoplayer/source/q;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->F(Landroidx/media3/exoplayer/source/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-wide v0, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/b3;->L(J)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->G(Landroidx/media3/exoplayer/source/q;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->h0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private P0(Landroidx/media3/common/e0;Landroidx/media3/common/e0;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/r2$d;

    iget v5, p0, Landroidx/media3/exoplayer/r2;->L:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/r2;->M:Z

    iget-object v7, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-object v8, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/r2;->O0(Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0;Landroidx/media3/common/e0;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/r2$d;

    iget-object v1, v1, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/t3;->j(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private static P1(II)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method private Q(Ljava/io/IOException;I)V
    .locals 1

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object p2, p2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    return-void
.end method

.method private static Q0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r3;Landroidx/media3/exoplayer/r2$h;Landroidx/media3/exoplayer/b3;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/r2$g;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/r2$g;

    invoke-static {}, Landroidx/media3/exoplayer/r3;->l()Landroidx/media3/exoplayer/source/r$b;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/r2$g;-><init>(Landroidx/media3/exoplayer/source/r$b;JJZZZ)V

    return-object v0

    :cond_0
    iget-object v14, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v12, v14, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-static {v8, v11}, Landroidx/media3/exoplayer/r2;->c0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0$b;)Z

    move-result v13

    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, v8, Landroidx/media3/exoplayer/r3;->s:J

    :goto_0
    move-wide v15, v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-wide v0, v8, Landroidx/media3/exoplayer/r3;->c:J

    goto :goto_0

    :goto_2
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const/4 v6, -0x1

    const/16 v20, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v14

    move v14, v6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/r2;->R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v10}, Landroidx/media3/common/e0;->a(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    move/from16 v2, v19

    move v3, v2

    move/from16 v4, v20

    goto :goto_5

    :cond_3
    iget-wide v1, v9, Landroidx/media3/exoplayer/r2$h;->c:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v6, v0, Landroidx/media3/common/e0$b;->c:I

    move-wide v0, v15

    move/from16 v2, v19

    goto :goto_3

    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move v6, v14

    move/from16 v2, v20

    :goto_3
    iget v3, v8, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    move/from16 v3, v20

    goto :goto_4

    :cond_5
    move/from16 v3, v19

    :goto_4
    move/from16 v4, v19

    :goto_5
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    :goto_6
    move-object/from16 v6, v21

    goto/16 :goto_a

    :cond_6
    move-object/from16 v21, v14

    move v14, v6

    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v10}, Landroidx/media3/common/e0;->a(Z)I

    move-result v0

    :goto_7
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    goto :goto_6

    :cond_7
    invoke-virtual {v7, v12}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v14, :cond_9

    iget-object v5, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/r2;->S0(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IZLjava/lang/Object;Landroidx/media3/common/e0;Landroidx/media3/common/e0;)I

    move-result v0

    if-ne v0, v14, :cond_8

    invoke-virtual {v7, v10}, Landroidx/media3/common/e0;->a(Z)I

    move-result v0

    move/from16 v4, v20

    goto :goto_8

    :cond_8
    move/from16 v4, v19

    :goto_8
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v29, v27

    goto :goto_6

    :cond_9
    cmp-long v0, v15, v17

    if-nez v0, :cond_a

    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    goto :goto_7

    :cond_a
    if-eqz v13, :cond_c

    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    move-object/from16 v6, v21

    iget-object v1, v6, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v0, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget v1, v11, Landroidx/media3/common/e0$b;->c:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$c;->n:I

    iget-object v1, v8, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v2, v6, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v0

    add-long v4, v15, v0

    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v3, v0, Landroidx/media3/common/e0$b;->c:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_9

    :cond_b
    move-wide v0, v15

    :goto_9
    move v3, v14

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v20

    goto :goto_a

    :cond_c
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move v3, v14

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_a
    if-eq v3, v14, :cond_d

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_b

    :cond_d
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    :goto_b
    invoke-virtual {v2, v7, v12, v0, v1}, Landroidx/media3/exoplayer/b3;->R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v2

    iget v3, v2, Landroidx/media3/exoplayer/source/r$b;->e:I

    if-eq v3, v14, :cond_f

    iget v4, v6, Landroidx/media3/exoplayer/source/r$b;->e:I

    if-eq v4, v14, :cond_e

    if-lt v3, v4, :cond_e

    goto :goto_c

    :cond_e
    move/from16 v3, v19

    goto :goto_d

    :cond_f
    :goto_c
    move/from16 v3, v20

    :goto_d
    iget-object v4, v6, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    goto :goto_e

    :cond_10
    move/from16 v20, v19

    :goto_e
    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v17

    move v12, v13

    move-object v13, v6

    move-object v3, v6

    move-wide v14, v15

    move-object/from16 v16, v2

    move-wide/from16 v18, v25

    invoke-static/range {v12 .. v19}, Landroidx/media3/exoplayer/r2;->Z(ZLandroidx/media3/exoplayer/source/r$b;JLandroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0$b;J)Z

    move-result v4

    if-nez v20, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move-object v2, v3

    :cond_12
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, v8, Landroidx/media3/exoplayer/r3;->s:J

    :cond_13
    :goto_f
    move-wide/from16 v23, v0

    goto :goto_10

    :cond_14
    iget-object v0, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget v0, v2, Landroidx/media3/exoplayer/source/r$b;->c:I

    iget v1, v2, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v11, v1}, Landroidx/media3/common/e0$b;->l(I)I

    move-result v1

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/e0$b;->g()J

    move-result-wide v0

    goto :goto_f

    :cond_15
    const-wide/16 v0, 0x0

    goto :goto_f

    :goto_10
    new-instance v0, Landroidx/media3/exoplayer/r2$g;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Landroidx/media3/exoplayer/r2$g;-><init>(Landroidx/media3/exoplayer/source/r$b;JJZZZ)V

    return-object v0
.end method

.method private Q1()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    iget v2, v0, Landroidx/media3/exoplayer/r3;->n:I

    iget v0, v0, Landroidx/media3/exoplayer/r3;->m:I

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/exoplayer/r2;->R1(ZII)V

    return-void
.end method

.method private R(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->k:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/r3;->c(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    if-nez v0, :cond_2

    iget-wide v3, v1, Landroidx/media3/exoplayer/r3;->s:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->j()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Landroidx/media3/exoplayer/r3;->q:J

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L()J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/media3/exoplayer/r3;->r:J

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz p1, :cond_4

    iget-object p1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->o()Lg2/z;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/exoplayer/r2;->L1(Landroidx/media3/exoplayer/source/r$b;Lg2/z;Lj2/f0;)V

    :cond_4
    return-void
.end method

.method private static R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;
    .locals 13

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Landroidx/media3/exoplayer/r2$h;->a:Landroidx/media3/common/e0;

    invoke-virtual {p0}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    :try_start_0
    iget v4, v0, Landroidx/media3/exoplayer/r2$h;->b:I

    iget-wide v5, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v10}, Landroidx/media3/common/e0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v2

    const/4 v11, -0x1

    if-eq v2, v11, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/media3/common/e0$b;->f:Z

    if-eqz v2, :cond_3

    iget v2, v8, Landroidx/media3/common/e0$b;->c:I

    move-object/from16 v12, p5

    invoke-virtual {v10, v2, v12}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/e0$c;->n:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v1

    iget v3, v1, Landroidx/media3/common/e0$b;->c:I

    iget-wide v4, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v12, p5

    if-eqz p2, :cond_5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/r2;->S0(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IZLjava/lang/Object;Landroidx/media3/common/e0;Landroidx/media3/common/e0;)I

    move-result v3

    if-eq v3, v11, :cond_5

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private R1(ZII)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/h;->o(ZI)I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/r2;->S1(ZIII)V

    return-void
.end method

.method private S(Landroidx/media3/exoplayer/y2;)V
    .locals 11

    iget-boolean v0, p1, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/z;->a:F

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/r3;->l:Z

    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/exoplayer/y2;->q(FLandroidx/media3/common/e0;Z)V

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v0, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->o()Lg2/z;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->L1(Landroidx/media3/exoplayer/source/r$b;Lg2/z;Lj2/f0;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->b:J

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->M0(J)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->C()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/media3/exoplayer/y2;->i:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object p1, p1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v7, p1, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/r3;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    return-void
.end method

.method static S0(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IZLjava/lang/Object;Landroidx/media3/common/e0;Landroidx/media3/common/e0;)I
    .locals 9

    invoke-virtual {p5, p4, p1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    invoke-virtual {p5, v0, p0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p6}, Landroidx/media3/common/e0;->p()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p6, v2, p0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p5, p4}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5}, Landroidx/media3/common/e0;->i()I

    move-result v0

    const/4 v2, -0x1

    move v4, p4

    move p4, v2

    :goto_1
    if-ge v1, v0, :cond_3

    if-ne p4, v2, :cond_3

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/e0;->d(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)I

    move-result v4

    if-ne v4, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p5, v4}, Landroidx/media3/common/e0;->m(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ne p4, v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p6, p4, p1}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p0

    iget v2, p0, Landroidx/media3/common/e0$b;->c:I

    :goto_3
    return v2
.end method

.method private S1(ZIII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p2, p4}, Landroidx/media3/exoplayer/r2;->P1(II)I

    move-result p4

    invoke-static {p2, p3}, Landroidx/media3/exoplayer/r2;->V1(II)I

    move-result p2

    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v1, p3, Landroidx/media3/exoplayer/r3;->l:Z

    if-ne v1, p1, :cond_1

    iget v1, p3, Landroidx/media3/exoplayer/r3;->n:I

    if-ne v1, p2, :cond_1

    iget v1, p3, Landroidx/media3/exoplayer/r3;->m:I

    if-ne v1, p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1, p4, p2}, Landroidx/media3/exoplayer/r3;->e(ZII)Landroidx/media3/exoplayer/r3;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->y0(Z)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->J1()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->T1()V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-wide p2, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/b3;->L(J)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget p1, p1, Landroidx/media3/exoplayer/r3;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/n;->f()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->G1()V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    invoke-interface {p1, p3}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    if-ne p1, p3, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    invoke-interface {p1, p3}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private T(Landroidx/media3/common/e0;Z)V
    .locals 25

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget v5, v11, Landroidx/media3/exoplayer/r2;->L:I

    iget-boolean v6, v11, Landroidx/media3/exoplayer/r2;->M:Z

    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-object v8, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->Q0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r3;Landroidx/media3/exoplayer/r2$h;Landroidx/media3/exoplayer/b3;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/r2$g;

    move-result-object v9

    iget-object v10, v9, Landroidx/media3/exoplayer/r2$g;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v13, v9, Landroidx/media3/exoplayer/r2$g;->c:J

    iget-boolean v0, v9, Landroidx/media3/exoplayer/r2$g;->d:Z

    iget-wide v7, v9, Landroidx/media3/exoplayer/r2$g;->b:J

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v1, v10}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v1, v1, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v1, v7, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v5

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v16, v15

    :goto_1
    const/4 v6, 0x0

    const/16 v17, 0x3

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x4

    :try_start_0
    iget-boolean v1, v9, Landroidx/media3/exoplayer/r2$g;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v1, v15, :cond_2

    invoke-direct {v11, v2}, Landroidx/media3/exoplayer/r2;->w1(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v20, v2

    move v15, v5

    move-wide/from16 v21, v13

    :goto_2
    move-wide v13, v7

    move-object v8, v6

    goto/16 :goto_d

    :cond_2
    :goto_3
    invoke-direct {v11, v5, v5, v5, v15}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    :cond_3
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    array-length v2, v1

    move v3, v5

    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4, v12}, Landroidx/media3/exoplayer/a4;->R(Landroidx/media3/common/e0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    move v15, v5

    move-wide/from16 v21, v13

    const/16 v20, 0x4

    goto :goto_2

    :cond_4
    if-nez v16, :cond_9

    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_5

    move-wide/from16 v21, v1

    goto :goto_5

    :cond_5
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/r2;->I(Landroidx/media3/exoplayer/y2;)J

    move-result-wide v3

    move-wide/from16 v21, v3

    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->r()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_7

    :try_start_3
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/r2;->I(Landroidx/media3/exoplayer/y2;)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v23, v0

    goto :goto_7

    :cond_7
    :goto_6
    move-wide/from16 v23, v1

    :goto_7
    :try_start_4
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-wide v3, v11, Landroidx/media3/exoplayer/r2;->S:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v20, 0x4

    move-object/from16 v2, p1

    const/4 v15, 0x2

    move v15, v5

    move-wide/from16 v5, v21

    move-wide/from16 v21, v13

    move-wide v13, v7

    move-wide/from16 v7, v23

    :try_start_5
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/b3;->X(Landroidx/media3/common/e0;JJJ)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    invoke-direct {v11, v15}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_8
    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_8
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    goto :goto_a

    :catchall_3
    move-exception v0

    move v15, v5

    move-wide/from16 v21, v13

    const/16 v20, 0x4

    move-wide v13, v7

    goto :goto_8

    :cond_9
    move v15, v5

    move-wide/from16 v21, v13

    const/16 v20, 0x4

    move-wide v13, v7

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_b

    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v2, v10}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    invoke-virtual {v2, v12, v3}, Landroidx/media3/exoplayer/b3;->z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->E()V

    :cond_a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    goto :goto_9

    :cond_b
    invoke-direct {v11, v10, v13, v14, v0}, Landroidx/media3/exoplayer/r2;->X0(Landroidx/media3/exoplayer/source/r$b;JZ)J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide v13, v0

    :cond_c
    :goto_a
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v4, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v5, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-boolean v0, v9, Landroidx/media3/exoplayer/r2$g;->f:Z

    if-eqz v0, :cond_d

    move-wide v6, v13

    goto :goto_b

    :cond_d
    move-wide/from16 v6, v18

    :goto_b
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V

    if-nez v16, :cond_e

    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->c:J

    cmp-long v0, v21, v0

    if-eqz v0, :cond_11

    :cond_e
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    if-eqz v16, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/e0$b;->f:Z

    if-nez v0, :cond_f

    const/4 v9, 0x1

    goto :goto_c

    :cond_f
    move v9, v15

    :goto_c
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v7, v0, Landroidx/media3/exoplayer/r3;->d:J

    invoke-virtual {v12, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    move/from16 v17, v20

    :cond_10
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide/from16 v5, v21

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->L0()V

    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-direct {v11, v12, v0}, Landroidx/media3/exoplayer/r2;->P0(Landroidx/media3/common/e0;Landroidx/media3/common/e0;)V

    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/r3;->j(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v8, 0x0

    iput-object v8, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    :cond_12
    invoke-direct {v11, v15}, Landroidx/media3/exoplayer/r2;->R(Z)V

    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    return-void

    :goto_d
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v4, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v5, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-boolean v1, v9, Landroidx/media3/exoplayer/r2$g;->f:Z

    if-eqz v1, :cond_13

    move-wide v6, v13

    goto :goto_e

    :cond_13
    move-wide/from16 v6, v18

    :goto_e
    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v10

    move-object v15, v8

    move v8, v9

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V

    if-nez v16, :cond_14

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v1, v1, Landroidx/media3/exoplayer/r3;->c:J

    cmp-long v1, v21, v1

    if-eqz v1, :cond_17

    :cond_14
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    if-eqz v16, :cond_15

    if-eqz p2, :cond_15

    invoke-virtual {v1}, Landroidx/media3/common/e0;->q()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/e0$b;->f:Z

    if-nez v1, :cond_15

    const/4 v9, 0x1

    goto :goto_f

    :cond_15
    const/4 v9, 0x0

    :goto_f
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v7, v1, Landroidx/media3/exoplayer/r3;->d:J

    invoke-virtual {v12, v2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    move/from16 v17, v20

    :cond_16
    move-object/from16 v1, p0

    move-object v2, v10

    move-wide v3, v13

    move-wide/from16 v5, v21

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_17
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->L0()V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-direct {v11, v12, v1}, Landroidx/media3/exoplayer/r2;->P0(Landroidx/media3/common/e0;Landroidx/media3/common/e0;)V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/r3;->j(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_18

    iput-object v15, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    :cond_18
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    throw v0
.end method

.method private T0(J)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v0, v0, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->x:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    sget-wide v0, Landroidx/media3/exoplayer/r2;->e0:J

    :goto_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/r2;->x:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    iget-wide v6, p0, Landroidx/media3/exoplayer/r2;->S:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/r2;->T:J

    invoke-virtual {v5, v6, v7, v8, v9}, Landroidx/media3/exoplayer/a4;->j(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    iget-wide v3, p0, Landroidx/media3/exoplayer/r2;->S:J

    long-to-float v3, v3

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v5, v5, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    iget v5, v5, Landroidx/media3/common/z;->a:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v4

    long-to-float v2, v4

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_4

    sget-wide v2, Landroidx/media3/exoplayer/r2;->e0:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v3, 0x2

    add-long/2addr p1, v0

    invoke-interface {v2, v3, p1, p2}, Landroidx/media3/common/util/p;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private T1()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->s()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    invoke-direct {p0, v10}, Landroidx/media3/exoplayer/r2;->R(Z)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    :cond_2
    invoke-direct {p0, v6, v7}, Landroidx/media3/exoplayer/r2;->M0(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v4, v0, Landroidx/media3/exoplayer/r3;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v10

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/n;->h(Z)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v6

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v0, v0, Landroidx/media3/exoplayer/r3;->s:J

    invoke-direct {p0, v0, v1, v6, v7}, Landroidx/media3/exoplayer/r2;->n0(JJ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/n;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/r2$e;->d:Z

    xor-int/lit8 v8, v0, 0x1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v4, v0, Landroidx/media3/exoplayer/r3;->c:J

    const/4 v9, 0x6

    move-object v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/r3;->o(J)V

    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->j()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media3/exoplayer/r3;->q:J

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/r3;->r:J

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/r3;->l:Z

    if-eqz v1, :cond_7

    iget v1, v0, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    iget v0, v0, Landroidx/media3/common/z;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->G()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v3, v3, Landroidx/media3/exoplayer/r3;->r:J

    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/t2;->a(JJ)F

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/z;->a:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    invoke-virtual {v1, v0}, Landroidx/media3/common/z;->b(F)Landroidx/media3/common/z;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->g1(Landroidx/media3/common/z;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/z;->a:F

    invoke-direct {p0, v0, v1, v10, v10}, Landroidx/media3/exoplayer/r2;->V(Landroidx/media3/common/z;FZZ)V

    :cond_7
    return-void
.end method

.method private U(Landroidx/media3/exoplayer/source/q;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->F(Landroidx/media3/exoplayer/source/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/y2;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->S(Landroidx/media3/exoplayer/y2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->v(Landroidx/media3/exoplayer/source/q;)Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/z;->a:F

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v3, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-boolean v2, v2, Landroidx/media3/exoplayer/r3;->l:Z

    invoke-virtual {v0, v1, v3, v2}, Landroidx/media3/exoplayer/y2;->q(FLandroidx/media3/common/e0;Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->G(Landroidx/media3/exoplayer/source/q;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->h0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->F1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/common/z;->d:Landroidx/media3/common/z;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/common/z;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->g1(Landroidx/media3/common/z;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object p2, p2, Landroidx/media3/exoplayer/r3;->o:Landroidx/media3/common/z;

    iget p1, p1, Landroidx/media3/common/z;->a:F

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3, p3}, Landroidx/media3/exoplayer/r2;->V(Landroidx/media3/common/z;FZZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-object v1, v1, Landroidx/media3/common/e0$c;->j:Landroidx/media3/common/t$g;

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/t$g;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/t2;->e(Landroidx/media3/common/t$g;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_3

    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p5, p6}, Landroidx/media3/exoplayer/r2;->H(Landroidx/media3/common/e0;Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-interface {p3, p1, p2}, Landroidx/media3/exoplayer/t2;->d(J)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-object p1, p1, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Landroidx/media3/common/e0;->q()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p4, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object p4, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {p3, p2, p4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    iget-object p4, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    invoke-virtual {p3, p2, p4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p2

    iget-object p2, p2, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p7, :cond_6

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->u:Landroidx/media3/exoplayer/t2;

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/t2;->d(J)V

    :cond_6
    :goto_2
    return-void
.end method

.method private V(Landroidx/media3/common/z;FZZ)V
    .locals 3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/r3;->g(Landroidx/media3/common/z;)Landroidx/media3/exoplayer/r3;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_1
    iget p3, p1, Landroidx/media3/common/z;->a:F

    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/r2;->Y1(F)V

    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    aget-object v1, p3, v0

    iget v2, p1, Landroidx/media3/common/z;->a:F

    invoke-virtual {v1, p2, v2}, Landroidx/media3/exoplayer/a4;->Q(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private V0(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v0, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v3, v1, Landroidx/media3/exoplayer/r3;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->Y0(Landroidx/media3/exoplayer/source/r$b;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v1, v1, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v5, v1, Landroidx/media3/exoplayer/r3;->c:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/r3;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_0
    return-void
.end method

.method private static V1(II)I
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return p1
.end method

.method private W(Landroidx/media3/common/z;Z)V
    .locals 2

    iget v0, p1, Landroidx/media3/common/z;->a:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/media3/exoplayer/r2;->V(Landroidx/media3/common/z;FZZ)V

    return-void
.end method

.method private W0(Landroidx/media3/exoplayer/r2$h;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget v4, v11, Landroidx/media3/exoplayer/r2;->L:I

    iget-boolean v5, v11, Landroidx/media3/exoplayer/r2;->M:Z

    iget-object v6, v11, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/r2;->R0(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/r2$h;ZIZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-direct {v11, v7}, Landroidx/media3/exoplayer/r2;->J(Landroidx/media3/common/e0;)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/exoplayer/source/r$b;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v7}, Landroidx/media3/common/e0;->q()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v16, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v16

    goto/16 :goto_4

    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v9, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    :goto_1
    iget-object v14, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-object v15, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v15, v15, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v14, v15, v7, v12, v13}, Landroidx/media3/exoplayer/b3;->R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v4, v4, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v5, v7, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v12, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {v4, v5, v12}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    iget v5, v7, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/e0$b;->l(I)I

    move-result v4

    iget v5, v7, Landroidx/media3/exoplayer/source/r$b;->c:I

    if-ne v4, v5, :cond_2

    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    invoke-virtual {v4}, Landroidx/media3/common/e0$b;->g()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    move-object v9, v7

    move v10, v8

    goto :goto_4

    :cond_3
    iget-wide v14, v0, Landroidx/media3/exoplayer/r2$h;->c:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    move-wide/from16 v16, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    :goto_4
    :try_start_0
    iget-object v7, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v7}, Landroidx/media3/common/e0;->q()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-wide v7, v4

    goto/16 :goto_a

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v1, v8, :cond_6

    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/r2;->w1(I)V

    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Landroidx/media3/exoplayer/r2;->K0(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    :cond_7
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v9, v1}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v7, v1, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v7, :cond_8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->C:Landroidx/media3/exoplayer/c4;

    invoke-interface {v1, v4, v5, v2}, Landroidx/media3/exoplayer/source/q;->b(JLandroidx/media3/exoplayer/c4;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    :goto_6
    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v14

    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v6, v3, Landroidx/media3/exoplayer/r3;->s:J

    invoke-static {v6, v7}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v6, v3, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    :cond_9
    iget-wide v7, v3, Landroidx/media3/exoplayer/r3;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    return-void

    :cond_a
    move-wide v1, v4

    :cond_b
    :try_start_1
    iget-object v3, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v3, v3, Landroidx/media3/exoplayer/r3;->e:I

    if-ne v3, v0, :cond_c

    move v0, v8

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Landroidx/media3/exoplayer/r2;->X0(Landroidx/media3/exoplayer/source/r$b;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v10, v8

    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v4, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v5, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    return-void

    :catchall_1
    move-exception v0

    move-wide v7, v14

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    throw v0
.end method

.method private W1(ZZ)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->I:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {p1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/r2;->J:J

    return-void
.end method

.method private X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    iget-boolean v1, v0, Landroidx/media3/exoplayer/r2;->V:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v3, v1, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Landroidx/media3/exoplayer/r2;->V:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L0()V

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->h:Lg2/z;

    iget-object v4, v1, Landroidx/media3/exoplayer/r3;->i:Lj2/f0;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->j:Ljava/util/List;

    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/q3;->t()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v3, Lg2/z;->d:Lg2/z;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->o()Lg2/z;

    move-result-object v3

    :goto_2
    if-nez v1, :cond_3

    iget-object v4, v0, Landroidx/media3/exoplayer/r2;->e:Lj2/f0;

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v4

    :goto_3
    iget-object v7, v4, Lj2/f0;->c:[Lj2/z;

    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/r2;->F([Lj2/z;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v1, :cond_4

    iget-object v8, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v9, v8, Landroidx/media3/exoplayer/z2;->c:J

    cmp-long v9, v9, v5

    if-eqz v9, :cond_4

    invoke-virtual {v8, v5, v6}, Landroidx/media3/exoplayer/z2;->a(J)Landroidx/media3/exoplayer/z2;

    move-result-object v8

    iput-object v8, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->p0()V

    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_4

    :cond_5
    iget-object v7, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v7, v7, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {p1, v7}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v1, Lg2/z;->d:Lg2/z;

    iget-object v3, v0, Landroidx/media3/exoplayer/r2;->e:Lj2/f0;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_4

    :cond_6
    move-object v13, v1

    move-object v11, v3

    move-object v12, v4

    :goto_4
    if-eqz p8, :cond_7

    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/r2$e;->d(I)V

    :cond_7
    iget-object v1, v0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L()J

    move-result-wide v9

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v13}, Landroidx/media3/exoplayer/r3;->d(Landroidx/media3/exoplayer/source/r$b;JJJJLg2/z;Lj2/f0;Ljava/util/List;)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    return-object v1
.end method

.method private X0(Landroidx/media3/exoplayer/source/r$b;JZ)J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->Y0(Landroidx/media3/exoplayer/source/r$b;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private X1()Z
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v7

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v8, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v4

    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v5, v5, v3

    iget-object v6, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v5, v0, v7, v6}, Landroidx/media3/exoplayer/a4;->J(Landroidx/media3/exoplayer/y2;Lj2/f0;Landroidx/media3/exoplayer/n;)I

    move-result v5

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Landroidx/media3/exoplayer/r2;->P:Z

    if-eqz v6, :cond_0

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/r2;->j1(Z)V

    :cond_0
    iget v6, p0, Landroidx/media3/exoplayer/r2;->Q:I

    iget-object v9, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v9

    sub-int/2addr v4, v9

    sub-int/2addr v6, v4

    iput v6, p0, Landroidx/media3/exoplayer/r2;->Q:I

    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/2addr v8, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_4

    move v9, v2

    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v1

    if-ge v9, v1, :cond_4

    invoke-virtual {v7, v9}, Lj2/f0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, v9

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, v0

    move v3, v9

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->B(Landroidx/media3/exoplayer/y2;IZJ)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    return v8
.end method

.method private Y()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/a4;->o(Landroidx/media3/exoplayer/y2;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private Y0(Landroidx/media3/exoplayer/source/r$b;JZZ)J
    .locals 6

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->J1()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->W1(ZZ)V

    const/4 v2, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget p5, p5, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v3, 0x3

    if-ne p5, v3, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/r2;->w1(I)V

    :cond_1
    iget-object p5, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p5}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object p5

    move-object v3, p5

    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v4, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {p1, v4}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v3

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v3, :cond_4

    if-eqz v3, :cond_6

    invoke-virtual {v3, p2, p3}, Landroidx/media3/exoplayer/y2;->D(J)J

    move-result-wide p4

    const-wide/16 v4, 0x0

    cmp-long p1, p4, v4

    if-gez p1, :cond_6

    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->z()V

    if-eqz v3, :cond_6

    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object p1

    if-eq p1, v3, :cond_5

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->b()Landroidx/media3/exoplayer/y2;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    const-wide p4, 0xe8d4a51000L

    invoke-virtual {v3, p4, p5}, Landroidx/media3/exoplayer/y2;->B(J)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->C()V

    iput-boolean v1, v3, Landroidx/media3/exoplayer/y2;->i:Z

    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x()V

    if-eqz v3, :cond_9

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    iget-boolean p1, v3, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez p1, :cond_7

    iget-object p1, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/z2;->b(J)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    iput-object p1, v3, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    goto :goto_3

    :cond_7
    iget-boolean p1, v3, Landroidx/media3/exoplayer/y2;->g:Z

    if-eqz p1, :cond_8

    iget-object p1, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->seekToUs(J)J

    move-result-wide p2

    iget-object p1, v3, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    iget-wide p4, p0, Landroidx/media3/exoplayer/r2;->m:J

    sub-long p4, p2, p4

    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->n:Z

    invoke-interface {p1, p4, p5, v1}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    :cond_8
    :goto_3
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/r2;->M0(J)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->g()V

    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/r2;->M0(J)V

    :goto_4
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->R(Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    invoke-interface {p1, v2}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private Y1(F)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v1

    iget-object v1, v1, Lj2/f0;->c:[Lj2/z;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lj2/z;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static Z(ZLandroidx/media3/exoplayer/source/r$b;JLandroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0$b;J)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_3

    cmp-long p0, p2, p6

    if-nez p0, :cond_3

    iget-object p0, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object p2, p4, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    iget p0, p1, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {p5, p0}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p1, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget p3, p1, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {p5, p0, p3}, Landroidx/media3/common/e0$b;->h(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_1

    iget p0, p1, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget p1, p1, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {p5, p0, p1}, Landroidx/media3/common/e0$b;->h(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    move v0, p2

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p4}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p4, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {p5, p0}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p2

    :cond_3
    :goto_0
    return v0
.end method

.method private Z0(Landroidx/media3/exoplayer/t3;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->e()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->a1(Landroidx/media3/exoplayer/t3;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media3/exoplayer/r2$d;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/r2$d;-><init>(Landroidx/media3/exoplayer/t3;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/r2$d;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/r2$d;-><init>(Landroidx/media3/exoplayer/t3;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v4, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget v5, p0, Landroidx/media3/exoplayer/r2;->L:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/r2;->M:Z

    iget-object v7, p0, Landroidx/media3/exoplayer/r2;->k:Landroidx/media3/common/e0$c;

    iget-object v8, p0, Landroidx/media3/exoplayer/r2;->l:Landroidx/media3/common/e0$b;

    move-object v2, v0

    move-object v3, v4

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/r2;->O0(Landroidx/media3/exoplayer/r2$d;Landroidx/media3/common/e0;Landroidx/media3/common/e0;IZLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    :goto_0
    return-void
.end method

.method private declared-synchronized Z1(Lcom/google/common/base/q;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {v0}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {v3}, Landroidx/media3/common/util/i;->a()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    :goto_1
    :try_start_2
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    invoke-interface {p2}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private a0(Landroidx/media3/exoplayer/y2;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->l()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a1(Landroidx/media3/exoplayer/t3;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->b()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->w(Landroidx/media3/exoplayer/t3;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget p1, p1, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    invoke-interface {p1, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private b0()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v1, v1, Landroidx/media3/exoplayer/z2;->e:J

    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v3, v0, Landroidx/media3/exoplayer/r3;->s:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->D1()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b1(Landroidx/media3/exoplayer/t3;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->b()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->q:Landroidx/media3/common/util/i;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/q2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/q2;-><init>(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/t3;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static c0(Landroidx/media3/exoplayer/r3;Landroidx/media3/common/e0$b;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object p0, p0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {p0}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/e0$b;->f:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c1(J)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/a4;->N(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic d0(IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->y:Ly1/a;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->m()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Ly1/a;->B(IIZ)V

    return-void
.end method

.method private synthetic e0()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private e1(Landroidx/media3/common/c;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->d:Lj2/e0;

    invoke-virtual {v0, p1}, Lj2/e0;->l(Landroidx/media3/common/c;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->B:Landroidx/media3/exoplayer/h;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/h;->l(Landroidx/media3/common/c;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->Q1()V

    return-void
.end method

.method private synthetic f0(Landroidx/media3/exoplayer/t3;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->w(Landroidx/media3/exoplayer/t3;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private f1(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->N:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->N:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->L()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/r2;->v(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;

    move-result-object p0

    return-object p0
.end method

.method private g0()V
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->C1()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/y2;

    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/z;->a:F

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/v2$b;->g(F)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->J:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->e(J)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/y2;->e(Landroidx/media3/exoplayer/v2;)V

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->K1()V

    return-void
.end method

.method private g1(Landroidx/media3/common/z;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->removeMessages(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/n;->b(Landroidx/media3/common/z;)V

    return-void
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/r2;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->d0(IZ)V

    return-void
.end method

.method private h0()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->J()V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->w()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v3, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v3, v3, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-boolean v4, v0, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v4}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/u2;->e(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;J)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Landroidx/media3/exoplayer/y2;->e:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v1, v1, Landroidx/media3/exoplayer/z2;->b:J

    invoke-virtual {v0, p0, v1, v2}, Landroidx/media3/exoplayer/y2;->v(Landroidx/media3/exoplayer/source/q$a;J)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/media3/exoplayer/v2$b;

    invoke-direct {v1}, Landroidx/media3/exoplayer/v2$b;-><init>()V

    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/y2;->C(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->f(J)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/z;->a:F

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/v2$b;->g(F)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->J:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/v2$b;->e(J)Landroidx/media3/exoplayer/v2$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/v2$b;->d()Landroidx/media3/exoplayer/v2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/y2;->e(Landroidx/media3/exoplayer/v2;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private h1(Landroidx/media3/exoplayer/r2$b;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->a(Landroidx/media3/exoplayer/r2$b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/r2$h;

    new-instance v1, Landroidx/media3/exoplayer/u3;

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->b(Landroidx/media3/exoplayer/r2$b;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->c(Landroidx/media3/exoplayer/r2$b;)Lg2/v;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/u3;-><init>(Ljava/util/Collection;Lg2/v;)V

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->a(Landroidx/media3/exoplayer/r2$b;)I

    move-result v2

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->d(Landroidx/media3/exoplayer/r2$b;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/r2$h;-><init>(Landroidx/media3/common/e0;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->R:Landroidx/media3/exoplayer/r2$h;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->b(Landroidx/media3/exoplayer/r2$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->c(Landroidx/media3/exoplayer/r2$b;)Lg2/v;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/q3;->C(Ljava/util/List;Lg2/v;)Landroidx/media3/common/e0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/exoplayer/r2;Landroidx/media3/exoplayer/t3;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->f0(Landroidx/media3/exoplayer/t3;)V

    return-void
.end method

.method private i0()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->D()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic j(Landroidx/media3/exoplayer/r2;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->e0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private j0()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->c(Landroidx/media3/exoplayer/r3;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    invoke-static {v0}, Landroidx/media3/exoplayer/r2$e;->a(Landroidx/media3/exoplayer/r2$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->r:Landroidx/media3/exoplayer/r2$f;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/r2$f;->a(Landroidx/media3/exoplayer/r2$e;)V

    new-instance v0, Landroidx/media3/exoplayer/r2$e;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/r2$e;-><init>(Landroidx/media3/exoplayer/r3;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    :cond_0
    return-void
.end method

.method private j1(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->P:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->P:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/r3;->p:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method static synthetic k(Landroidx/media3/exoplayer/r2;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->O:Z

    return p1
.end method

.method private k0()V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    invoke-virtual {v7, v9}, Lj2/f0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->u()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/a4;->V()V

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, v0

    move v3, v9

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/r2;->B(Landroidx/media3/exoplayer/y2;IZJ)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/r2;->b0:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->s()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    invoke-direct {p0, v8}, Landroidx/media3/exoplayer/r2;->R(Z)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    :cond_3
    return-void
.end method

.method private k1(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->G:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L0()V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/r2;->H:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    :cond_0
    return-void
.end method

.method static synthetic l(Landroidx/media3/exoplayer/r2;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/r2;->x:Z

    return p0
.end method

.method private l0(I)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v0, v0, p1

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/a4;->G(Landroidx/media3/exoplayer/y2;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/a4;->m()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling track due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lj2/f0;->c:[Lj2/z;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lj2/z;->getSelectedFormat()Landroidx/media3/common/r;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/r;->i(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExoPlayerImplInternal"

    invoke-static {v3, v2, v1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lj2/f0;

    iget-object v2, v0, Lj2/f0;->b:[Landroidx/media3/exoplayer/z3;

    invoke-virtual {v2}, [Landroidx/media3/exoplayer/z3;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/exoplayer/z3;

    iget-object v3, v0, Lj2/f0;->c:[Lj2/z;

    invoke-virtual {v3}, [Lj2/z;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lj2/z;

    iget-object v4, v0, Lj2/f0;->d:Landroidx/media3/common/i0;

    iget-object v0, v0, Lj2/f0;->e:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, v0}, Lj2/f0;-><init>([Landroidx/media3/exoplayer/z3;[Lj2/z;Landroidx/media3/common/i0;Ljava/lang/Object;)V

    iget-object v0, v1, Lj2/f0;->b:[Landroidx/media3/exoplayer/z3;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    iget-object v0, v1, Lj2/f0;->c:[Lj2/z;

    aput-object v2, v0, p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->y(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-wide v2, v0, Landroidx/media3/exoplayer/r3;->s:J

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/media3/exoplayer/y2;->a(Lj2/f0;JZ)J

    :goto_2
    return-void
.end method

.method static synthetic m(Landroidx/media3/exoplayer/r2;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/r2;->P:Z

    return p0
.end method

.method private m0(IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->c:[Z

    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_0

    aput-boolean p2, v0, p1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->z:Landroidx/media3/common/util/p;

    new-instance v1, Landroidx/media3/exoplayer/n2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/n2;-><init>(Landroidx/media3/exoplayer/r2;IZ)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private m1(ZIZI)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    invoke-direct {p0, p1, p2, p4}, Landroidx/media3/exoplayer/r2;->R1(ZII)V

    return-void
.end method

.method static synthetic n(Landroidx/media3/exoplayer/r2;)Landroidx/media3/common/util/p;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    return-object p0
.end method

.method private n0(JJ)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->V:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->V:Z

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v0, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v0, v0, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/r2;->U:I

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_5

    iget v4, v3, Landroidx/media3/exoplayer/r2$d;->b:I

    if-gt v4, v0, :cond_3

    if-ne v4, v0, :cond_5

    iget-wide v3, v3, Landroidx/media3/exoplayer/r2$d;->c:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_5

    :cond_3
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_4

    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/r2$d;

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    move v7, v3

    move-object v3, v1

    move v1, v7

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_8

    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    if-eqz v4, :cond_8

    iget v4, v3, Landroidx/media3/exoplayer/r2$d;->b:I

    if-lt v4, v0, :cond_7

    if-ne v4, v0, :cond_8

    iget-wide v4, v3, Landroidx/media3/exoplayer/r2$d;->c:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz v3, :cond_e

    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->d:Ljava/lang/Object;

    if-eqz v4, :cond_e

    iget v4, v3, Landroidx/media3/exoplayer/r2$d;->b:I

    if-ne v4, v0, :cond_e

    iget-wide v4, v3, Landroidx/media3/exoplayer/r2$d;->c:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_e

    cmp-long v4, v4, p3

    if-gtz v4, :cond_e

    :try_start_0
    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/r2;->a1(Landroidx/media3/exoplayer/t3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/t3;->a()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v3, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/t3;->i()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_5
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/r2$d;

    goto :goto_3

    :cond_b
    move-object v3, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object p2, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/t3;->a()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, v3, Landroidx/media3/exoplayer/r2$d;->a:Landroidx/media3/exoplayer/t3;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/t3;->i()Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    iget-object p2, p0, Landroidx/media3/exoplayer/r2;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    throw p1

    :cond_e
    iput v1, p0, Landroidx/media3/exoplayer/r2;->U:I

    :cond_f
    :goto_6
    return-void
.end method

.method private o(Landroidx/media3/exoplayer/r2$b;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->r()I

    move-result p2

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->b(Landroidx/media3/exoplayer/r2$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Landroidx/media3/exoplayer/r2$b;->c(Landroidx/media3/exoplayer/r2$b;)Lg2/v;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Landroidx/media3/exoplayer/q3;->f(ILjava/util/List;Lg2/v;)Landroidx/media3/common/e0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    return-void
.end method

.method private o0()Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-wide v1, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/b3;->L(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->U()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-wide v2, p0, Landroidx/media3/exoplayer/r2;->S:J

    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/media3/exoplayer/b3;->t(JLandroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/b3;->h(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;

    move-result-object v2

    iget-boolean v3, v2, Landroidx/media3/exoplayer/y2;->e:Z

    if-nez v3, :cond_0

    iget-wide v3, v0, Landroidx/media3/exoplayer/z2;->b:J

    invoke-virtual {v2, p0, v3, v4}, Landroidx/media3/exoplayer/y2;->v(Landroidx/media3/exoplayer/source/q$a;J)V

    goto :goto_0

    :cond_0
    iget-boolean v3, v2, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v4, 0x8

    iget-object v5, v2, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v3, v4, v5}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/util/p$a;->a()V

    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v3

    if-ne v3, v2, :cond_2

    iget-wide v2, v0, Landroidx/media3/exoplayer/z2;->b:J

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/r2;->M0(J)V

    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    const/4 v1, 0x1

    :cond_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->K:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->n()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->a0(Landroidx/media3/exoplayer/y2;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->K:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->K1()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    :goto_1
    return v1
.end method

.method private o1(Landroidx/media3/common/z;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->g1(Landroidx/media3/common/z;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/n;->getPlaybackParameters()Landroidx/media3/common/z;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/r2;->W(Landroidx/media3/common/z;Z)V

    return-void
.end method

.method private p0()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_3

    invoke-virtual {v0, v2}, Lj2/f0;->c(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->m()I

    move-result v4

    if-eq v4, v5, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lj2/f0;->b:[Landroidx/media3/exoplayer/z3;

    aget-object v4, v4, v2

    iget v4, v4, Landroidx/media3/exoplayer/z3;->a:I

    if-eqz v4, :cond_2

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_1
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    move v1, v5

    :cond_4
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/r2;->j1(Z)V

    :cond_5
    return-void
.end method

.method private p1(Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/b3;->W(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/ExoPlayer$c;)V

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lj2/f0;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->f()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private q0()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->B1()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->j0()V

    :cond_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/r2;->c0:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->b()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v3, v3, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v2, v2, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget v4, v2, Landroidx/media3/exoplayer/source/r$b;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v4, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget v6, v4, Landroidx/media3/exoplayer/source/r$b;->b:I

    if-ne v6, v5, :cond_1

    iget v2, v2, Landroidx/media3/exoplayer/source/r$b;->e:I

    iget v4, v4, Landroidx/media3/exoplayer/source/r$b;->e:I

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget-object v4, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v6, v4, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v11, v4, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v9, v4, Landroidx/media3/exoplayer/z2;->c:J

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x0

    move-object v5, p0

    move-wide v7, v11

    invoke-direct/range {v5 .. v14}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->L0()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->T1()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->i0()V

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->G1()V

    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->q()V

    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method private r()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/a4;->u()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private r0(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    iget-wide v0, v0, Landroidx/media3/exoplayer/ExoPlayer$c;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a0:Landroidx/media3/common/e0;

    invoke-virtual {p1, v0}, Landroidx/media3/common/e0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object p1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->a0:Landroidx/media3/common/e0;

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/b3;->B(Landroidx/media3/common/e0;)V

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->h0()V

    return-void
.end method

.method private r1(I)V
    .locals 2

    iput p1, p0, Landroidx/media3/exoplayer/r2;->L:I

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/b3;->Y(Landroidx/media3/common/e0;I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    return-void
.end method

.method private s0()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->c0:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->c()Landroidx/media3/exoplayer/y2;

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->k0()V

    :cond_2
    :goto_0
    return-void
.end method

.method private s1(Landroidx/media3/exoplayer/c4;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->C:Landroidx/media3/exoplayer/c4;

    return-void
.end method

.method private t()V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->J0()V

    return-void
.end method

.method private t0()V
    .locals 14

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->H:Z

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->Y()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/exoplayer/y2;->f:Z

    if-nez v1, :cond_4

    iget-wide v1, p0, Landroidx/media3/exoplayer/r2;->S:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v11

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->d()Landroidx/media3/exoplayer/y2;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v13

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v3, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v1, v12, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v2, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v4, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/r2;->U1(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JZ)V

    iget-boolean v0, v12, Landroidx/media3/exoplayer/y2;->f:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroidx/media3/exoplayer/r2;->b0:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, v12, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_c

    :cond_6
    iput-wide v8, p0, Landroidx/media3/exoplayer/r2;->b0:J

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->c0:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v10

    :goto_0
    if-eqz v0, :cond_a

    move v1, v10

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    invoke-virtual {v13, v1}, Lj2/f0;->c(I)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    iget-object v2, v13, Lj2/f0;->c:[Lj2/z;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lj2/z;->getSelectedFormat()Landroidx/media3/common/r;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    iget-object v3, v13, Lj2/f0;->c:[Lj2/z;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lj2/z;->getSelectedFormat()Landroidx/media3/common/r;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/y;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/a4;->u()Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v10

    goto :goto_3

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    if-nez v0, :cond_c

    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->c1(J)V

    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->s()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    invoke-direct {p0, v10}, Landroidx/media3/exoplayer/r2;->R(Z)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->g0()V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v0

    :goto_4
    if-ge v10, v1, :cond_d

    aget-object v2, v0, v10

    invoke-virtual {v12}, Landroidx/media3/exoplayer/y2;->n()J

    move-result-wide v3

    invoke-virtual {v2, v11, v13, v3, v4}, Landroidx/media3/exoplayer/a4;->F(Lj2/f0;Lj2/f0;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_d
    return-void

    :cond_e
    :goto_5
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/z2;->j:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Landroidx/media3/exoplayer/r2;->H:Z

    if-eqz v1, :cond_13

    :cond_f
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v2, v1

    :goto_6
    if-ge v10, v2, :cond_13

    aget-object v3, v1, v10

    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/a4;->w(Landroidx/media3/exoplayer/y2;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/a4;->r(Landroidx/media3/exoplayer/y2;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v4, v4, Landroidx/media3/exoplayer/z2;->e:J

    cmp-long v6, v4, v8

    if-eqz v6, :cond_11

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v4

    iget-object v6, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v6, v6, Landroidx/media3/exoplayer/z2;->e:J

    add-long/2addr v4, v6

    goto :goto_7

    :cond_11
    move-wide v4, v8

    :goto_7
    invoke-virtual {v3, v0, v4, v5}, Landroidx/media3/exoplayer/a4;->O(Landroidx/media3/exoplayer/y2;J)V

    :cond_12
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_13
    return-void
.end method

.method private u0()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-boolean v0, v0, Landroidx/media3/exoplayer/y2;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->X1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/y2;->i:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private u1(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/r2;->M:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget-object v1, v1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/b3;->Z(Landroidx/media3/common/e0;Z)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->V0(Z)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->x()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/r2;->R(Z)V

    return-void
.end method

.method private v(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;
    .locals 12

    new-instance v11, Landroidx/media3/exoplayer/y2;

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->b:[Landroidx/media3/exoplayer/y3;

    iget-object v4, p0, Landroidx/media3/exoplayer/r2;->d:Lj2/e0;

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->f:Landroidx/media3/exoplayer/u2;

    invoke-interface {v0}, Landroidx/media3/exoplayer/u2;->getAllocator()Landroidx/media3/exoplayer/upstream/b;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    iget-object v8, p0, Landroidx/media3/exoplayer/r2;->e:Lj2/f0;

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->Z:Landroidx/media3/exoplayer/ExoPlayer$c;

    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayer$c;->a:J

    move-object v0, v11

    move-wide v2, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/y2;-><init>([Landroidx/media3/exoplayer/y3;JLj2/e0;Landroidx/media3/exoplayer/upstream/b;Landroidx/media3/exoplayer/q3;Landroidx/media3/exoplayer/z2;Lj2/f0;J)V

    return-object v11
.end method

.method private v0()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/q3;->i()Landroidx/media3/common/e0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    return-void
.end method

.method private v1(Lg2/v;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->t:Landroidx/media3/exoplayer/q3;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/q3;->D(Lg2/v;)Landroidx/media3/common/e0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/r2;->T(Landroidx/media3/common/e0;Z)V

    return-void
.end method

.method private w(Landroidx/media3/exoplayer/t3;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->f()Landroidx/media3/exoplayer/t3$b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->h()I

    move-result v2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/t3;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/t3$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V

    throw v1
.end method

.method private w0(Landroidx/media3/exoplayer/r2$c;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->E:Landroidx/media3/exoplayer/r2$e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/r2$e;->b(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method private w1(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v1, v0, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/r2;->Y:J

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/r3;->h(I)Landroidx/media3/exoplayer/r3;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_1
    return-void
.end method

.method private x()V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->A:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/r2;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v4

    iget-object v5, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/a4;->c(Landroidx/media3/exoplayer/n;)V

    iget v5, p0, Landroidx/media3/exoplayer/r2;->Q:I

    invoke-virtual {v3}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v3

    sub-int/2addr v4, v3

    sub-int/2addr v5, v4

    iput v5, p0, Landroidx/media3/exoplayer/r2;->Q:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/r2;->b0:J

    :cond_2
    :goto_1
    return-void
.end method

.method private x0()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v1

    iget-object v1, v1, Lj2/f0;->c:[Lj2/z;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lj2/z;->a()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private y(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/a4;->h()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->o:Landroidx/media3/exoplayer/n;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/a4;->b(Landroidx/media3/exoplayer/n;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/r2;->m0(IZ)V

    iget p1, p0, Landroidx/media3/exoplayer/r2;->Q:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/r2;->Q:I

    return-void
.end method

.method private y0(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v1

    iget-object v1, v1, Lj2/f0;->c:[Lj2/z;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lj2/z;->b(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private y1(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/a4;->S(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget p1, p1, Landroidx/media3/exoplayer/r3;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    invoke-interface {p1, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    :cond_2
    if-eqz p2, :cond_3

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private z()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/r2;->y(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/r2;->b0:J

    return-void
.end method

.method private z0()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->p()Lj2/f0;

    move-result-object v1

    iget-object v1, v1, Lj2/f0;->c:[Lj2/z;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lj2/z;->c()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public A0(Landroidx/media3/exoplayer/source/q;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public B0()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->obtainMessage(I)Landroidx/media3/common/util/p$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public declared-synchronized D0()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    new-instance v0, Landroidx/media3/exoplayer/m2;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/m2;-><init>(Landroidx/media3/exoplayer/r2;)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/r2;->v:J

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/r2;->Z1(Lcom/google/common/base/q;J)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public E(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/r2;->X:J

    return-void
.end method

.method public H0(IILg2/v;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x14

    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public H1()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->obtainMessage(I)Landroidx/media3/common/util/p$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public K()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    return-object v0
.end method

.method public M1(IILjava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x1b

    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public U0(Landroidx/media3/common/e0;IJ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    new-instance v1, Landroidx/media3/exoplayer/r2$h;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/r2$h;-><init>(Landroidx/media3/common/e0;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->removeMessages(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(Landroidx/media3/exoplayer/w3;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/source/q;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public d1(Landroidx/media3/common/c;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-interface {v0, v2, p2, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public declared-synchronized e(Landroidx/media3/exoplayer/t3;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/t3;->j(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/q;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/r2;->A0(Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const-string v12, "Playback error"

    const-string v13, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    :try_start_0
    iget v4, v1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    return v14

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->O()V

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move-object v1, v0

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move-object v1, v0

    goto/16 :goto_c

    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->N(I)V

    goto/16 :goto_11

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->A1(F)V

    goto/16 :goto_11

    :pswitch_4
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/c;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_0
    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->e1(Landroidx/media3/common/c;Z)V

    goto/16 :goto_11

    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->y1(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_11

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->C0()V

    goto/16 :goto_11

    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer$c;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->p1(Landroidx/media3/exoplayer/ExoPlayer$c;)V

    goto/16 :goto_11

    :pswitch_8
    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v11, v4, v5, v1}, Landroidx/media3/exoplayer/r2;->N1(IILjava/util/List;)V

    goto/16 :goto_11

    :pswitch_9
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->J0()V

    goto/16 :goto_11

    :pswitch_a
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->t()V

    goto/16 :goto_11

    :pswitch_b
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    move v1, v15

    goto :goto_1

    :cond_1
    move v1, v14

    :goto_1
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->k1(Z)V

    goto/16 :goto_11

    :pswitch_c
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->v0()V

    goto/16 :goto_11

    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg2/v;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->v1(Lg2/v;)V

    goto/16 :goto_11

    :pswitch_e
    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lg2/v;

    invoke-direct {v11, v4, v5, v1}, Landroidx/media3/exoplayer/r2;->G0(IILg2/v;)V

    goto/16 :goto_11

    :pswitch_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->w0(Landroidx/media3/exoplayer/r2$c;)V

    goto/16 :goto_11

    :pswitch_10
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/r2$b;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->o(Landroidx/media3/exoplayer/r2$b;I)V

    goto/16 :goto_11

    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/r2$b;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->h1(Landroidx/media3/exoplayer/r2$b;)V

    goto/16 :goto_11

    :pswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/z;

    invoke-direct {v11, v1, v14}, Landroidx/media3/exoplayer/r2;->W(Landroidx/media3/common/z;Z)V

    goto/16 :goto_11

    :pswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/t3;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->b1(Landroidx/media3/exoplayer/t3;)V

    goto/16 :goto_11

    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/t3;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->Z0(Landroidx/media3/exoplayer/t3;)V

    goto/16 :goto_11

    :pswitch_15
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    move v4, v15

    goto :goto_2

    :cond_2
    move v4, v14

    :goto_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v4, v1}, Landroidx/media3/exoplayer/r2;->f1(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_11

    :pswitch_16
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    move v1, v15

    goto :goto_3

    :cond_3
    move v1, v14

    :goto_3
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->u1(Z)V

    goto/16 :goto_11

    :pswitch_17
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->r1(I)V

    goto/16 :goto_11

    :pswitch_18
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->I0()V

    goto/16 :goto_11

    :pswitch_19
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/q;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->P(Landroidx/media3/exoplayer/source/q;)V

    goto/16 :goto_11

    :pswitch_1a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/q;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->U(Landroidx/media3/exoplayer/source/q;)V

    goto/16 :goto_11

    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->E0()V

    return v15

    :pswitch_1c
    invoke-direct {v11, v14, v15}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    goto/16 :goto_11

    :pswitch_1d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/c4;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->s1(Landroidx/media3/exoplayer/c4;)V

    goto/16 :goto_11

    :pswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/z;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->o1(Landroidx/media3/common/z;)V

    goto/16 :goto_11

    :pswitch_1f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/r2$h;

    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/r2;->W0(Landroidx/media3/exoplayer/r2$h;)V

    goto/16 :goto_11

    :pswitch_20
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->A()V

    goto/16 :goto_11

    :pswitch_21
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_4

    move v4, v15

    goto :goto_4

    :cond_4
    move v4, v14

    :goto_4
    iget v1, v1, Landroid/os/Message;->arg2:I

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-direct {v11, v4, v5, v15, v1}, Landroidx/media3/exoplayer/r2;->m1(ZIZI)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    :goto_5
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_5

    instance-of v3, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    :cond_6
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    invoke-static {v13, v12, v1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v11, v15, v14}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    goto/16 :goto_11

    :goto_6
    const/16 v2, 0x7d0

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    goto/16 :goto_11

    :goto_7
    const/16 v2, 0x3ea

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    goto/16 :goto_11

    :goto_8
    iget v2, v1, Landroidx/media3/datasource/DataSourceException;->reason:I

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    goto/16 :goto_11

    :goto_9
    iget v4, v1, Landroidx/media3/common/ParserException;->dataType:I

    if-ne v4, v15, :cond_8

    iget-boolean v2, v1, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    if-eqz v2, :cond_7

    const/16 v2, 0xbb9

    goto :goto_a

    :cond_7
    const/16 v2, 0xbbb

    goto :goto_a

    :cond_8
    if-ne v4, v3, :cond_a

    iget-boolean v2, v1, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xbba

    goto :goto_a

    :cond_9
    const/16 v2, 0xbbc

    :cond_a
    :goto_a
    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    goto/16 :goto_11

    :goto_b
    iget v2, v1, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-direct {v11, v1, v2}, Landroidx/media3/exoplayer/r2;->Q(Ljava/io/IOException;I)V

    goto/16 :goto_11

    :goto_c
    iget v2, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v2, v15, :cond_c

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    iget v5, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    array-length v6, v4

    rem-int v6, v5, v6

    aget-object v4, v4, v6

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/a4;->z(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    goto :goto_d

    :cond_b
    iget-object v2, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    :goto_d
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    :cond_c
    iget v2, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v2, v15, :cond_e

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->a:[Landroidx/media3/exoplayer/a4;

    iget v4, v1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    array-length v5, v2

    rem-int v5, v4, v5

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/a4;->z(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-boolean v15, v11, Landroidx/media3/exoplayer/r2;->c0:Z

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->x()V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->x()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    iget-object v4, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v4

    if-eq v4, v1, :cond_d

    :goto_e
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v4

    if-eq v4, v1, :cond_d

    invoke-virtual {v2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    goto :goto_e

    :cond_d
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    iget v1, v1, Landroidx/media3/exoplayer/r3;->e:I

    if-eq v1, v3, :cond_15

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->g0()V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    goto/16 :goto_11

    :cond_e
    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_f
    move-object v10, v1

    iget v1, v10, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v1, v15, :cond_11

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-eq v1, v2, :cond_11

    :goto_f
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    iget-object v2, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/b3;->y()Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-eq v1, v2, :cond_10

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->b()Landroidx/media3/exoplayer/y2;

    goto :goto_f

    :cond_10
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->s:Landroidx/media3/exoplayer/b3;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/b3;->u()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->j0()V

    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v2, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v7, v1, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v5, v1, Landroidx/media3/exoplayer/z2;->c:J

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide v3, v7

    move-object v14, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/r2;->X(Landroidx/media3/exoplayer/source/r$b;JJJZI)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    goto :goto_10

    :cond_11
    move-object v14, v10

    :goto_10
    iget-boolean v1, v14, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    if-eqz v1, :cond_14

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v1, :cond_12

    iget v1, v14, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v2, 0x138c

    if-eq v1, v2, :cond_12

    const/16 v2, 0x138b

    if-ne v1, v2, :cond_14

    :cond_12
    const-string v1, "Recoverable renderer error"

    invoke-static {v13, v1, v14}, Landroidx/media3/common/util/u;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v1, :cond_13

    iput-object v14, v11, Landroidx/media3/exoplayer/r2;->W:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_13
    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v2, 0x19

    invoke-interface {v1, v2, v14}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/common/util/p;->b(Landroidx/media3/common/util/p$a;)Z

    goto :goto_11

    :cond_14
    invoke-static {v13, v12, v14}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    invoke-direct {v11, v15, v1}, Landroidx/media3/exoplayer/r2;->I1(ZZ)V

    iget-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    invoke-virtual {v1, v14}, Landroidx/media3/exoplayer/r3;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/r3;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/r2;->D:Landroidx/media3/exoplayer/r3;

    :cond_15
    :goto_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/r2;->j0()V

    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public i1(Ljava/util/List;IJLg2/v;)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    new-instance v8, Landroidx/media3/exoplayer/r2$b;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/r2$b;-><init>(Ljava/util/List;Lg2/v;IJLandroidx/media3/exoplayer/r2$a;)V

    const/16 p1, 0x11

    invoke-interface {v0, p1, v8}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public l1(ZII)V
    .locals 1

    shl-int/lit8 p3, p3, 0x4

    or-int/2addr p2, p3

    iget-object p3, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v0, 0x1

    invoke-interface {p3, v0, p1, p2}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public n1(Landroidx/media3/common/z;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/z;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    return-void
.end method

.method public p(ILjava/util/List;Lg2/v;)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    new-instance v8, Landroidx/media3/exoplayer/r2$b;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v4, -0x1

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/r2$b;-><init>(Ljava/util/List;Lg2/v;IJLandroidx/media3/exoplayer/r2$a;)V

    const/16 p2, 0x12

    const/4 p3, 0x0

    invoke-interface {v0, p2, p1, p3, v8}, Landroidx/media3/common/util/p;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public q1(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public s(F)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroidx/media3/common/util/p;->sendEmptyMessage(I)Z

    return-void
.end method

.method public t1(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public u(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/p;->obtainMessage(III)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method

.method public declared-synchronized x1(Ljava/lang/Object;J)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/r2;->F:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->j:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x1e

    invoke-interface {v2, p1, v3}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/p2;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/p2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/r2;->Z1(Lcom/google/common/base/q;J)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public z1(F)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/r2;->h:Landroidx/media3/common/util/p;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x20

    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/p;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/p$a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/util/p$a;->a()V

    return-void
.end method
