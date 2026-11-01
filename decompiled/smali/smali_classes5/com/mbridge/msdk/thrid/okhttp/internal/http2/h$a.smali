.class final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okio/e;

.field b:I

.field c:B

.field d:I

.field e:I

.field f:S


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okio/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    return-void
.end method

.method private d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->d:I

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->a(Lcom/mbridge/msdk/thrid/okio/e;)I

    move-result v3

    iput v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->e:I

    iput v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->b:I

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v3}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v4}, Lcom/mbridge/msdk/thrid/okio/e;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->c:B

    sget-object v4, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h;->e:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->d:I

    iget v6, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->b:I

    iget-byte v7, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->c:B

    invoke-static {v1, v5, v6, v3, v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v4}, Lcom/mbridge/msdk/thrid/okio/e;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->d:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_2

    if-ne v4, v2, :cond_1

    return-void

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "%s != TYPE_CONTINUATION"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public b(Lcom/mbridge/msdk/thrid/okio/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->e:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    iget-short v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->f:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/mbridge/msdk/thrid/okio/e;->skip(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->f:S

    iget-byte v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->c:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->d()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    :cond_2
    iget p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->e:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->e:I

    return-wide p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/h$a;->a:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/s;->b()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
