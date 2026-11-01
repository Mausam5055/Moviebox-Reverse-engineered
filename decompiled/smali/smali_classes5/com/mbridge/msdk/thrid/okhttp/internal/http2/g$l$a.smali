.class Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;->a(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

.field final synthetic c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;


# direct methods
.method varargs constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;Ljava/lang/String;[Ljava/lang/Object;Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$j;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->d()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http2Connection.Listener failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;

    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object v3, v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$l$a;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
