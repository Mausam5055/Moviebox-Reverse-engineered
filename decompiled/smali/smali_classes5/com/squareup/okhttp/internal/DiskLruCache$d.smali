.class public final Lcom/squareup/okhttp/internal/DiskLruCache$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->h(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->l(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache$d;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache$d;)Lcom/squareup/okhttp/internal/DiskLruCache$e;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/DiskLruCache$d;)[Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->b:[Z

    return-object p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->o(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, p0, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->o(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-static {v1, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->p(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v1, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->o(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->d:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f(I)Lokio/Sink;
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->j(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->h(Lcom/squareup/okhttp/internal/DiskLruCache$e;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->a:Lcom/squareup/okhttp/internal/DiskLruCache$e;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$e;->d(Lcom/squareup/okhttp/internal/DiskLruCache$e;)[Ljava/io/File;

    move-result-object v1

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->m(Lcom/squareup/okhttp/internal/DiskLruCache;)Lcom/squareup/okhttp/internal/io/FileSystem;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/squareup/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;

    invoke-direct {v1, p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$d;Lokio/Sink;)V

    monitor-exit v0

    return-object v1

    :catch_0
    invoke-static {}, Lcom/squareup/okhttp/internal/DiskLruCache;->n()Lokio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
