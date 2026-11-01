.class abstract Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/thrid/okio/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field protected final a:Lcom/mbridge/msdk/thrid/okio/i;

.field protected b:Z

.field protected c:J

.field final synthetic d:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;)V
    .locals 2

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/thrid/okio/i;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->c:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okio/s;->b()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/thrid/okio/i;-><init>(Lcom/mbridge/msdk/thrid/okio/t;)V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->a:Lcom/mbridge/msdk/thrid/okio/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;)V

    return-void
.end method


# virtual methods
.method protected final a(ZLjava/io/IOException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->a:Lcom/mbridge/msdk/thrid/okio/i;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->a(Lcom/mbridge/msdk/thrid/okio/i;)V

    iget-object v5, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iput v2, v5, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->e:I

    iget-object v3, v5, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, p1, 0x1

    iget-wide v6, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->c:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->a(ZLcom/mbridge/msdk/thrid/okhttp/internal/http/c;JLjava/io/IOException;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/mbridge/msdk/thrid/okio/c;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a;->c:Lcom/mbridge/msdk/thrid/okio/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/mbridge/msdk/thrid/okio/s;->b(Lcom/mbridge/msdk/thrid/okio/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-wide p1

    :goto_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->a(ZLjava/io/IOException;)V

    throw p1
.end method

.method public b()Lcom/mbridge/msdk/thrid/okio/t;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http1/a$b;->a:Lcom/mbridge/msdk/thrid/okio/i;

    return-object v0
.end method
