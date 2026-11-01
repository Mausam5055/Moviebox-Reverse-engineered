.class Lcom/squareup/okhttp/Cache$CacheResponseBody$1;
.super Lokio/ForwardingSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/Cache$CacheResponseBody;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$f;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$f;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache$CacheResponseBody;Lokio/Source;Lcom/squareup/okhttp/internal/DiskLruCache$f;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->this$0:Lcom/squareup/okhttp/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$f;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheResponseBody$1;->val$snapshot:Lcom/squareup/okhttp/internal/DiskLruCache$f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$f;->close()V

    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    return-void
.end method
