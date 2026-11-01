.class Lcom/squareup/okhttp/internal/DiskLruCache$d$a;
.super Lcom/squareup/okhttp/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache$d;->f(I)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/DiskLruCache$d;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache$d;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache$d;

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/b;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache$d;

    iget-object p1, p1, Lcom/squareup/okhttp/internal/DiskLruCache$d;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$d$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$d;->d(Lcom/squareup/okhttp/internal/DiskLruCache$d;Z)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
