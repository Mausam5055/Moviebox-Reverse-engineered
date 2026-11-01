.class public abstract Landroidx/media3/exoplayer/offline/SegmentDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/offline/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/SegmentDownloader$b;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$a;,
        Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
    }
.end annotation


# instance fields
.field private final a:Lw1/h;

.field private final b:Landroidx/media3/exoplayer/upstream/q$a;

.field private final c:Ljava/util/ArrayList;

.field private final d:Landroidx/media3/datasource/cache/a$c;

.field private final e:Landroidx/media3/datasource/cache/Cache;

.field private final f:Landroidx/media3/datasource/cache/g;

.field private final g:Landroidx/media3/common/PriorityTaskManager;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:J

.field private final j:Ljava/util/ArrayList;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/upstream/q$a;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object v0, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f(Landroid/net/Uri;)Lw1/h;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->b:Landroidx/media3/exoplayer/upstream/q$a;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object p1, p1, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h:Ljava/util/concurrent/Executor;

    invoke-virtual {p3}, Landroidx/media3/datasource/cache/a$c;->f()Landroidx/media3/datasource/cache/Cache;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/cache/Cache;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    invoke-virtual {p3}, Landroidx/media3/datasource/cache/a$c;->g()Landroidx/media3/datasource/cache/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    invoke-virtual {p3}, Landroidx/media3/datasource/cache/a$c;->h()Landroidx/media3/common/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-static {p5, p6}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->i:J

    return-void
.end method

.method static synthetic b(Landroidx/media3/exoplayer/offline/SegmentDownloader;)Landroidx/media3/exoplayer/upstream/q$a;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->b:Landroidx/media3/exoplayer/upstream/q$a;

    return-object p0
.end method

.method private c(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static d(Lw1/h;Lw1/h;)Z
    .locals 4

    iget-object v0, p0, Lw1/h;->a:Landroid/net/Uri;

    iget-object v1, p1, Lw1/h;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lw1/h;->h:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lw1/h;->g:J

    add-long/2addr v2, v0

    iget-wide v0, p1, Lw1/h;->g:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw1/h;->i:Ljava/lang/String;

    iget-object v1, p1, Lw1/h;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lw1/h;->j:I

    iget v1, p1, Lw1/h;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lw1/h;->c:I

    iget v1, p1, Lw1/h;->c:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lw1/h;->e:Ljava/util/Map;

    iget-object p1, p1, Lw1/h;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static f(Landroid/net/Uri;)Lw1/h;
    .locals 1

    new-instance v0, Lw1/h$b;

    invoke-direct {v0}, Lw1/h$b;-><init>()V

    invoke-virtual {v0, p0}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object p0

    invoke-virtual {p0}, Lw1/h$b;->a()Lw1/h;

    move-result-object p0

    return-object p0
.end method

.method private static i(Ljava/util/List;Landroidx/media3/datasource/cache/g;J)V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    iget-object v4, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    invoke-interface {p1, v4}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    :goto_1
    if-eqz v6, :cond_3

    iget-wide v7, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    iget-wide v9, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    add-long/2addr v9, p2

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    iget-object v7, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    iget-object v8, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    invoke-static {v7, v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d(Lw1/h;Lw1/h;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    iget-wide v3, v3, Lw1/h;->h:J

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    iget-wide v7, v7, Lw1/h;->h:J

    add-long/2addr v7, v3

    :goto_2
    iget-object v3, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v9, v10, v7, v8}, Lw1/h;->f(JJ)Lw1/h;

    move-result-object v3

    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    iget-wide v6, v6, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->a:J

    invoke-direct {v5, v6, v7, v3}, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;-><init>(JLw1/h;)V

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, v2, p1}, Landroidx/media3/common/util/a1;->c1(Ljava/util/List;II)V

    return-void
.end method

.method private j(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private k(Landroidx/media3/common/util/RunnableFutureTask;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/offline/o$a;)V
    .locals 27

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    const/16 v4, -0xfa0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->a(I)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/a$c;->c()Landroidx/media3/datasource/cache/a;

    move-result-object v0

    iget-object v7, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    invoke-virtual {v1, v0, v7, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;

    move-result-object v7

    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Landroidx/media3/exoplayer/offline/q;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/offline/q;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    :goto_0
    invoke-virtual {v1, v0, v7, v5}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/offline/q;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v7, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    iget-wide v8, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->i:J

    invoke-static {v0, v7, v8, v9}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->i(Ljava/util/List;Landroidx/media3/datasource/cache/g;J)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    const-wide/16 v8, 0x0

    move/from16 v17, v5

    move-wide v12, v8

    move-wide v15, v12

    :goto_1
    if-ltz v7, :cond_6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    iget-object v8, v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    iget-object v9, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    invoke-interface {v9, v8}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v8, Lw1/h;->h:J

    const-wide/16 v24, -0x1

    cmp-long v18, v10, v24

    if-nez v18, :cond_2

    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    invoke-interface {v5, v9}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/m;

    move-result-object v5

    invoke-static {v5}, Landroidx/media3/datasource/cache/l;->a(Landroidx/media3/datasource/cache/m;)J

    move-result-wide v18

    cmp-long v5, v18, v24

    if-eqz v5, :cond_2

    iget-wide v10, v8, Lw1/h;->g:J

    sub-long v10, v18, v10

    :cond_2
    iget-object v5, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    move/from16 v26, v7

    iget-wide v6, v8, Lw1/h;->g:J

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    invoke-interface/range {v18 .. v23}, Landroidx/media3/datasource/cache/Cache;->a(Ljava/lang/String;JJ)J

    move-result-wide v5

    add-long/2addr v15, v5

    cmp-long v7, v10, v24

    if-eqz v7, :cond_4

    cmp-long v5, v10, v5

    if-nez v5, :cond_3

    add-int/lit8 v17, v17, 0x1

    move/from16 v7, v26

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move/from16 v7, v26

    :goto_2
    cmp-long v5, v12, v24

    if-eqz v5, :cond_5

    add-long/2addr v12, v10

    goto :goto_3

    :cond_4
    move/from16 v7, v26

    move-wide/from16 v12, v24

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    new-instance v5, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;

    move-object v10, v5

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;-><init>(Landroidx/media3/exoplayer/offline/o$a;JIJI)V

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    :goto_5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    if-nez v0, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->b(I)V

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    iget-object v6, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Landroidx/media3/datasource/cache/a;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    goto :goto_6

    :cond_9
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/a$c;->c()Landroidx/media3/datasource/cache/a;

    move-result-object v6

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    new-instance v8, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    invoke-direct {v8, v7, v6, v5, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader$b;Landroidx/media3/datasource/cache/a;Landroidx/media3/exoplayer/offline/SegmentDownloader$a;[B)V

    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c(Landroidx/media3/common/util/RunnableFutureTask;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    move v6, v0

    :goto_7
    if-ltz v6, :cond_e

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Landroidx/media3/common/util/RunnableFutureTask;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_c

    :cond_a
    :try_start_1
    invoke-virtual {v7}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    invoke-direct {v1, v6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v9, v0, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    if-eqz v9, :cond_b

    iget-object v0, v7, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {v1, v6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    instance-of v7, v0, Ljava/io/IOException;

    if-nez v7, :cond_d

    invoke-static {v0}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_d
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_e
    invoke-virtual {v8}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :cond_f
    const/4 v5, 0x0

    :goto_9
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_10

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/RunnableFutureTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v2, 0x1

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_a
    if-ltz v0, :cond_11

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v2}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_11
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v4}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    :cond_12
    return-void

    :goto_b
    const/4 v5, 0x0

    :goto_c
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_13

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/util/RunnableFutureTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    const/4 v3, 0x1

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_d
    if-ltz v2, :cond_14

    iget-object v3, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v3}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_14
    iget-object v2, v1, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v4}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    :cond_15
    throw v0
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/RunnableFutureTask;

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/RunnableFutureTask;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final e(Landroidx/media3/common/util/RunnableFutureTask;Z)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->run()V

    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_0

    invoke-static {p2}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g:Landroidx/media3/common/PriorityTaskManager;

    if-eqz p2, :cond_2

    const/16 v0, -0xfa0

    invoke-virtual {p2, v0}, Landroidx/media3/common/PriorityTaskManager;->b(I)V

    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->c(Landroidx/media3/common/util/RunnableFutureTask;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k(Landroidx/media3/common/util/RunnableFutureTask;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v1, v0, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    invoke-static {p2}, Landroidx/media3/common/util/a1;->m1(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k(Landroidx/media3/common/util/RunnableFutureTask;)V

    goto :goto_0

    :cond_4
    :try_start_3
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/RunnableFutureTask;->blockUntilFinished()V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->k(Landroidx/media3/common/util/RunnableFutureTask;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method protected final g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$1;-><init>(Landroidx/media3/exoplayer/offline/SegmentDownloader;Landroidx/media3/datasource/a;Lw1/h;)V

    invoke-virtual {p0, v0, p3}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e(Landroidx/media3/common/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/q;

    return-object p1
.end method

.method protected abstract h(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/offline/q;Z)Ljava/util/List;
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->d:Landroidx/media3/datasource/cache/a$c;

    invoke-virtual {v0}, Landroidx/media3/datasource/cache/a$c;->d()Landroidx/media3/datasource/cache/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->h(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/offline/q;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;->b:Lw1/h;

    invoke-interface {v3, v4}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/Cache;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :cond_0
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    invoke-interface {v1, v2}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/datasource/cache/Cache;->e(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e:Landroidx/media3/datasource/cache/Cache;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f:Landroidx/media3/datasource/cache/g;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader;->a:Lw1/h;

    invoke-interface {v2, v3}, Landroidx/media3/datasource/cache/g;->a(Lw1/h;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/datasource/cache/Cache;->e(Ljava/lang/String;)V

    throw v0
.end method
