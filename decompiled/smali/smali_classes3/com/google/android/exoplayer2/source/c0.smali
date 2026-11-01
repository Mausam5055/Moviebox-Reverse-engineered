.class final Lcom/google/android/exoplayer2/source/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/c0$c;,
        Lcom/google/android/exoplayer2/source/c0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/n;

.field private final b:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/k0;

.field private final d:Lcom/google/android/exoplayer2/upstream/z;

.field private final e:Lcom/google/android/exoplayer2/source/p$a;

.field private final f:Lt9/x;

.field private final g:Ljava/util/ArrayList;

.field private final h:J

.field final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field final j:Lcom/google/android/exoplayer2/o1;

.field final k:Z

.field l:Z

.field m:[B

.field n:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/o1;JLcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0;->a:Lcom/google/android/exoplayer2/upstream/n;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/c0;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/c0;->c:Lcom/google/android/exoplayer2/upstream/k0;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/c0;->j:Lcom/google/android/exoplayer2/o1;

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/c0;->h:J

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/c0;->d:Lcom/google/android/exoplayer2/upstream/z;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/c0;->e:Lcom/google/android/exoplayer2/source/p$a;

    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/c0;->k:Z

    new-instance p1, Lt9/x;

    new-instance p2, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 p3, 0x1

    new-array p5, p3, [Lcom/google/android/exoplayer2/o1;

    const/4 p6, 0x0

    aput-object p4, p5, p6

    invoke-direct {p2, p5}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/o1;)V

    new-array p3, p3, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object p2, p3, p6

    invoke-direct {p1, p3}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0;->f:Lt9/x;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0;->g:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c0;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/c0;)Lcom/google/android/exoplayer2/source/p$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/c0;->e:Lcom/google/android/exoplayer2/source/p$a;

    return-object p0
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 0

    return-wide p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    aput-object v2, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/exoplayer2/source/c0$b;

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/c0$b;-><init>(Lcom/google/android/exoplayer2/source/c0;Lcom/google/android/exoplayer2/source/c0$a;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public continueLoading(J)Z
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/c0;->l:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c0;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c0;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c0;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c0;->c:Lcom/google/android/exoplayer2/upstream/k0;

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/c0$c;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c0;->a:Lcom/google/android/exoplayer2/upstream/n;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/source/c0$c;-><init>(Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/upstream/k;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/c0;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c0;->d:Lcom/google/android/exoplayer2/upstream/z;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/c0;->e:Lcom/google/android/exoplayer2/source/p$a;

    new-instance v12, Lt9/h;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/c0;->a:Lcom/google/android/exoplayer2/upstream/n;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;J)V

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/c0;->j:Lcom/google/android/exoplayer2/o1;

    const-wide/16 v18, 0x0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/c0;->h:J

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v20, v1

    invoke-virtual/range {v11 .. v21}, Lcom/google/android/exoplayer2/source/p$a;->A(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return v4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public d(Lcom/google/android/exoplayer2/source/c0$c;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c0$c;->a(Lcom/google/android/exoplayer2/source/c0$c;)Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v2

    new-instance v15, Lt9/h;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/c0$c;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c0;->d:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c0;->e:Lcom/google/android/exoplayer2/source/p$a;

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/c0;->h:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->r(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/source/c0$c;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c0$c;->a(Lcom/google/android/exoplayer2/source/c0$c;)Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/google/android/exoplayer2/source/c0;->n:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c0$c;->b(Lcom/google/android/exoplayer2/source/c0$c;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/c0;->m:[B

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/c0;->l:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c0$c;->a(Lcom/google/android/exoplayer2/source/c0$c;)Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v2

    new-instance v15, Lt9/h;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/c0$c;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v8

    iget v2, v0, Lcom/google/android/exoplayer2/source/c0;->n:I

    int-to-long v13, v2

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c0;->d:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/c0;->e:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/c0;->j:Lcom/google/android/exoplayer2/o1;

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/c0;->h:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/p$a;->u(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/source/c0$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    move/from16 v2, p7

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/c0$c;->a(Lcom/google/android/exoplayer2/source/c0$c;)Lcom/google/android/exoplayer2/upstream/i0;

    move-result-object v3

    new-instance v4, Lt9/h;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/c0$c;->b:Lcom/google/android/exoplayer2/upstream/n;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/i0;->h()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/i0;->i()Ljava/util/Map;

    move-result-object v19

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/i0;->f()J

    move-result-wide v24

    move-object v14, v4

    move-wide v15, v5

    move-object/from16 v17, v7

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    invoke-direct/range {v14 .. v25}, Lt9/h;-><init>(JLcom/google/android/exoplayer2/upstream/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v3, Lt9/i;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/c0;->j:Lcom/google/android/exoplayer2/o1;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/c0;->h:J

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    move-result-wide v34

    const/16 v27, 0x1

    const/16 v28, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v35}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/c0;->d:Lcom/google/android/exoplayer2/upstream/z;

    new-instance v6, Lcom/google/android/exoplayer2/upstream/z$c;

    invoke-direct {v6, v4, v3, v13, v2}, Lcom/google/android/exoplayer2/upstream/z$c;-><init>(Lt9/h;Lt9/i;Ljava/io/IOException;I)V

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/upstream/z;->c(Lcom/google/android/exoplayer2/upstream/z$c;)J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/c0;->d:Lcom/google/android/exoplayer2/upstream/z;

    invoke-interface {v9, v8}, Lcom/google/android/exoplayer2/upstream/z;->a(I)I

    move-result v9

    if-lt v2, v9, :cond_0

    goto :goto_0

    :cond_0
    move v2, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    :goto_1
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/source/c0;->k:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    const-string v2, "SingleSampleMediaPeriod"

    const-string v3, "Loading failed, treating as end-of-stream."

    invoke-static {v2, v3, v13}, Lcom/google/android/exoplayer2/util/s;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v8, v0, Lcom/google/android/exoplayer2/source/c0;->l:Z

    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    :goto_2
    move-object v15, v2

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v7, v5, v6}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v2

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    goto :goto_2

    :goto_3
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v16

    xor-int/lit8 v14, v16, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c0;->e:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/c0;->j:Lcom/google/android/exoplayer2/o1;

    const-wide/16 v9, 0x0

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/c0;->h:J

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object v3, v4

    move v4, v5

    move v5, v7

    move v7, v8

    move-object/from16 v8, v17

    move-object/from16 v13, p6

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/p$a;->w(Lt9/h;IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/c0;->d:Lcom/google/android/exoplayer2/upstream/z;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/c0$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/z;->b(J)V

    :cond_4
    return-object v15
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/c0;->l:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/c0;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0;->f:Lt9/x;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->k()V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c0;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/c0$c;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/c0;->d(Lcom/google/android/exoplayer2/source/c0$c;JJZ)V

    return-void
.end method

.method public bridge synthetic l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/c0$c;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/c0;->f(Lcom/google/android/exoplayer2/source/c0$c;JJ)V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/c0$c;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/c0;->g(Lcom/google/android/exoplayer2/source/c0$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/c0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c0$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/c0$b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method
