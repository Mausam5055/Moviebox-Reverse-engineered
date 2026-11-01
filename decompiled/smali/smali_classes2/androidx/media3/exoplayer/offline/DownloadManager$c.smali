.class final Landroidx/media3/exoplayer/offline/DownloadManager$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroidx/media3/exoplayer/offline/t;

.field private final d:Landroidx/media3/exoplayer/offline/p;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/HashMap;

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Landroidx/media3/exoplayer/offline/t;Landroidx/media3/exoplayer/offline/p;Landroid/os/Handler;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->b:Landroid/os/HandlerThread;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->d:Landroidx/media3/exoplayer/offline/p;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e:Landroid/os/Handler;

    iput p5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->j:I

    iput p6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->k:I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->i:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g:Ljava/util/HashMap;

    return-void
.end method

.method private A(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/c;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    iget v4, v2, Landroidx/media3/exoplayer/offline/c;->b:I

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_1
    invoke-direct {p0, v3, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->z(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/c;)V

    goto :goto_2

    :cond_2
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v3, v2, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->x(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/c;I)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->A(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->y(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_5

    invoke-static {v3}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private C()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/c;

    iget v2, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/offline/t;->b(Landroidx/media3/exoplayer/offline/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "DownloadManager"

    const-string v3, "Failed to update index."

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/offline/c;Landroidx/media3/exoplayer/offline/c;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->d(Landroidx/media3/exoplayer/offline/c;Landroidx/media3/exoplayer/offline/c;)I

    move-result p0

    return p0
.end method

.method private b(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V
    .locals 13

    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, v7, v8}, Landroidx/media3/exoplayer/offline/DownloadManager;->n(Landroidx/media3/exoplayer/offline/c;Landroidx/media3/exoplayer/offline/DownloadRequest;IJ)Landroidx/media3/exoplayer/offline/c;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m(Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/c;

    goto :goto_2

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/offline/c;

    if-eqz p2, :cond_1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-wide/16 v9, -0x1

    const/4 v12, 0x0

    move-object v2, v0

    move-object v3, p1

    move-wide v5, v7

    move v11, p2

    invoke-direct/range {v2 .. v12}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m(Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/c;

    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static d(Landroidx/media3/exoplayer/offline/c;Landroidx/media3/exoplayer/offline/c;)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/c;->c:J

    iget-wide p0, p1, Landroidx/media3/exoplayer/offline/c;->c:J

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/util/a1;->n(JJ)I

    move-result p0

    return p0
.end method

.method private static e(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;
    .locals 13

    new-instance v12, Landroidx/media3/exoplayer/offline/c;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-wide v3, p0, Landroidx/media3/exoplayer/offline/c;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/offline/c;->e:J

    const/4 v10, 0x0

    iget-object v11, p0, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    move-object v0, v12

    move v2, p1

    move v9, p2

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V

    return-object v12
.end method

.method private f(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/c;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/c;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/offline/f;->h(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/c;

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private h(I)V
    .locals 6

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->h:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {v1}, Landroidx/media3/exoplayer/offline/t;->g()V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x5

    filled-new-array {v3, p1, v4, v5, v2}, [I

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/offline/f;->e([I)Landroidx/media3/exoplayer/offline/e;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/e;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/e;->N()Landroidx/media3/exoplayer/offline/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string v2, "DownloadManager"

    const-string v3, "Failed to load index."

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void

    :goto_4
    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    throw p1
.end method

.method private i(Landroidx/media3/exoplayer/offline/DownloadManager$Task;J)V
    .locals 15

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$200(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/c;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/c;

    iget-wide v2, v1, Landroidx/media3/exoplayer/offline/c;->e:J

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/offline/c;

    iget-object v4, v1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget v5, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    iget-wide v6, v1, Landroidx/media3/exoplayer/offline/c;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v12, v1, Landroidx/media3/exoplayer/offline/c;->f:I

    iget v13, v1, Landroidx/media3/exoplayer/offline/c;->g:I

    iget-object v14, v1, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    move-object v3, v2

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m(Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/c;

    :cond_1
    :goto_0
    return-void
.end method

.method private j(Landroidx/media3/exoplayer/offline/c;Ljava/lang/Exception;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    new-instance v15, Landroidx/media3/exoplayer/offline/c;

    iget-object v4, v0, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    const/4 v14, 0x3

    if-nez v2, :cond_0

    move v5, v14

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    move v5, v3

    :goto_0
    iget-wide v6, v0, Landroidx/media3/exoplayer/offline/c;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Landroidx/media3/exoplayer/offline/c;->e:J

    iget v12, v0, Landroidx/media3/exoplayer/offline/c;->f:I

    const/4 v13, 0x0

    if-nez v2, :cond_1

    move/from16 v16, v13

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_1
    iget-object v0, v0, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    move-object v3, v15

    move/from16 v13, v16

    move-object v14, v0

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    iget-object v3, v15, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v3, v3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {v0, v15}, Landroidx/media3/exoplayer/offline/t;->b(Landroidx/media3/exoplayer/offline/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "DownloadManager"

    const-string v4, "Failed to update index."

    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadManager$b;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v0, v15, v4, v3, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$b;-><init>(Landroidx/media3/exoplayer/offline/c;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private k(Landroidx/media3/exoplayer/offline/c;)V
    .locals 4

    iget v0, p1, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroidx/media3/exoplayer/offline/c;->f:I

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-direct {p0, p1, v2, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->n(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    iget-object v1, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/offline/t;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DownloadManager"

    const-string v1, "Failed to remove from database"

    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadManager$b;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v1, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$b;-><init>(Landroidx/media3/exoplayer/offline/c;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method private l(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V
    .locals 6

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$200(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m:Z

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->l:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->l:I

    if-nez v3, :cond_1

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$300(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void

    :cond_2
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$400(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$200(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DownloadManager"

    invoke-static {v4, p1, v3}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/c;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/c;

    iget v0, p1, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->k(Landroidx/media3/exoplayer/offline/c;)V

    goto :goto_2

    :cond_6
    xor-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->j(Landroidx/media3/exoplayer/offline/c;Ljava/lang/Exception;)V

    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private m(Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/c;
    .locals 8

    iget v0, p1, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media3/exoplayer/offline/i;

    invoke-direct {v1}, Landroidx/media3/exoplayer/offline/i;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_1
    iget-wide v4, p1, Landroidx/media3/exoplayer/offline/c;->c:J

    iget-object v6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/offline/c;

    iget-wide v6, v6, Landroidx/media3/exoplayer/offline/c;->c:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    new-instance v1, Landroidx/media3/exoplayer/offline/i;

    invoke-direct {v1}, Landroidx/media3/exoplayer/offline/i;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/offline/t;->b(Landroidx/media3/exoplayer/offline/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "DownloadManager"

    const-string v4, "Failed to update index."

    invoke-static {v1, v4, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadManager$b;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v0, p1, v2, v1, v4}, Landroidx/media3/exoplayer/offline/DownloadManager$b;-><init>(Landroidx/media3/exoplayer/offline/c;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private n(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;
    .locals 1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m(Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/c;

    move-result-object p1

    return-object p1
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/t;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DownloadManager"

    const-string v3, "Failed to update index."

    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_1
    iput-boolean v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private p()V
    .locals 8

    const-string v0, "DownloadManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    const/4 v4, 0x4

    filled-new-array {v2, v4}, [I

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/offline/f;->e([I)Landroidx/media3/exoplayer/offline/e;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroidx/media3/exoplayer/offline/e;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroidx/media3/exoplayer/offline/e;->N()Landroidx/media3/exoplayer/offline/c;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-interface {v3}, Landroidx/media3/exoplayer/offline/e;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroidx/media3/exoplayer/offline/e;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v3, "Failed to load downloads."

    invoke-static {v0, v3}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v3, 0x0

    move v4, v3

    :goto_4
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/offline/c;

    invoke-static {v7, v6, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_2
    move v4, v3

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/offline/c;

    invoke-static {v7, v6, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    new-instance v4, Landroidx/media3/exoplayer/offline/i;

    invoke-direct {v4}, Landroidx/media3/exoplayer/offline/i;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :try_start_5
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {v1}, Landroidx/media3/exoplayer/offline/t;->f()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    const-string v4, "Failed to update index."

    invoke-static {v0, v4, v1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v3

    :goto_7
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    new-instance v4, Landroidx/media3/exoplayer/offline/DownloadManager$b;

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/offline/c;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v0, v6}, Landroidx/media3/exoplayer/offline/DownloadManager$b;-><init>(Landroidx/media3/exoplayer/offline/c;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e:Landroid/os/Handler;

    invoke-virtual {v5, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/c;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove nonexistent download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->n(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->i:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private s(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->j:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private t(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->k:I

    return-void
.end method

.method private u(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->h:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private v(Landroidx/media3/exoplayer/offline/c;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v10, p2

    const/4 v2, 0x1

    if-nez v10, :cond_0

    iget v3, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->n(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    goto :goto_0

    :cond_0
    iget v3, v1, Landroidx/media3/exoplayer/offline/c;->f:I

    if-eq v10, v3, :cond_3

    iget v3, v1, Landroidx/media3/exoplayer/offline/c;->b:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    new-instance v13, Landroidx/media3/exoplayer/offline/c;

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-wide v4, v1, Landroidx/media3/exoplayer/offline/c;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Landroidx/media3/exoplayer/offline/c;->e:J

    const/4 v11, 0x0

    iget-object v12, v1, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    move-object v1, v13

    move/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V

    invoke-direct {p0, v13}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m(Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/c;

    :cond_3
    :goto_0
    return-void
.end method

.method private w(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "DownloadManager"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/c;

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->v(Landroidx/media3/exoplayer/offline/c;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/offline/t;->d(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to set manual stop reason"

    invoke-static {v0, p2, p1}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->f(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->v(Landroidx/media3/exoplayer/offline/c;I)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c:Landroidx/media3/exoplayer/offline/t;

    invoke-interface {v1, p1, p2}, Landroidx/media3/exoplayer/offline/t;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set manual stop reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/u;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->B()V

    return-void
.end method

.method private x(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/c;I)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->j:I

    if-lt p3, v0, :cond_1

    :cond_0
    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->n(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    :cond_1
    return-void
.end method

.method private y(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/c;)Landroidx/media3/exoplayer/offline/DownloadManager$Task;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    return-object p1

    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->l:I

    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->j:I

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->n(Landroidx/media3/exoplayer/offline/c;II)Landroidx/media3/exoplayer/offline/c;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->d:Landroidx/media3/exoplayer/offline/p;

    iget-object v0, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/offline/p;->a(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/o;

    move-result-object v3

    new-instance p2, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    iget-object v2, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v4, p1, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    iget v6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->k:I

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/exoplayer/offline/o;Landroidx/media3/exoplayer/offline/l;ZILandroidx/media3/exoplayer/offline/DownloadManager$c;Landroidx/media3/exoplayer/offline/DownloadManager$a;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->l:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->l:I

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private z(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/c;)V
    .locals 9

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    :cond_0
    return-void

    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->d:Landroidx/media3/exoplayer/offline/p;

    iget-object v0, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/offline/p;->a(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/o;

    move-result-object v3

    new-instance p1, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    iget-object v2, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v4, p2, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    iget v6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->k:I

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/exoplayer/offline/o;Landroidx/media3/exoplayer/offline/l;ZILandroidx/media3/exoplayer/offline/DownloadManager$c;Landroidx/media3/exoplayer/offline/DownloadManager$a;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g:Ljava/util/HashMap;

    iget-object p2, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object p2, p2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->m:Z

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->o()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->C()V

    return-void

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, p1}, Landroidx/media3/common/util/a1;->v1(II)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->i(Landroidx/media3/exoplayer/offline/DownloadManager$Task;J)V

    return-void

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->l(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->p()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->q(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->b(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V

    goto :goto_0

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->t(I)V

    goto :goto_0

    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->s(I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->w(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->u(I)V

    goto :goto_0

    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->r(Z)V

    goto :goto_0

    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$c;->h(I)V

    :goto_0
    move v1, v2

    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->e:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$c;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
