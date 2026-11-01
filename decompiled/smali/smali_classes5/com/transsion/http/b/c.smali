.class public Lcom/transsion/http/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/transsion/http/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lwl/b;

.field final b:Lcom/transsion/http/impl/DownloadCallback;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lxl/e;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:Lam/f;

.field private volatile l:Z

.field private final m:Lwl/c;

.field private n:Lcom/transsion/http/b/a;

.field private o:J


# direct methods
.method public constructor <init>(Lwl/b;Lcom/transsion/http/impl/DownloadCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lxl/e;

    invoke-direct {v0}, Lxl/e;-><init>()V

    iput-object v0, p0, Lcom/transsion/http/b/c;->f:Lxl/e;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/http/b/c;->o:J

    iput-object p1, p0, Lcom/transsion/http/b/c;->a:Lwl/b;

    iput-object p2, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    invoke-virtual {p1}, Lwl/b;->c()Lam/e;

    move-result-object p2

    invoke-virtual {p2}, Lam/e;->k()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/http/b/c;->j:Z

    invoke-virtual {p1}, Lwl/b;->c()Lam/e;

    move-result-object p2

    invoke-virtual {p2}, Lam/e;->m()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/http/b/c;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Lwl/b;->c()Lam/e;

    move-result-object p2

    invoke-virtual {p2}, Lam/e;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lwl/b;->c()Lam/e;

    move-result-object p1

    invoke-virtual {p1}, Lam/e;->n()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    new-instance p2, Lwl/c;

    invoke-direct {p2, p1}, Lwl/c;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/http/b/c;->m:Lwl/c;

    return-void
.end method

.method static synthetic a(Lcom/transsion/http/b/c;)Lam/f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/http/b/c;->k:Lam/f;

    return-object p0
.end method

.method private a(Lam/f;)Ljava/io/File;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/http/b/c;->f:Lxl/e;

    iget-object v2, v0, Lcom/transsion/http/b/c;->m:Lwl/c;

    invoke-virtual {v1, v2}, Lxl/e;->a(Lwl/e;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not create dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-boolean v2, v0, Lcom/transsion/http/b/c;->j:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/http/b/c;->o:J

    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/transsion/http/b/c;->a:Lwl/b;

    invoke-virtual {v1}, Lwl/b;->c()Lam/e;

    move-result-object v1

    invoke-virtual {v1}, Lam/e;->f()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/transsion/http/b/c;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lam/f;->g()V

    invoke-virtual/range {p1 .. p1}, Lam/f;->b()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/transsion/http/b/c;->i:J

    invoke-virtual/range {p1 .. p1}, Lam/f;->c()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/transsion/http/b/c;->j:Z

    if-eqz v4, :cond_4

    iget-wide v4, v0, Lcom/transsion/http/b/c;->o:J

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v4, 0x0

    :goto_1
    iget-wide v7, v0, Lcom/transsion/http/b/c;->i:J

    add-long v16, v7, v4

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v7, v0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v7, :cond_6

    iget-object v8, v0, Lcom/transsion/http/b/c;->k:Lam/f;

    invoke-virtual {v8}, Lam/f;->f()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    move-wide v10, v4

    move-wide/from16 v12, v16

    invoke-virtual/range {v7 .. v13}, Lcom/transsion/http/impl/DownloadCallback;->y(ILjava/lang/String;JJ)V

    :cond_6
    const/16 v7, 0x1000

    new-array v7, v7, [B

    :goto_2
    invoke-virtual {v14, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v8, v8

    add-long/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    iget-object v9, v0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v9, :cond_8

    iget-object v8, v0, Lcom/transsion/http/b/c;->k:Lam/f;

    invoke-virtual {v8}, Lam/f;->f()I

    move-result v10

    iget-object v11, v0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    move-wide v12, v4

    move-object v8, v14

    move-wide/from16 v14, v16

    invoke-virtual/range {v9 .. v15}, Lcom/transsion/http/impl/DownloadCallback;->y(ILjava/lang/String;JJ)V

    goto :goto_3

    :cond_8
    move-object v8, v14

    :goto_3
    move-object v14, v8

    goto :goto_2

    :cond_9
    move-object v8, v14

    invoke-static {v8}, Lcm/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcm/d;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcm/d;->a(Ljava/io/Closeable;)V

    iget-object v1, v0, Lcom/transsion/http/b/c;->f:Lxl/e;

    iget-object v2, v0, Lcom/transsion/http/b/c;->m:Lwl/c;

    invoke-virtual {v1, v2}, Lxl/e;->b(Lwl/e;)V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "parent be deleted!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v8, v14

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v8}, Lcm/d;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcm/d;->a(Ljava/io/Closeable;)V

    iget-object v1, v0, Lcom/transsion/http/b/c;->f:Lxl/e;

    iget-object v2, v0, Lcom/transsion/http/b/c;->m:Lwl/c;

    invoke-virtual {v1, v2}, Lxl/e;->b(Lwl/e;)V

    iget-object v1, v0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/http/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v2, Ljava/io/File;

    iget-object v1, v0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    move-object v2, v3

    :goto_4
    return-object v2
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/http/b/c;->k:Lam/f;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transsion/http/b/b;

    invoke-direct {v1, p0}, Lcom/transsion/http/b/b;-><init>(Lcom/transsion/http/b/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/http/b/c;->k:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/b/c;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/http/b/c;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/transsion/http/b/a;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 3

    sget-object v0, Lbm/a;->a:Lbm/c;

    const-string v1, "book"

    const-string v2, "cancel by tag"

    invoke-interface {v0, v1, v2}, Lbm/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/http/b/c;->f()V

    invoke-direct {p0}, Lcom/transsion/http/b/c;->e()V

    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/b/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/transsion/http/b/c;

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/http/b/c;->e()V

    iget-object v0, p0, Lcom/transsion/http/b/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/http/b/c;->g()V

    :cond_0
    return v0
.end method

.method public run()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->a()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/http/b/c;->a:Lwl/b;

    invoke-virtual {v0}, Lwl/b;->d()Lam/f;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/http/b/c;->k:Lam/f;

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/http/b/c;->a(Lam/f;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v4, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lam/f;->f()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/transsion/http/impl/DownloadCallback;->A(ILjava/lang/String;Ljava/io/File;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lam/f;->f()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "file is null"

    :try_start_1
    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/http/impl/DownloadCallback;->w(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/transsion/http/b/c;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lam/f;->f()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/http/impl/DownloadCallback;->A(ILjava/lang/String;Ljava/io/File;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lam/f;->f()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/http/b/c;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/transsion/http/impl/DownloadCallback;->w(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    :goto_1
    invoke-virtual {v0}, Lam/f;->a()V

    invoke-virtual {p0}, Lcom/transsion/http/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/transsion/http/b/c;->b:Lcom/transsion/http/impl/DownloadCallback;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/http/impl/q;->b()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/http/b/c;->l:Z

    :goto_2
    return-void

    :goto_3
    invoke-virtual {v0}, Lam/f;->a()V

    throw v1
.end method
