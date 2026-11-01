.class Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;
.super Lcom/mbridge/msdk/thrid/okio/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected j()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->c(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->k:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->l()V

    return-void
.end method

.method public k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okio/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i$c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
