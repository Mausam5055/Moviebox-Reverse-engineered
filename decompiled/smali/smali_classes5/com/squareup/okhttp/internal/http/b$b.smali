.class public Lcom/squareup/okhttp/internal/http/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:J

.field final b:Lcom/squareup/okhttp/Request;

.field final c:Lcom/squareup/okhttp/Response;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->l:I

    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/b$b;->a:J

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_7

    invoke-virtual {p1, p3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/b$b;->d:Ljava/util/Date;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/b$b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/b$b;->h:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/f;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/b$b;->f:Ljava/util/Date;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/b$b;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/b$b;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/c;->a(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/squareup/okhttp/internal/http/b$b;->l:I

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/squareup/okhttp/internal/http/OkHeaders;->c:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/http/b$b;->i:J

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/squareup/okhttp/internal/http/OkHeaders;->d:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/http/b$b;->j:J

    :cond_6
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private a()J
    .locals 9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/b$b;->j:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/b$b;->j:J

    iget-wide v5, p0, Lcom/squareup/okhttp/internal/http/b$b;->i:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/squareup/okhttp/internal/http/b$b;->a:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private b()J
    .locals 7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->h:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/b$b;->j:J

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->h:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    move-wide v1, v5

    :cond_2
    return-wide v1

    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->f:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->d:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/http/b$b;->i:J

    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    div-long v1, v3, v0

    :cond_5
    return-wide v1
.end method

.method private d()Lcom/squareup/okhttp/internal/http/b;
    .locals 13

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-direct {v0, v2, v1, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->handshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-direct {v0, v2, v1, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-direct {v0, v2, v1, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/b$b;->e(Lcom/squareup/okhttp/Request;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/b$b;->a()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/b$b;->b()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_4
    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v6

    const-wide/16 v8, 0x0

    if-eq v6, v7, :cond_5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    goto :goto_0

    :cond_5
    move-wide v10, v8

    :goto_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    invoke-virtual {v6}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/squareup/okhttp/CacheControl;->mustRevalidate()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v12

    if-eq v12, v7, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    :cond_6
    invoke-virtual {v6}, Lcom/squareup/okhttp/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_9

    add-long/2addr v10, v2

    add-long/2addr v8, v4

    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    cmp-long v4, v10, v4

    const-string v5, "Warning"

    if-ltz v4, :cond_7

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v5, v4}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    :cond_7
    const-wide/32 v6, 0x5265c00

    cmp-long v2, v2, v6

    if-lez v2, :cond_8

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/b$b;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v5, v2}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    :cond_8
    new-instance v2, Lcom/squareup/okhttp/internal/http/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-direct {v2, v1, v0, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    return-object v2

    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->k:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v3, "If-None-Match"

    invoke-virtual {v0, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->f:Ljava/util/Date;

    const-string v3, "If-Modified-Since"

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_1

    :cond_b
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->d:Ljava/util/Date;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_c
    :goto_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/b$b;->e(Lcom/squareup/okhttp/Request;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lcom/squareup/okhttp/internal/http/b;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    invoke-direct {v2, v0, v3, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    goto :goto_2

    :cond_d
    new-instance v2, Lcom/squareup/okhttp/internal/http/b;

    invoke-direct {v2, v0, v1, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    :goto_2
    return-object v2

    :cond_e
    :goto_3
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-direct {v0, v2, v1, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    return-object v0
.end method

.method private static e(Lcom/squareup/okhttp/Request;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->c:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b$b;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public c()Lcom/squareup/okhttp/internal/http/b;
    .locals 2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/b$b;->d()Lcom/squareup/okhttp/internal/http/b;

    move-result-object v0

    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/b;->a:Lcom/squareup/okhttp/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b$b;->b:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/b$a;)V

    :cond_0
    return-object v0
.end method
