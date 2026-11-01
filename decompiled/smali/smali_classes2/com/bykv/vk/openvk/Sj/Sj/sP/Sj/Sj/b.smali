.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;


# instance fields
.field private volatile a:J

.field private final b:Ljava/lang/Object;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:J

.field private volatile f:J

.field private volatile g:Z

.field private volatile h:Z

.field private i:Ljava/io/RandomAccessFile;

.field private final j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->f:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    :try_start_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc6/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc6/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    return-object p0
.end method

.method static synthetic c(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    return-object p0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private e()J
    .locals 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->f:J

    return-wide v0
.end method

.method static synthetic h(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    return-wide p1
.end method

.method static synthetic j(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h:Z

    return p0
.end method

.method static synthetic k(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->h:Z

    return p1
.end method

.method static synthetic l(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    return-wide v0
.end method

.method static synthetic m(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    return-wide v0
.end method

.method static synthetic n(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->p()V

    return-void
.end method

.method static synthetic o(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)Ljava/io/RandomAccessFile;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error renaming file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for completion!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public TKC()J
    .locals 6

    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0xf

    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x4e20

    if-le v1, v2, :cond_1

    :try_start_2
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "total length InterruptException"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v0

    :goto_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    return-wide v0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public a(J[BII)I
    .locals 7

    :try_start_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->a:J

    cmp-long v0, p1, v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-boolean v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x21

    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->b:Ljava/lang/Object;

    const-wide/16 v5, 0x21

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_2

    return v2

    :cond_2
    const/16 v3, 0x4e20

    if-ge v0, v3, :cond_3

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    monitor-exit v3

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    return v1

    :goto_3
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public i()V
    .locals 6

    invoke-static {}, Lt5/b;->a()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lt5/b;->a()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->sP()Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    const-string v1, "v_cache"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->uvD()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dNu()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TzV()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RANGE"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->j:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v1

    const-string v2, "videoLoadWhenPlaying"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    move-result-object v0

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V

    return-void
.end method

.method public sP()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->i:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->c:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->d:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;->g:Z

    return-void
.end method
