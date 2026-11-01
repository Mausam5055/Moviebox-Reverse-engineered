.class Lcom/squareup/okhttp/internal/DiskLruCache$a;
.super Lcom/squareup/okhttp/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;->k0()Lokio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lokio/Sink;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/b;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$a;->b:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->u(Lcom/squareup/okhttp/internal/DiskLruCache;Z)Z

    return-void
.end method
