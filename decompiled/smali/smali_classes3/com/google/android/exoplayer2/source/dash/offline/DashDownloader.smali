.class public final Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloader;


# instance fields
.field private final k:Lw9/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/upstream/cache/a$c;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;-><init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/upstream/cache/a$c;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lw9/b;

    invoke-direct {p1}, Lw9/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->k:Lw9/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/cache/a$c;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lx9/d;

    invoke-direct {v0}, Lx9/d;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;-><init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/upstream/cache/a$c;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/upstream/k;Lx9/a;JJZLjava/util/ArrayList;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p7

    move-object/from16 v10, p8

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    iget-object v0, v8, Lx9/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    iget-object v0, v8, Lx9/a;->c:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx9/j;

    :try_start_0
    iget v1, v8, Lx9/a;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v12, p1

    :try_start_1
    invoke-direct {v7, v12, v1, v0, v9}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->n(Lcom/google/android/exoplayer2/upstream/k;ILx9/j;Z)Lw9/e;

    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v13, :cond_3

    move-wide/from16 v14, p5

    invoke-interface {v13, v14, v15}, Lw9/e;->f(J)J

    move-result-wide v16

    const-wide/16 v1, -0x1

    cmp-long v1, v16, v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->k:Lw9/b;

    iget-object v2, v0, Lx9/j;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lw9/b;->j(Ljava/util/List;)Lx9/b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx9/b;

    iget-object v6, v1, Lx9/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lx9/j;->m()Lx9/i;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v6

    move-wide/from16 v4, p3

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->m(Lx9/j;Ljava/lang/String;JLx9/i;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v19, v6

    :goto_1
    invoke-virtual {v0}, Lx9/j;->l()Lx9/i;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v19

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->m(Lx9/j;Ljava/lang/String;JLx9/i;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v13}, Lw9/e;->h()J

    move-result-wide v1

    add-long v16, v1, v16

    const-wide/16 v20, 0x1

    sub-long v16, v16, v20

    move-wide v4, v1

    :goto_2
    cmp-long v1, v4, v16

    if-gtz v1, :cond_4

    invoke-interface {v13, v4, v5}, Lw9/e;->getTimeUs(J)J

    move-result-wide v1

    add-long v22, p3, v1

    invoke-interface {v13, v4, v5}, Lw9/e;->d(J)Lx9/i;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v19

    move-wide/from16 v24, v4

    move-wide/from16 v4, v22

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->m(Lx9/j;Ljava/lang/String;JLx9/i;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v4, v24, v20

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v1, "Unbounded segment index"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-wide/from16 v14, p5

    :try_start_2
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadException;

    const-string v1, "Missing segment index"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-wide/from16 v14, p5

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method private m(Lx9/j;Ljava/lang/String;JLx9/i;)Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p5, v0}, Lw9/f;->a(Lx9/j;Ljava/lang/String;Lx9/i;I)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    invoke-direct {p2, p3, p4, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;-><init>(JLcom/google/android/exoplayer2/upstream/n;)V

    return-object p2
.end method

.method private n(Lcom/google/android/exoplayer2/upstream/k;ILx9/j;Z)Lw9/e;
    .locals 1

    invoke-virtual {p3}, Lx9/j;->k()Lw9/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader$1;-><init>(Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;Lcom/google/android/exoplayer2/upstream/k;ILx9/j;)V

    invoke-virtual {p0, v0, p4}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->e(Lcom/google/android/exoplayer2/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/d;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance p2, Lw9/g;

    iget-wide p3, p3, Lx9/j;->d:J

    invoke-direct {p2, p1, p3, p4}, Lw9/g;-><init>(Lg9/d;J)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic h(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/offline/c;Z)Ljava/util/List;
    .locals 0

    check-cast p2, Lx9/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->o(Lcom/google/android/exoplayer2/upstream/k;Lx9/c;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected o(Lcom/google/android/exoplayer2/upstream/k;Lx9/c;Z)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lx9/c;->d()I

    move-result v1

    if-ge v12, v1, :cond_1

    invoke-virtual {v0, v12}, Lx9/c;->c(I)Lx9/g;

    move-result-object v1

    iget-wide v2, v1, Lx9/g;->b:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    move-result-wide v13

    invoke-virtual {v0, v12}, Lx9/c;->f(I)J

    move-result-wide v15

    iget-object v9, v1, Lx9/g;->c:Ljava/util/List;

    move v8, v11

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lx9/a;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v4, v13

    move-wide v6, v15

    move/from16 v17, v8

    move/from16 v8, p3

    move-object/from16 v18, v9

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/dash/offline/DashDownloader;->l(Lcom/google/android/exoplayer2/upstream/k;Lx9/a;JJZLjava/util/ArrayList;)V

    add-int/lit8 v8, v17, 0x1

    move-object/from16 v9, v18

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-object v10
.end method
