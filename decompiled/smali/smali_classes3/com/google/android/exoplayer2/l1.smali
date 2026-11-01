.class final Lcom/google/android/exoplayer2/l1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/n$a;
.implements Lla/q$a;
.implements Lcom/google/android/exoplayer2/h2$d;
.implements Lcom/google/android/exoplayer2/o$a;
.implements Lcom/google/android/exoplayer2/s2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/l1$c;,
        Lcom/google/android/exoplayer2/l1$b;,
        Lcom/google/android/exoplayer2/l1$d;,
        Lcom/google/android/exoplayer2/l1$g;,
        Lcom/google/android/exoplayer2/l1$h;,
        Lcom/google/android/exoplayer2/l1$f;,
        Lcom/google/android/exoplayer2/l1$e;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Lcom/google/android/exoplayer2/l1$h;

.field private L:J

.field private M:I

.field private N:Z

.field private O:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private P:J

.field private Q:J

.field private final a:[Lcom/google/android/exoplayer2/x2;

.field private final b:Ljava/util/Set;

.field private final c:[Lcom/google/android/exoplayer2/z2;

.field private final d:Lla/q;

.field private final e:Lla/r;

.field private final f:Lcom/google/android/exoplayer2/t1;

.field private final g:Lcom/google/android/exoplayer2/upstream/e;

.field private final h:Lcom/google/android/exoplayer2/util/o;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Landroid/os/Looper;

.field private final k:Lcom/google/android/exoplayer2/k3$d;

.field private final l:Lcom/google/android/exoplayer2/k3$b;

.field private final m:J

.field private final n:Z

.field private final o:Lcom/google/android/exoplayer2/o;

.field private final p:Ljava/util/ArrayList;

.field private final q:Lcom/google/android/exoplayer2/util/e;

.field private final r:Lcom/google/android/exoplayer2/l1$f;

.field private final s:Lcom/google/android/exoplayer2/e2;

.field private final t:Lcom/google/android/exoplayer2/h2;

.field private final u:Lcom/google/android/exoplayer2/s1;

.field private final v:J

.field private w:Lcom/google/android/exoplayer2/c3;

.field private x:Lcom/google/android/exoplayer2/l2;

.field private y:Lcom/google/android/exoplayer2/l1$e;

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/x2;Lla/q;Lla/r;Lcom/google/android/exoplayer2/t1;Lcom/google/android/exoplayer2/upstream/e;IZLe9/a;Lcom/google/android/exoplayer2/c3;Lcom/google/android/exoplayer2/s1;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/l1$f;Le9/u1;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    iput-object v9, v0, Lcom/google/android/exoplayer2/l1;->r:Lcom/google/android/exoplayer2/l1$f;

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    iput-object v2, v0, Lcom/google/android/exoplayer2/l1;->d:Lla/q;

    move-object v9, p3

    iput-object v9, v0, Lcom/google/android/exoplayer2/l1;->e:Lla/r;

    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    iput-object v3, v0, Lcom/google/android/exoplayer2/l1;->g:Lcom/google/android/exoplayer2/upstream/e;

    move/from16 v11, p6

    iput v11, v0, Lcom/google/android/exoplayer2/l1;->E:I

    move/from16 v11, p7

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/l1;->F:Z

    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/google/android/exoplayer2/l1;->w:Lcom/google/android/exoplayer2/c3;

    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/google/android/exoplayer2/l1;->u:Lcom/google/android/exoplayer2/s1;

    iput-wide v5, v0, Lcom/google/android/exoplayer2/l1;->v:J

    iput-wide v5, v0, Lcom/google/android/exoplayer2/l1;->P:J

    move/from16 v5, p13

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/l1;->A:Z

    iput-object v7, v0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Lcom/google/android/exoplayer2/l1;->Q:J

    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/t1;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/l1;->m:J

    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/t1;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/l1;->n:Z

    invoke-static {p3}, Lcom/google/android/exoplayer2/l2;->j(Lla/r;)Lcom/google/android/exoplayer2/l2;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    new-instance v6, Lcom/google/android/exoplayer2/l1$e;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/l1$e;-><init>(Lcom/google/android/exoplayer2/l2;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/z2;

    iput-object v5, v0, Lcom/google/android/exoplayer2/l1;->c:[Lcom/google/android/exoplayer2/z2;

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplayer2/x2;->g(ILe9/u1;)V

    iget-object v6, v0, Lcom/google/android/exoplayer2/l1;->c:[Lcom/google/android/exoplayer2/z2;

    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplayer2/x2;->getCapabilities()Lcom/google/android/exoplayer2/z2;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/o;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/o;-><init>(Lcom/google/android/exoplayer2/o$a;Lcom/google/android/exoplayer2/util/e;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/common/collect/Sets;->h()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->b:Ljava/util/Set;

    new-instance v1, Lcom/google/android/exoplayer2/k3$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/k3$d;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    new-instance v1, Lcom/google/android/exoplayer2/k3$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/k3$b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p2, p0, v3}, Lla/q;->c(Lla/q$a;Lcom/google/android/exoplayer2/upstream/e;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/l1;->N:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/exoplayer2/e2;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/e2;-><init>(Le9/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    new-instance v2, Lcom/google/android/exoplayer2/h2;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplayer2/h2;-><init>(Lcom/google/android/exoplayer2/h2$d;Le9/a;Landroid/os/Handler;Le9/u1;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->j:Landroid/os/Looper;

    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    return-void
.end method

.method private A()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/l2;->p:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/l1;->B(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private A0(Lcom/google/android/exoplayer2/l1$h;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget v4, v11, Lcom/google/android/exoplayer2/l1;->E:I

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/l1;->F:Z

    iget-object v6, v11, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-object v7, v11, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/l1;->v0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l1$h;ZIZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    iget-object v7, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-direct {v11, v7}, Lcom/google/android/exoplayer2/l1;->y(Lcom/google/android/exoplayer2/k3;)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/source/o$b;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v7, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/k3;->u()Z

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

    iget-wide v9, v0, Lcom/google/android/exoplayer2/l1$h;->c:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    :goto_1
    iget-object v14, v11, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-object v15, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v15, v15, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplayer2/e2;->B(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v7

    invoke-virtual {v7}, Lt9/j;->b()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v4, v4, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v5, v7, Lt9/j;->a:Ljava/lang/Object;

    iget-object v12, v11, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget-object v4, v11, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    iget v5, v7, Lt9/j;->b:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k3$b;->n(I)I

    move-result v4

    iget v5, v7, Lt9/j;->c:I

    if-ne v4, v5, :cond_2

    iget-object v4, v11, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/k3$b;->j()J

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
    iget-wide v14, v0, Lcom/google/android/exoplayer2/l1$h;->c:J

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
    iget-object v7, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v0, v11, Lcom/google/android/exoplayer2/l1;->K:Lcom/google/android/exoplayer2/l1$h;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-wide v7, v4

    goto/16 :goto_a

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v1, v1, Lcom/google/android/exoplayer2/l2;->e:I

    if-eq v1, v8, :cond_6

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/google/android/exoplayer2/l1;->o0(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    :cond_7
    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v9, v1}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-boolean v7, v1, Lcom/google/android/exoplayer2/b2;->d:Z

    if-eqz v7, :cond_8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    iget-object v2, v11, Lcom/google/android/exoplayer2/l1;->w:Lcom/google/android/exoplayer2/c3;

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/n;->a(JLcom/google/android/exoplayer2/c3;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    :goto_6
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/l2;->r:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v6, v3, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    :cond_9
    iget-wide v7, v3, Lcom/google/android/exoplayer2/l2;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    return-void

    :cond_a
    move-wide v1, v4

    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v3, v3, Lcom/google/android/exoplayer2/l2;->e:I

    if-ne v3, v0, :cond_c

    move v0, v8

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/google/android/exoplayer2/l1;->B0(Lcom/google/android/exoplayer2/source/o$b;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    :try_start_2
    iget-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v4, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v5, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/l1;->l1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    return-void

    :catchall_1
    move-exception v0

    move v10, v8

    move-wide v7, v14

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    throw v0
.end method

.method private B(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/b2;->y(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private B0(Lcom/google/android/exoplayer2/source/o$b;JZ)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

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

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/l1;->C0(Lcom/google/android/exoplayer2/source/o$b;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private C(Lcom/google/android/exoplayer2/source/n;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/e2;->v(Lcom/google/android/exoplayer2/source/n;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/e2;->y(J)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->T()V

    return-void
.end method

.method private C0(Lcom/google/android/exoplayer2/source/o$b;JZZ)J
    .locals 5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->g1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->C:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget p5, p5, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {p1, v3}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/b2;->z(J)J

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length p4, p1

    move p5, v0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v3, p1, p5

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/l1;->m(Lcom/google/android/exoplayer2/x2;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e2;->b()Lcom/google/android/exoplayer2/b2;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/e2;->z(Lcom/google/android/exoplayer2/b2;)Z

    const-wide p4, 0xe8d4a51000L

    invoke-virtual {v2, p4, p5}, Lcom/google/android/exoplayer2/b2;->x(J)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->p()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/e2;->z(Lcom/google/android/exoplayer2/b2;)Z

    iget-boolean p1, v2, Lcom/google/android/exoplayer2/b2;->d:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/c2;->b(J)Lcom/google/android/exoplayer2/c2;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    goto :goto_4

    :cond_8
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/b2;->e:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    move-result-wide p2

    iget-object p1, v2, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    iget-wide p4, p0, Lcom/google/android/exoplayer2/l1;->m:J

    sub-long p4, p2, p4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/l1;->n:Z

    invoke-interface {p1, p4, p5, v2}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/l1;->q0(J)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->T()V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e2;->f()V

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/l1;->q0(J)V

    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private D(Ljava/io/IOException;I)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object p2, p2, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lt9/j;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2}, Lcom/google/android/exoplayer2/l1;->f1(ZZ)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/l2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    return-void
.end method

.method private D0(Lcom/google/android/exoplayer2/s2;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->E0(Lcom/google/android/exoplayer2/s2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/l1$d;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/l1$d;-><init>(Lcom/google/android/exoplayer2/s2;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/l1$d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/l1$d;-><init>(Lcom/google/android/exoplayer2/s2;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v4, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget v5, p0, Lcom/google/android/exoplayer2/l1;->E:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/l1;->F:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    move-object v2, v0

    move-object v3, v4

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/l1;->s0(Lcom/google/android/exoplayer2/l1$d;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;IZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s2;->k(Z)V

    :goto_0
    return-void
.end method

.method private E(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/l2;->k:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v2, v1}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/l2;->b(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/l2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lcom/google/android/exoplayer2/l2;->r:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->i()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/exoplayer2/l2;->p:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->A()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplayer2/l2;->q:J

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lcom/google/android/exoplayer2/b2;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->n()Lt9/x;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->i1(Lt9/x;Lla/r;)V

    :cond_4
    return-void
.end method

.method private E0(Lcom/google/android/exoplayer2/s2;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->c()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->j:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->l(Lcom/google/android/exoplayer2/s2;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget p1, p1, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private F(Lcom/google/android/exoplayer2/k3;Z)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v2, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v3, v11, Lcom/google/android/exoplayer2/l1;->K:Lcom/google/android/exoplayer2/l1$h;

    iget-object v4, v11, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget v5, v11, Lcom/google/android/exoplayer2/l1;->E:I

    iget-boolean v6, v11, Lcom/google/android/exoplayer2/l1;->F:Z

    iget-object v7, v11, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-object v8, v11, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/l1;->u0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/l1$h;Lcom/google/android/exoplayer2/e2;IZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/l1$g;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/exoplayer2/l1$g;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v9, v7, Lcom/google/android/exoplayer2/l1$g;->c:J

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/l1$g;->d:Z

    iget-wide v13, v7, Lcom/google/android/exoplayer2/l1$g;->b:J

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v1, v8}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/l2;->r:J

    cmp-long v1, v13, v1

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

    const/4 v4, 0x4

    :try_start_0
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/l1$g;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v1, v1, Lcom/google/android/exoplayer2/l2;->e:I

    if-eq v1, v15, :cond_2

    invoke-direct {v11, v4}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v20, v4

    move v15, v5

    goto/16 :goto_8

    :cond_2
    :goto_2
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/google/android/exoplayer2/l1;->o0(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-nez v16, :cond_4

    :try_start_1
    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-wide v3, v11, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->x()J

    move-result-wide v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    move v15, v5

    move-wide/from16 v5, v21

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/e2;->F(Lcom/google/android/exoplayer2/k3;JJ)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/l1;->z0(Z)V

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move v15, v5

    const/16 v20, 0x4

    goto :goto_3

    :catchall_3
    move-exception v0

    move/from16 v20, v4

    move v15, v5

    goto :goto_3

    :cond_4
    move/from16 v20, v4

    move v15, v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v2, v8}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-object v3, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/e2;->r(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/c2;)Lcom/google/android/exoplayer2/c2;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->A()V

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/google/android/exoplayer2/l1;->B0(Lcom/google/android/exoplayer2/source/o$b;JZ)J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v13, v0

    :cond_7
    :goto_5
    iget-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v4, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v5, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/l1$g;->f:Z

    if-eqz v0, :cond_8

    move-wide v6, v13

    goto :goto_6

    :cond_8
    move-wide/from16 v6, v18

    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/l1;->l1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;J)V

    if-nez v16, :cond_9

    iget-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/l2;->c:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v1, v1, Lt9/j;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    if-eqz v16, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v11, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/k3$b;->f:Z

    if-nez v0, :cond_a

    const/16 v23, 0x1

    goto :goto_7

    :cond_a
    move/from16 v23, v15

    :goto_7
    iget-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/l2;->d:J

    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move/from16 v17, v20

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->p0()V

    iget-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-direct {v11, v12, v0}, Lcom/google/android/exoplayer2/l1;->t0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;)V

    iget-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/l2;->i(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    iput-object v6, v11, Lcom/google/android/exoplayer2/l1;->K:Lcom/google/android/exoplayer2/l1$h;

    :cond_d
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    return-void

    :goto_8
    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v4, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v5, v1, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-boolean v1, v7, Lcom/google/android/exoplayer2/l1$g;->f:Z

    if-eqz v1, :cond_e

    move-wide/from16 v18, v13

    :cond_e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/l1;->l1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;J)V

    if-nez v16, :cond_f

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/l2;->c:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_12

    :cond_f
    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v2, v1, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, v2, Lt9/j;->a:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    if-eqz v16, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v11, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/k3$b;->f:Z

    if-nez v1, :cond_10

    const/16 v23, 0x1

    goto :goto_9

    :cond_10
    const/16 v23, 0x0

    :goto_9
    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/l2;->d:J

    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    move/from16 v17, v20

    :cond_11
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->p0()V

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-direct {v11, v12, v1}, Lcom/google/android/exoplayer2/l1;->t0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;)V

    iget-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/l2;->i(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/l2;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-nez v1, :cond_13

    iput-object v15, v11, Lcom/google/android/exoplayer2/l1;->K:Lcom/google/android/exoplayer2/l1$h;

    :cond_13
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    throw v0
.end method

.method private F0(Lcom/google/android/exoplayer2/s2;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->c()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s2;->k(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/k1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/k1;-><init>(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/s2;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private G(Lcom/google/android/exoplayer2/source/n;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/e2;->v(Lcom/google/android/exoplayer2/source/n;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/n2;->a:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/b2;->p(FLcom/google/android/exoplayer2/k3;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->n()Lt9/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/l1;->i1(Lt9/x;Lla/r;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c2;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/l1;->q0(J)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->p()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v2, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v7, p1, Lcom/google/android/exoplayer2/c2;->b:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/l2;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->T()V

    return-void
.end method

.method private G0(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/l1;->H0(Lcom/google/android/exoplayer2/x2;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private H(Lcom/google/android/exoplayer2/n2;FZZ)V
    .locals 3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/l2;->f(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/l2;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_1
    iget p3, p1, Lcom/google/android/exoplayer2/n2;->a:F

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/l1;->m1(F)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    aget-object v1, p3, v0

    if-eqz v1, :cond_2

    iget v2, p1, Lcom/google/android/exoplayer2/n2;->a:F

    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplayer2/x2;->d(FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private H0(Lcom/google/android/exoplayer2/x2;J)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/x2;->setCurrentStreamFinal()V

    instance-of v0, p1, Lba/p;

    if-eqz v0, :cond_0

    check-cast p1, Lba/p;

    invoke-virtual {p1, p2, p3}, Lba/p;->H(J)V

    :cond_0
    return-void
.end method

.method private I(Lcom/google/android/exoplayer2/n2;Z)V
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/n2;->a:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/l1;->H(Lcom/google/android/exoplayer2/n2;FZZ)V

    return-void
.end method

.method private I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->G:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/l1;->G:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/x2;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

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

    :cond_2
    :goto_1
    return-void
.end method

.method private J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/l1;->N:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/l2;->r:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {p1, v1}, Lt9/j;->equals(Ljava/lang/Object;)Z

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
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/l1;->N:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->p0()V

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v3, v1, Lcom/google/android/exoplayer2/l2;->h:Lt9/x;

    iget-object v4, v1, Lcom/google/android/exoplayer2/l2;->i:Lla/r;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->j:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/h2;->s()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v3, Lt9/x;->d:Lt9/x;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->n()Lt9/x;

    move-result-object v3

    :goto_2
    if-nez v1, :cond_3

    iget-object v4, v0, Lcom/google/android/exoplayer2/l1;->e:Lla/r;

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v4

    :goto_3
    iget-object v7, v4, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/l1;->t([Lcom/google/android/exoplayer2/trackselection/h;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v9, v8, Lcom/google/android/exoplayer2/c2;->c:J

    cmp-long v9, v9, v5

    if-eqz v9, :cond_4

    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplayer2/c2;->a(J)Lcom/google/android/exoplayer2/c2;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    :cond_4
    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_4

    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v7, v7, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {p1, v7}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v1, Lt9/x;->d:Lt9/x;

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->e:Lla/r;

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

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/l1$e;->e(I)V

    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->A()J

    move-result-wide v9

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/l2;->c(Lcom/google/android/exoplayer2/source/o$b;JJJJLt9/x;Lla/r;Ljava/util/List;)Lcom/google/android/exoplayer2/l2;

    move-result-object v1

    return-object v1
.end method

.method private J0(Lcom/google/android/exoplayer2/l1$b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->a(Lcom/google/android/exoplayer2/l1$b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/l1$h;

    new-instance v1, Lcom/google/android/exoplayer2/t2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->b(Lcom/google/android/exoplayer2/l1$b;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->c(Lcom/google/android/exoplayer2/l1$b;)Lt9/t;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/t2;-><init>(Ljava/util/Collection;Lt9/t;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->a(Lcom/google/android/exoplayer2/l1$b;)I

    move-result v2

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->d(Lcom/google/android/exoplayer2/l1$b;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/l1$h;-><init>(Lcom/google/android/exoplayer2/k3;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/l1;->K:Lcom/google/android/exoplayer2/l1$h;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->b(Lcom/google/android/exoplayer2/l1$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->c(Lcom/google/android/exoplayer2/l1$b;)Lt9/t;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/h2;->B(Ljava/util/List;Lt9/t;)Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->F(Lcom/google/android/exoplayer2/k3;Z)V

    return-void
.end method

.method private K(Lcom/google/android/exoplayer2/x2;Lcom/google/android/exoplayer2/b2;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-boolean p2, p2, Lcom/google/android/exoplayer2/c2;->f:Z

    if-eqz p2, :cond_1

    iget-boolean p2, v0, Lcom/google/android/exoplayer2/b2;->d:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Lba/p;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/google/android/exoplayer2/metadata/f;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/x2;->e()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->m()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private L()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/b2;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    iget-object v4, v0, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v4, v4, v1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/exoplayer2/x2;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/l1;->K(Lcom/google/android/exoplayer2/x2;Lcom/google/android/exoplayer2/b2;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private L0(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->I:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/l1;->I:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/l2;->o:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private static M(ZLcom/google/android/exoplayer2/source/o$b;JLcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3$b;J)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_3

    cmp-long p0, p2, p6

    if-nez p0, :cond_3

    iget-object p0, p1, Lt9/j;->a:Ljava/lang/Object;

    iget-object p2, p4, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lt9/j;->b()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    iget p0, p1, Lt9/j;->b:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/k3$b;->t(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p1, Lt9/j;->b:I

    iget p3, p1, Lt9/j;->c:I

    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplayer2/k3$b;->k(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_1

    iget p0, p1, Lt9/j;->b:I

    iget p1, p1, Lt9/j;->c:I

    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplayer2/k3$b;->k(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    move v0, p2

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p4}, Lt9/j;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p4, Lt9/j;->b:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/k3$b;->t(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p2

    :cond_3
    :goto_0
    return v0
.end method

.method private M0(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/l1;->A:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->p0()V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/l1;->B:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->z0(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    :cond_0
    return-void
.end method

.method private N()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->k()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static O(Lcom/google/android/exoplayer2/x2;)Z
    .locals 0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/x2;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private O0(ZIZI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/l1$e;->c(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/l2;->d(ZI)Lcom/google/android/exoplayer2/l2;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/l1;->C:Z

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->d0(Z)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->a1()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->g1()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->k1()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget p1, p1, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->d1()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private P()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/c2;->e:J

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/b2;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/l2;->r:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->a1()Z

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

.method private static Q(Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/k3$b;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k3$b;->f:Z

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

.method private Q0(Lcom/google/android/exoplayer2/n2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/n2;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->I(Lcom/google/android/exoplayer2/n2;Z)V

    return-void
.end method

.method private synthetic R()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->z:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic S(Lcom/google/android/exoplayer2/s2;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->l(Lcom/google/android/exoplayer2/s2;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private S0(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/exoplayer2/l1;->E:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/e2;->G(Lcom/google/android/exoplayer2/k3;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->z0(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    return-void
.end method

.method private T()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->Z0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b2;->d(J)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->h1()V

    return-void
.end method

.method private T0(Lcom/google/android/exoplayer2/c3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->w:Lcom/google/android/exoplayer2/c3;

    return-void
.end method

.method private U()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l1$e;->d(Lcom/google/android/exoplayer2/l2;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/l1$e;->a(Lcom/google/android/exoplayer2/l1$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->r:Lcom/google/android/exoplayer2/l1$f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/l1$f;->a(Lcom/google/android/exoplayer2/l1$e;)V

    new-instance v0, Lcom/google/android/exoplayer2/l1$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/l1$e;-><init>(Lcom/google/android/exoplayer2/l2;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    :cond_0
    return-void
.end method

.method private V(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v0}, Lt9/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->N:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->N:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v0, v0, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/l1;->M:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/l1$d;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_5

    iget v4, v3, Lcom/google/android/exoplayer2/l1$d;->b:I

    if-gt v4, v0, :cond_3

    if-ne v4, v0, :cond_5

    iget-wide v3, v3, Lcom/google/android/exoplayer2/l1$d;->c:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_5

    :cond_3
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/l1$d;

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    move v7, v3

    move-object v3, v1

    move v1, v7

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/l1$d;

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/google/android/exoplayer2/l1$d;->d:Ljava/lang/Object;

    if-eqz v4, :cond_8

    iget v4, v3, Lcom/google/android/exoplayer2/l1$d;->b:I

    if-lt v4, v0, :cond_7

    if-ne v4, v0, :cond_8

    iget-wide v4, v3, Lcom/google/android/exoplayer2/l1$d;->c:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/l1$d;

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz v3, :cond_e

    iget-object v4, v3, Lcom/google/android/exoplayer2/l1$d;->d:Ljava/lang/Object;

    if-eqz v4, :cond_e

    iget v4, v3, Lcom/google/android/exoplayer2/l1$d;->b:I

    if-ne v4, v0, :cond_e

    iget-wide v4, v3, Lcom/google/android/exoplayer2/l1$d;->c:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_e

    cmp-long v4, v4, p3

    if-gtz v4, :cond_e

    :try_start_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/l1;->E0(Lcom/google/android/exoplayer2/s2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v3, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->b()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v3, v3, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2;->j()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/l1$d;

    goto :goto_3

    :cond_b
    move-object v3, v2

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object p2, v3, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->b()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, v3, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->j()Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    iget-object p2, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    throw p1

    :cond_e
    iput v1, p0, Lcom/google/android/exoplayer2/l1;->M:I

    :cond_f
    :goto_6
    return-void
.end method

.method private V0(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/l1;->F:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/e2;->H(Lcom/google/android/exoplayer2/k3;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->z0(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    return-void
.end method

.method private W()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/e2;->y(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/l1;->L:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/e2;->o(JLcom/google/android/exoplayer2/l2;)Lcom/google/android/exoplayer2/c2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-object v5, p0, Lcom/google/android/exoplayer2/l1;->c:[Lcom/google/android/exoplayer2/z2;

    iget-object v6, p0, Lcom/google/android/exoplayer2/l1;->d:Lla/q;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/t1;->getAllocator()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    iget-object v10, p0, Lcom/google/android/exoplayer2/l1;->e:Lla/r;

    move-object v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/e2;->g([Lcom/google/android/exoplayer2/z2;Lla/q;Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/h2;Lcom/google/android/exoplayer2/c2;Lla/r;)Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/c2;->b:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/n;->e(Lcom/google/android/exoplayer2/source/n$a;J)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v2

    if-ne v2, v1, :cond_0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c2;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/l1;->q0(J)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->D:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->N()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->D:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->h1()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->T()V

    :goto_0
    return-void
.end method

.method private W0(Lt9/t;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/h2;->C(Lt9/t;)Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->F(Lcom/google/android/exoplayer2/k3;Z)V

    return-void
.end method

.method private X()V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->Y0()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->U()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->b()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/b2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, v2, Lt9/j;->a:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v3, v3, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget v4, v2, Lt9/j;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v4, v4, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget v6, v4, Lt9/j;->b:I

    if-ne v6, v5, :cond_1

    iget v2, v2, Lt9/j;->e:I

    iget v4, v4, Lt9/j;->e:I

    if-eq v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iget-object v1, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v5, v1, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/c2;->b:J

    iget-wide v8, v1, Lcom/google/android/exoplayer2/c2;->c:J

    xor-int/lit8 v12, v2, 0x1

    const/4 v13, 0x0

    move-object v4, p0

    move-wide v6, v10

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->p0()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->k1()V

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private X0(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v1, v0, Lcom/google/android/exoplayer2/l2;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/l1;->Q:J

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l2;->g(I)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_1
    return-void
.end method

.method private Y()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/l1;->B:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->L()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/b2;->d:Z

    if-nez v1, :cond_3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->m()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/e2;->c()Lcom/google/android/exoplayer2/b2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v11, v7, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v7, v5, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v10, v7, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v12, v0, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, p0

    move-object v9, v11

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/l1;->l1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;J)V

    iget-boolean v0, v5, Lcom/google/android/exoplayer2/b2;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

    move-result-wide v7

    cmp-long v0, v7, v3

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/b2;->m()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/l1;->G0(J)V

    return-void

    :cond_4
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    invoke-virtual {v1, v0}, Lla/r;->c(I)Z

    move-result v3

    invoke-virtual {v6, v0}, Lla/r;->c(I)Z

    move-result v4

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/x2;->isCurrentStreamFinal()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->c:[Lcom/google/android/exoplayer2/z2;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/z2;->getTrackType()I

    move-result v3

    const/4 v7, -0x2

    if-ne v3, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    iget-object v7, v1, Lla/r;->b:[Lcom/google/android/exoplayer2/a3;

    aget-object v7, v7, v0

    iget-object v8, v6, Lla/r;->b:[Lcom/google/android/exoplayer2/a3;

    aget-object v8, v8, v0

    if-eqz v4, :cond_6

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/a3;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v3, v3, v0

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/b2;->m()J

    move-result-wide v7

    invoke-direct {p0, v3, v7, v8}, Lcom/google/android/exoplayer2/l1;->H0(Lcom/google/android/exoplayer2/x2;J)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void

    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/c2;->i:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/l1;->B:Z

    if-eqz v1, :cond_d

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v5, v1

    if-ge v2, v5, :cond_d

    aget-object v1, v1, v2

    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v5, v5, v2

    if-eqz v5, :cond_c

    invoke-interface {v1}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v6

    if-ne v6, v5, :cond_c

    invoke-interface {v1}, Lcom/google/android/exoplayer2/x2;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/c2;->e:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_b

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->l()J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/c2;->e:J

    add-long/2addr v5, v7

    goto :goto_4

    :cond_b
    move-wide v5, v3

    :goto_4
    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/l1;->H0(Lcom/google/android/exoplayer2/x2;J)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private Y0()Z
    .locals 6

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->a1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->B:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->m()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/b2;->g:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private Z()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/b2;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->m0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->p()V

    :cond_1
    :goto_0
    return-void
.end method

.method private Z0()Z
    .locals 9

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->N()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->k()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/l1;->B(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b2;->y(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b2;->y(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/c2;->b:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    iget v8, v0, Lcom/google/android/exoplayer2/n2;->a:F

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/t1;->c(JJF)Z

    move-result v0

    return v0
.end method

.method private a0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h2;->i()Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/l1;->F(Lcom/google/android/exoplayer2/k3;Z)V

    return-void
.end method

.method private a1()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/l2;->l:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/l2;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b0(Lcom/google/android/exoplayer2/l1$c;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method private b1(Z)Z
    .locals 12

    iget v0, p0, Lcom/google/android/exoplayer2/l1;->J:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->P()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/l2;->g:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/l1;->c1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->u:Lcom/google/android/exoplayer2/s1;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/s1;->b()J

    move-result-wide v3

    :goto_0
    move-wide v10, v3

    goto :goto_1

    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b2;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/c2;->i:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v3}, Lt9/j;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/b2;->d:Z

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    if-nez v1, :cond_6

    if-nez p1, :cond_6

    iget-object v5, p0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->A()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object p1

    iget v8, p1, Lcom/google/android/exoplayer2/n2;->a:F

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/l1;->C:Z

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/t1;->a(JFZJ)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/l1;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->R()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private c0()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    iget-object v1, v1, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/h;->a()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)Z
    .locals 4

    invoke-virtual {p2}, Lt9/j;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lt9/j;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/k3$b;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/k3$d;->i:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/google/android/exoplayer2/k3$d;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private d0(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    iget-object v1, v1, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/h;->b(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d1()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->C:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->f()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/x2;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/l1;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->S(Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method private e0()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    iget-object v1, v1, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/h;->c()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/l1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/l1;->H:Z

    return p1
.end method

.method private f1(ZZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/l1;->G:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/exoplayer2/l1;->o0(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t1;->onStopped()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    return-void
.end method

.method private g1()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->g()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/l1;->r(Lcom/google/android/exoplayer2/x2;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/l1;->o0(ZZZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/t1;->onPrepared()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->g:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/e;->b()Lcom/google/android/exoplayer2/upstream/k0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/h2;->v(Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    return-void
.end method

.method private h1()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/l1;->D:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->isLoading()Z

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/l2;->g:Z

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/l2;->a(Z)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_2
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/l1;)Lcom/google/android/exoplayer2/util/o;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    return-object p0
.end method

.method private i1(Lt9/x;Lla/r;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    iget-object p2, p2, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/t1;->b([Lcom/google/android/exoplayer2/x2;Lt9/x;[Lcom/google/android/exoplayer2/trackselection/h;)V

    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/l1$b;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h2;->q()I

    move-result p2

    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->b(Lcom/google/android/exoplayer2/l1$b;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1$b;->c(Lcom/google/android/exoplayer2/l1$b;)Lt9/t;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/h2;->f(ILjava/util/List;Lt9/t;)Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/l1;->F(Lcom/google/android/exoplayer2/k3;Z)V

    return-void
.end method

.method private j0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v1, v0}, Lcom/google/android/exoplayer2/l1;->o0(ZZZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->f:Lcom/google/android/exoplayer2/t1;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/t1;->onReleased()V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/l1;->z:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j1()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h2;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->W()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->Y()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->Z()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->X()V

    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/l1;->z0(Z)V

    return-void
.end method

.method private k0(IILt9/t;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->y:Lcom/google/android/exoplayer2/l1$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/l1$e;->b(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/h2;->z(IILt9/t;)Lcom/google/android/exoplayer2/k3;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/l1;->F(Lcom/google/android/exoplayer2/k3;Z)V

    return-void
.end method

.method private k1()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/b2;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/l1;->q0(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/l2;->r:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/l2;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v10

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o;->h(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/b2;->y(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/l2;->r:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/l1;->V(JJ)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iput-wide v0, v2, Lcom/google/android/exoplayer2/l2;->r:J

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->i()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/l2;->p:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->A()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/l2;->q:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/l2;->l:Z

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/l1;->c1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->n:Lcom/google/android/exoplayer2/n2;

    iget v0, v0, Lcom/google/android/exoplayer2/n2;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->u:Lcom/google/android/exoplayer2/s1;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->u()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->A()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/s1;->a(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/n2;->a:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/l2;->n:Lcom/google/android/exoplayer2/n2;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/n2;->e(F)Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/n2;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->n:Lcom/google/android/exoplayer2/n2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/n2;->a:F

    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/exoplayer2/l1;->H(Lcom/google/android/exoplayer2/n2;FZZ)V

    :cond_5
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/s2;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->g()Lcom/google/android/exoplayer2/s2$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->i()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/s2$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s2;->k(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s2;->k(Z)V

    throw v1
.end method

.method private l1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/l1;->c1(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lt9/j;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/n2;->d:Lcom/google/android/exoplayer2/n2;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object p1, p1, Lcom/google/android/exoplayer2/l2;->n:Lcom/google/android/exoplayer2/n2;

    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/n2;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/n2;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p2, Lt9/j;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->u:Lcom/google/android/exoplayer2/s1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k3$d;->k:Lcom/google/android/exoplayer2/v1$g;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/v1$g;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/s1;->e(Lcom/google/android/exoplayer2/v1$g;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_3

    iget-object p3, p0, Lcom/google/android/exoplayer2/l1;->u:Lcom/google/android/exoplayer2/s1;

    iget-object p2, p2, Lt9/j;->a:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/l1;->w(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/s1;->d(J)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k3$d;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p4, Lt9/j;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/k3$b;->c:I

    iget-object p4, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplayer2/k3$d;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->u:Lcom/google/android/exoplayer2/s1;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/s1;->d(J)V

    :cond_5
    :goto_2
    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/x2;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/x2;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->r(Lcom/google/android/exoplayer2/x2;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/x2;->disable()V

    iget p1, p0, Lcom/google/android/exoplayer2/l1;->J:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/l1;->J:I

    return-void
.end method

.method private m0()Z
    .locals 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5

    aget-object v8, v5, v3

    invoke-static {v8}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v8}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v1, v3}, Lla/r;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v8}, Lcom/google/android/exoplayer2/x2;->isCurrentStreamFinal()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v1, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/l1;->v(Lcom/google/android/exoplayer2/trackselection/h;)[Lcom/google/android/exoplayer2/o1;

    move-result-object v9

    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v10, v5, v3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->m()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->l()J

    move-result-wide v13

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/x2;->h([Lcom/google/android/exoplayer2/o1;Lt9/s;JJ)V

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Lcom/google/android/exoplayer2/x2;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/l1;->m(Lcom/google/android/exoplayer2/x2;)V

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method private m1(F)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    iget-object v1, v1, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/h;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private n()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/e;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/o;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->j1()V

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v3, v3, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_1

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/l1;->x0(JJ)V

    return-void

    :cond_1
    const-string v9, "doSomeWork"

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->k1()V

    iget-boolean v9, v3, Lcom/google/android/exoplayer2/b2;->d:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long/2addr v13, v10

    iget-object v9, v3, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    iget-object v15, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v7, v15, Lcom/google/android/exoplayer2/l2;->r:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/l1;->m:J

    sub-long/2addr v7, v10

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/l1;->n:Z

    invoke-interface {v9, v7, v8, v10}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    move v8, v5

    move v9, v8

    move v7, v12

    :goto_0
    iget-object v10, v0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v11, v10

    if-ge v7, v11, :cond_b

    aget-object v10, v10, v7

    invoke-static {v10}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_7

    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/x2;->render(JJ)V

    if-eqz v8, :cond_3

    invoke-interface {v10}, Lcom/google/android/exoplayer2/x2;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v12

    :goto_1
    iget-object v4, v3, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    if-nez v4, :cond_5

    invoke-interface {v10}, Lcom/google/android/exoplayer2/x2;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v12

    :goto_3
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/x2;->isReady()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplayer2/x2;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v12

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    move v9, v12

    :goto_6
    if-nez v4, :cond_9

    invoke-interface {v10}, Lcom/google/android/exoplayer2/x2;->maybeThrowStreamError()V

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_0

    :cond_a
    iget-object v4, v3, Lcom/google/android/exoplayer2/b2;->a:Lcom/google/android/exoplayer2/source/n;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/n;->maybeThrowPrepareError()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_b
    iget-object v4, v3, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/c2;->e:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_d

    iget-boolean v7, v3, Lcom/google/android/exoplayer2/b2;->d:Z

    if-eqz v7, :cond_d

    cmp-long v7, v4, v13

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/l2;->r:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    move v4, v12

    :goto_8
    if-eqz v4, :cond_e

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/l1;->B:Z

    if-eqz v5, :cond_e

    iput-boolean v12, v0, Lcom/google/android/exoplayer2/l1;->B:Z

    iget-object v5, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v5, v5, Lcom/google/android/exoplayer2/l2;->m:I

    const/4 v7, 0x5

    invoke-direct {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/l1;->O0(ZIZI)V

    :cond_e
    const/4 v5, 0x3

    if-eqz v4, :cond_f

    iget-object v4, v3, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/c2;->i:Z

    if-eqz v4, :cond_f

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->g1()V

    goto :goto_9

    :cond_f
    iget-object v4, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v4, v4, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10

    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/l1;->b1(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/exoplayer2/l1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->a1()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->d1()V

    goto :goto_9

    :cond_10
    iget-object v4, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v4, v4, Lcom/google/android/exoplayer2/l2;->e:I

    if-ne v4, v5, :cond_14

    iget v4, v0, Lcom/google/android/exoplayer2/l1;->J:I

    if-nez v4, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->P()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_11
    if-nez v9, :cond_14

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->a1()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/l1;->C:Z

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/l1;->X0(I)V

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/l1;->C:Z

    if-eqz v4, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->e0()V

    iget-object v4, v0, Lcom/google/android/exoplayer2/l1;->u:Lcom/google/android/exoplayer2/s1;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/s1;->c()V

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->g1()V

    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v4, v4, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_19

    move v4, v12

    :goto_a
    iget-object v7, v0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v8, v7

    if-ge v4, v8, :cond_16

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplayer2/x2;->maybeThrowStreamError()V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean v4, v3, Lcom/google/android/exoplayer2/l2;->g:Z

    if-nez v4, :cond_19

    iget-wide v3, v3, Lcom/google/android/exoplayer2/l2;->q:J

    const-wide/32 v7, 0x7a120

    cmp-long v3, v3, v7

    if-gez v3, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->N()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-wide v3, v0, Lcom/google/android/exoplayer2/l1;->Q:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/l1;->Q:J

    goto :goto_b

    :cond_17
    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplayer2/l1;->Q:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0xfa0

    cmp-long v3, v3, v7

    if-gez v3, :cond_18

    goto :goto_b

    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    iput-wide v13, v0, Lcom/google/android/exoplayer2/l1;->Q:J

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->a1()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v3, v3, Lcom/google/android/exoplayer2/l2;->e:I

    if-ne v3, v5, :cond_1a

    const/4 v3, 0x1

    goto :goto_c

    :cond_1a
    move v3, v12

    :goto_c
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/l1;->I:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/l1;->H:Z

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    const/4 v15, 0x1

    goto :goto_d

    :cond_1b
    move v15, v12

    :goto_d
    iget-object v4, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean v7, v4, Lcom/google/android/exoplayer2/l2;->o:Z

    if-eq v7, v15, :cond_1c

    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer2/l2;->h(Z)Lcom/google/android/exoplayer2/l2;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_1c
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/l1;->H:Z

    if-nez v15, :cond_21

    iget-object v4, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v4, v4, Lcom/google/android/exoplayer2/l2;->e:I

    if-ne v4, v6, :cond_1d

    goto :goto_10

    :cond_1d
    if-nez v3, :cond_1e

    const/4 v3, 0x2

    if-ne v4, v3, :cond_1f

    :cond_1e
    const-wide/16 v3, 0xa

    goto :goto_e

    :cond_1f
    if-ne v4, v5, :cond_20

    iget v3, v0, Lcom/google/android/exoplayer2/l1;->J:I

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/l1;->x0(JJ)V

    goto :goto_f

    :goto_e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/l1;->x0(JJ)V

    :cond_20
    :goto_f
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    :cond_21
    :goto_10
    return-void
.end method

.method private n0()V
    .locals 19

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->getPlaybackParameters()Lcom/google/android/exoplayer2/n2;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/n2;->a:F

    iget-object v1, v10, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_b

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/b2;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v4, v10, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v4, v4, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/b2;->v(FLcom/google/android/exoplayer2/k3;)Lla/r;

    move-result-object v13

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v4

    invoke-virtual {v13, v4}, Lla/r;->a(Lla/r;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_9

    const/4 v8, 0x4

    if-eqz v3, :cond_7

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v6

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/e2;->z(Lcom/google/android/exoplayer2/b2;)Z

    move-result v16

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v0, v0

    new-array v7, v0, [Z

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/l2;->r:J

    move-object v12, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer2/b2;->b(Lla/r;JZ[Z)J

    move-result-wide v12

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v1, v0, Lcom/google/android/exoplayer2/l2;->e:I

    if-eq v1, v8, :cond_1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/l2;->r:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v9

    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/l2;->c:J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/l2;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    if-eqz v14, :cond_2

    invoke-direct {v10, v12, v13}, Lcom/google/android/exoplayer2/l1;->q0(J)V

    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    :goto_2
    iget-object v1, v10, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v2, v1

    if-ge v9, v2, :cond_5

    aget-object v1, v1, v9

    invoke-static {v1}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v2

    aput-boolean v2, v0, v9

    iget-object v3, v11, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v3, v3, v9

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v2

    if-eq v3, v2, :cond_3

    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/l1;->m(Lcom/google/android/exoplayer2/x2;)V

    goto :goto_3

    :cond_3
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_4

    iget-wide v2, v10, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/x2;->resetPosition(J)V

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/l1;->q([Z)V

    :cond_6
    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/e2;->z(Lcom/google/android/exoplayer2/b2;)Z

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/b2;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c2;->b:J

    iget-wide v4, v10, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/b2;->y(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/google/android/exoplayer2/b2;->a(Lla/r;JZ)J

    goto :goto_4

    :goto_5
    invoke-direct {v10, v5}, Lcom/google/android/exoplayer2/l1;->E(Z)V

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v0, v0, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->T()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->k1()V

    iget-object v0, v10, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    move v4, v9

    const/4 v5, 0x1

    if-ne v1, v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b2;->j()Lcom/google/android/exoplayer2/b2;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_6
    return-void
.end method

.method private declared-synchronized n1(Lcom/google/common/base/q;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/e;->a()V

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
    iget-object p2, p0, Lcom/google/android/exoplayer2/l1;->q:Lcom/google/android/exoplayer2/util/e;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

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

.method private o(IZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v3

    iget-object v6, v3, Lla/r;->b:[Lcom/google/android/exoplayer2/a3;

    aget-object v6, v6, p1

    iget-object v3, v3, Lla/r;->c:[Lcom/google/android/exoplayer2/trackselection/h;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/google/android/exoplayer2/l1;->v(Lcom/google/android/exoplayer2/trackselection/h;)[Lcom/google/android/exoplayer2/o1;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/l1;->a1()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget v3, v3, Lcom/google/android/exoplayer2/l2;->e:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    move v14, v5

    goto :goto_1

    :cond_2
    move v14, v4

    :goto_1
    if-nez p2, :cond_3

    if-eqz v14, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/l1;->J:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/l1;->J:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->m()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/b2;->l()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/x2;->c(Lcom/google/android/exoplayer2/a3;[Lcom/google/android/exoplayer2/o1;Lt9/s;JZZJJ)V

    new-instance v2, Lcom/google/android/exoplayer2/l1$a;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/l1$a;-><init>(Lcom/google/android/exoplayer2/l1;)V

    const/16 v3, 0xb

    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/s2$b;->handleMessage(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/x2;)V

    if-eqz v14, :cond_4

    invoke-interface {v1}, Lcom/google/android/exoplayer2/x2;->start()V

    :cond_4
    return-void
.end method

.method private o0(ZZZZ)V
    .locals 28

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/o;->removeMessages(I)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/exoplayer2/l1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/l1;->C:Z

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o;->g()V

    const-wide v4, 0xe8d4a51000L

    iput-wide v4, v1, Lcom/google/android/exoplayer2/l1;->L:J

    iget-object v4, v1, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/l1;->m(Lcom/google/android/exoplayer2/x2;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v4, v1, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v5, v4

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    iget-object v8, v1, Lcom/google/android/exoplayer2/l1;->b:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/x2;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    invoke-static {v7, v0, v8}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    iput v3, v1, Lcom/google/android/exoplayer2/l1;->J:I

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v4, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/l2;->r:J

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v0}, Lt9/j;->b()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v7, v1, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/l1;->Q(Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/k3$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/l2;->r:J

    goto :goto_6

    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/l2;->c:J

    :goto_6
    if-eqz p2, :cond_5

    iput-object v2, v1, Lcom/google/android/exoplayer2/l1;->K:Lcom/google/android/exoplayer2/l1$h;

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/l1;->y(Lcom/google/android/exoplayer2/k3;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/source/o$b;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v4, v0}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_7
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    goto :goto_8

    :cond_5
    move v0, v3

    goto :goto_7

    :goto_8
    iget-object v4, v1, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/e2;->f()V

    iput-boolean v3, v1, Lcom/google/android/exoplayer2/l1;->D:Z

    new-instance v3, Lcom/google/android/exoplayer2/l2;

    iget-object v4, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v5, v4, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget v11, v4, Lcom/google/android/exoplayer2/l2;->e:I

    if-eqz p4, :cond_6

    :goto_9
    move-object v12, v2

    goto :goto_a

    :cond_6
    iget-object v2, v4, Lcom/google/android/exoplayer2/l2;->f:Lcom/google/android/exoplayer2/ExoPlaybackException;

    goto :goto_9

    :goto_a
    if-eqz v0, :cond_7

    sget-object v2, Lt9/x;->d:Lt9/x;

    :goto_b
    move-object v14, v2

    goto :goto_c

    :cond_7
    iget-object v2, v4, Lcom/google/android/exoplayer2/l2;->h:Lt9/x;

    goto :goto_b

    :goto_c
    if-eqz v0, :cond_8

    iget-object v2, v1, Lcom/google/android/exoplayer2/l1;->e:Lla/r;

    :goto_d
    move-object v15, v2

    goto :goto_e

    :cond_8
    iget-object v2, v4, Lcom/google/android/exoplayer2/l2;->i:Lla/r;

    goto :goto_d

    :goto_e
    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_f
    move-object/from16 v16, v0

    goto :goto_10

    :cond_9
    iget-object v0, v4, Lcom/google/android/exoplayer2/l2;->j:Ljava/util/List;

    goto :goto_f

    :goto_10
    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/l2;->l:Z

    move/from16 v18, v2

    iget v2, v0, Lcom/google/android/exoplayer2/l2;->m:I

    move/from16 v19, v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/l2;->n:Lcom/google/android/exoplayer2/n2;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/4 v13, 0x0

    move-object v4, v3

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v27}, Lcom/google/android/exoplayer2/l2;-><init>(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/source/o$b;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLt9/x;Lla/r;Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;ZILcom/google/android/exoplayer2/n2;JJJZ)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    if-eqz p3, :cond_a

    iget-object v0, v1, Lcom/google/android/exoplayer2/l1;->t:Lcom/google/android/exoplayer2/h2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h2;->x()V

    :cond_a
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/l1;->q([Z)V

    return-void
.end method

.method private p0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/c2;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->B:Z

    return-void
.end method

.method private q([Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->o()Lla/r;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lla/r;->c(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->b:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/x2;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lla/r;->c(I)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/l1;->o(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/exoplayer2/b2;->g:Z

    return-void
.end method

.method private q0(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/b2;->z(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/l1;->L:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->o:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/o;->d(J)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/l1;->L:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/x2;->resetPosition(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->c0()V

    return-void
.end method

.method private r(Lcom/google/android/exoplayer2/x2;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/x2;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/x2;->stop()V

    :cond_0
    return-void
.end method

.method private static r0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l1$d;Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/exoplayer2/l1$d;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/k3$d;->p:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/k3;->k(ILcom/google/android/exoplayer2/k3$b;Z)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/k3$b;->b:Ljava/lang/Object;

    iget-wide v0, p3, Lcom/google/android/exoplayer2/k3$b;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/l1$d;->b(IJLjava/lang/Object;)V

    return-void
.end method

.method private static s0(Lcom/google/android/exoplayer2/l1$d;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;IZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    iget-object v2, v0, Lcom/google/android/exoplayer2/l1$d;->d:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->f()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v1

    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/l1$h;

    iget-object v4, v0, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/s2;->h()Lcom/google/android/exoplayer2/k3;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/s2;->d()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/l1$h;-><init>(Lcom/google/android/exoplayer2/k3;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/l1;->v0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l1$h;ZIZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/l1$d;->b(IJLjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->f()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/l1;->r0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l1$d;Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)V

    :cond_2
    return v12

    :cond_3
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2;->f()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_5

    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/l1;->r0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l1$d;Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)V

    return v12

    :cond_5
    iput v2, v0, Lcom/google/android/exoplayer2/l1$d;->b:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/l1$d;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget-boolean v2, v10, Lcom/google/android/exoplayer2/k3$b;->f:Z

    if-eqz v2, :cond_6

    iget v2, v10, Lcom/google/android/exoplayer2/k3$b;->c:I

    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/k3$d;->o:I

    iget-object v3, v0, Lcom/google/android/exoplayer2/l1$d;->d:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    iget-wide v1, v0, Lcom/google/android/exoplayer2/l1$d;->c:J

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/k3$b;->q()J

    move-result-wide v3

    add-long v5, v1, v3

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1$d;->d:Ljava/lang/Object;

    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/k3$b;->c:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/l1$d;->b(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method private t([Lcom/google/android/exoplayer2/trackselection/h;)Lcom/google/common/collect/ImmutableList;
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

    invoke-interface {v5, v2}, Lla/m;->getFormat(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/o1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v5, :cond_0

    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

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

.method private t0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/l1$d;

    iget v5, p0, Lcom/google/android/exoplayer2/l1;->E:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/l1;->F:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/l1;->s0(Lcom/google/android/exoplayer2/l1$d;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;IZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/l1$d;

    iget-object v1, v1, Lcom/google/android/exoplayer2/l1$d;->a:Lcom/google/android/exoplayer2/s2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/s2;->k(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private u()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-object v1, v0, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v2, v0, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, v2, Lt9/j;->a:Ljava/lang/Object;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/l2;->r:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/l1;->w(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static u0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/l1$h;Lcom/google/android/exoplayer2/e2;IZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/l1$g;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/l1$g;

    invoke-static {}, Lcom/google/android/exoplayer2/l2;->k()Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/l1$g;-><init>(Lcom/google/android/exoplayer2/source/o$b;JJZZZ)V

    return-object v0

    :cond_0
    iget-object v14, v8, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v12, v14, Lt9/j;->a:Ljava/lang/Object;

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/l1;->Q(Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/k3$b;)Z

    move-result v13

    iget-object v0, v8, Lcom/google/android/exoplayer2/l2;->b:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {v0}, Lt9/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, v8, Lcom/google/android/exoplayer2/l2;->r:J

    :goto_0
    move-wide v15, v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-wide v0, v8, Lcom/google/android/exoplayer2/l2;->c:J

    goto :goto_0

    :goto_2
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

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

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/l1;->v0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l1$h;ZIZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/k3;->e(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    move/from16 v2, v19

    move v3, v2

    move/from16 v4, v20

    goto :goto_5

    :cond_3
    iget-wide v1, v9, Lcom/google/android/exoplayer2/l1$h;->c:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

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
    iget v3, v8, Lcom/google/android/exoplayer2/l2;->e:I

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

    iget-object v0, v8, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/k3;->e(Z)I

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
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v14, :cond_9

    iget-object v5, v8, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/l1;->w0(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/k3;->e(Z)I

    move-result v0

    move/from16 v4, v20

    goto :goto_8

    :cond_8
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

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

    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

    goto :goto_7

    :cond_a
    if-eqz v13, :cond_c

    iget-object v0, v8, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    move-object/from16 v6, v21

    iget-object v1, v6, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget-object v0, v8, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget v1, v11, Lcom/google/android/exoplayer2/k3$b;->c:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k3$d;->o:I

    iget-object v1, v8, Lcom/google/android/exoplayer2/l2;->a:Lcom/google/android/exoplayer2/k3;

    iget-object v2, v6, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/k3$b;->q()J

    move-result-wide v0

    add-long v4, v15, v0

    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

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

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

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
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplayer2/e2;->B(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v2

    iget v3, v2, Lt9/j;->e:I

    if-eq v3, v14, :cond_f

    iget v4, v6, Lt9/j;->e:I

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
    iget-object v4, v6, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v6}, Lt9/j;->b()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lt9/j;->b()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    goto :goto_e

    :cond_10
    move/from16 v20, v19

    :goto_e
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v17

    move v12, v13

    move-object v13, v6

    move-object v3, v6

    move-wide v14, v15

    move-object/from16 v16, v2

    move-wide/from16 v18, v25

    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/l1;->M(ZLcom/google/android/exoplayer2/source/o$b;JLcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/k3$b;J)Z

    move-result v4

    if-nez v20, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move-object v2, v3

    :cond_12
    invoke-virtual {v2}, Lt9/j;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v2, v3}, Lt9/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, v8, Lcom/google/android/exoplayer2/l2;->r:J

    :cond_13
    :goto_f
    move-wide/from16 v23, v0

    goto :goto_10

    :cond_14
    iget-object v0, v2, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget v0, v2, Lt9/j;->c:I

    iget v1, v2, Lt9/j;->b:I

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/k3$b;->n(I)I

    move-result v1

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/k3$b;->j()J

    move-result-wide v0

    goto :goto_f

    :cond_15
    const-wide/16 v0, 0x0

    goto :goto_f

    :goto_10
    new-instance v0, Lcom/google/android/exoplayer2/l1$g;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/l1$g;-><init>(Lcom/google/android/exoplayer2/source/o$b;JJZZZ)V

    return-object v0
.end method

.method private static v(Lcom/google/android/exoplayer2/trackselection/h;)[Lcom/google/android/exoplayer2/o1;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lla/m;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/o1;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lla/m;->getFormat(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static v0(Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/l1$h;ZIZLcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;)Landroid/util/Pair;
    .locals 12

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Lcom/google/android/exoplayer2/l1$h;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/exoplayer2/l1$h;->b:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/l1$h;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/k3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/k3$b;->f:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/exoplayer2/k3$b;->c:I

    move-object/from16 v11, p5

    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/k3$d;->o:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/k3$b;->c:I

    iget-wide v4, v0, Lcom/google/android/exoplayer2/l1$h;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/l1;->w0(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private w(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;J)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/k3$b;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/k3$d;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-boolean p2, p1, Lcom/google/android/exoplayer2/k3$d;->i:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$d;->d()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/k3$d;->f:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k3$b;->q()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method static w0(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/k3;Lcom/google/android/exoplayer2/k3;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/k3;->m()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/k3;->h(ILcom/google/android/exoplayer2/k3$b;Lcom/google/android/exoplayer2/k3$d;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/k3;->q(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/k3;->f(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/k3;->q(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private x()J
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2;->l()J

    move-result-wide v1

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/b2;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/l1;->O(Lcom/google/android/exoplayer2/x2;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/x2;->getStream()Lt9/s;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->c:[Lt9/s;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->a:[Lcom/google/android/exoplayer2/x2;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/x2;->e()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method private x0(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x2

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private y(Lcom/google/android/exoplayer2/k3;)Landroid/util/Pair;
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/exoplayer2/l2;->k()Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->F:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/k3;->e(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->k:Lcom/google/android/exoplayer2/k3$d;

    iget-object v5, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/e2;->B(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lt9/j;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lt9/j;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget p1, v3, Lt9/j;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    iget v4, v3, Lt9/j;->b:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/k3$b;->n(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->l:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$b;->j()J

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

.method private z0(Z)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e2;->p()Lcom/google/android/exoplayer2/b2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/l2;->r:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/l1;->C0(Lcom/google/android/exoplayer2/source/o$b;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/l2;->r:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/l2;->c:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/l2;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/l1;->J(Lcom/google/android/exoplayer2/source/o$b;JJJZI)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :cond_0
    return-void
.end method


# virtual methods
.method public K0(Ljava/util/List;IJLt9/t;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    new-instance v8, Lcom/google/android/exoplayer2/l1$b;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/l1$b;-><init>(Ljava/util/List;Lt9/t;IJLcom/google/android/exoplayer2/l1$a;)V

    const/16 p1, 0x11

    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public N0(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(III)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public P0(Lcom/google/android/exoplayer2/n2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public R0(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(III)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public U0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(III)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized b(Lcom/google/android/exoplayer2/s2;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V
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

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/s2;->k(Z)V
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

.method public e1()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(I)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/source/n;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/l1;->f0(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public g0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(I)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/source/n;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->k()V

    goto/16 :goto_e

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception p1

    goto/16 :goto_7

    :catch_3
    move-exception p1

    goto/16 :goto_8

    :catch_4
    move-exception p1

    goto/16 :goto_9

    :catch_5
    move-exception p1

    goto/16 :goto_c

    :catch_6
    move-exception p1

    goto/16 :goto_d

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->L0(Z)V

    goto/16 :goto_e

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->M0(Z)V

    goto/16 :goto_e

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->a0()V

    goto/16 :goto_e

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lt9/t;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->W0(Lt9/t;)V

    goto/16 :goto_e

    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lt9/t;

    invoke-direct {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/l1;->k0(IILt9/t;)V

    goto/16 :goto_e

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->b0(Lcom/google/android/exoplayer2/l1$c;)V

    goto/16 :goto_e

    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplayer2/l1$b;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/l1;->j(Lcom/google/android/exoplayer2/l1$b;I)V

    goto/16 :goto_e

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/l1$b;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->J0(Lcom/google/android/exoplayer2/l1$b;)V

    goto/16 :goto_e

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/n2;

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/l1;->I(Lcom/google/android/exoplayer2/n2;Z)V

    goto/16 :goto_e

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/s2;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->F0(Lcom/google/android/exoplayer2/s2;)V

    goto/16 :goto_e

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/s2;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->D0(Lcom/google/android/exoplayer2/s2;)V

    goto/16 :goto_e

    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/l1;->I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_e

    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->V0(Z)V

    goto/16 :goto_e

    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->S0(I)V

    goto/16 :goto_e

    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->n0()V

    goto/16 :goto_e

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->C(Lcom/google/android/exoplayer2/source/n;)V

    goto/16 :goto_e

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->G(Lcom/google/android/exoplayer2/source/n;)V

    goto/16 :goto_e

    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->j0()V

    return v4

    :pswitch_13
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/l1;->f1(ZZ)V

    goto/16 :goto_e

    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/c3;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->T0(Lcom/google/android/exoplayer2/c3;)V

    goto/16 :goto_e

    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/n2;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->Q0(Lcom/google/android/exoplayer2/n2;)V

    goto/16 :goto_e

    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/l1$h;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l1;->A0(Lcom/google/android/exoplayer2/l1$h;)V

    goto/16 :goto_e

    :pswitch_17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->n()V

    goto/16 :goto_e

    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v4}, Lcom/google/android/exoplayer2/l1;->O0(ZIZI)V

    goto/16 :goto_e

    :pswitch_19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->h0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/exoplayer2/upstream/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :goto_5
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/l1;->f1(ZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    goto/16 :goto_e

    :goto_6
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->D(Ljava/io/IOException;I)V

    goto/16 :goto_e

    :goto_7
    const/16 v0, 0x3ea

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->D(Ljava/io/IOException;I)V

    goto/16 :goto_e

    :goto_8
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->D(Ljava/io/IOException;I)V

    goto/16 :goto_e

    :goto_9
    iget v0, p1, Lcom/google/android/exoplayer2/ParserException;->dataType:I

    if-ne v0, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xbb9

    :goto_a
    move v2, v0

    goto :goto_b

    :cond_7
    const/16 v0, 0xbbb

    goto :goto_a

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xbba

    goto :goto_a

    :cond_9
    const/16 v0, 0xbbc

    goto :goto_a

    :cond_a
    :goto_b
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/l1;->D(Ljava/io/IOException;I)V

    goto :goto_e

    :goto_c
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/l1;->D(Ljava/io/IOException;I)V

    goto :goto_e

    :goto_d
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->s:Lcom/google/android/exoplayer2/e2;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/e2;->q()Lcom/google/android/exoplayer2/b2;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/google/android/exoplayer2/b2;->f:Lcom/google/android/exoplayer2/c2;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c2;->a:Lcom/google/android/exoplayer2/source/o$b;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->copyWithMediaPeriodId(Lt9/j;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    :cond_b
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v2, :cond_c

    const-string v0, "Recoverable renderer error"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/s;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0x19

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/o;->b(Lcom/google/android/exoplayer2/util/o$a;)Z

    goto :goto_e

    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/l1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/l1;->O:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :cond_d
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/s;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/l1;->f1(ZZ)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l2;->e(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1;->x:Lcom/google/android/exoplayer2/l2;

    :goto_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/l1;->U()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized i0()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/google/android/exoplayer2/j1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/j1;-><init>(Lcom/google/android/exoplayer2/l1;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/l1;->v:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/l1;->n1(Lcom/google/common/base/q;J)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/l1;->z:Z
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

.method public l0(IILt9/t;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0x14

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/n2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/l1;->P:J

    return-void
.end method

.method public y0(Lcom/google/android/exoplayer2/k3;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->h:Lcom/google/android/exoplayer2/util/o;

    new-instance v1, Lcom/google/android/exoplayer2/l1$h;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/l1$h;-><init>(Lcom/google/android/exoplayer2/k3;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/o$a;->a()V

    return-void
.end method

.method public z()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l1;->j:Landroid/os/Looper;

    return-object v0
.end method
