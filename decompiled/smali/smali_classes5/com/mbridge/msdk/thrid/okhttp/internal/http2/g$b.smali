.class Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;
.super Lcom/mbridge/msdk/thrid/okhttp/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;


# direct methods
.method varargs constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iput p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;->b:I

    iput-wide p5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;->c:J

    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->w:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;

    iget v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;->b:I

    iget-wide v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/j;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)V

    :goto_0
    return-void
.end method
