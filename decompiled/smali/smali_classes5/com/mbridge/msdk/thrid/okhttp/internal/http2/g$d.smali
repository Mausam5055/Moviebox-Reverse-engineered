.class Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;


# direct methods
.method varargs constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iput p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->b:I

    iput-object p5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->j:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/l;

    iget v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->b:I

    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/l;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    iget v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->b:I

    sget-object v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(ILcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object v1, v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->y:Ljava/util/Set;

    iget v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$d;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method
