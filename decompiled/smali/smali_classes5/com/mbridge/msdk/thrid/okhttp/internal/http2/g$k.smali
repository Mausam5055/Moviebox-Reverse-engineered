.class final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "k"
.end annotation


# instance fields
.field final b:Z

.field final c:I

.field final d:I

.field final synthetic e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;ZII)V
    .locals 4

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->d:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->b:Z

    iput p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->c:I

    iput p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->d:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->e:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-boolean v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->b:Z

    iget v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->c:I

    iget v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$k;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(ZII)V

    return-void
.end method
