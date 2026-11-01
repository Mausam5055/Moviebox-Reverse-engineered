.class public final Lcom/squareup/okhttp/internal/http/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/g$c;
    }
.end annotation


# static fields
.field private static final r:Lcom/squareup/okhttp/ResponseBody;


# instance fields
.field final a:Lcom/squareup/okhttp/OkHttpClient;

.field public final b:Lcom/squareup/okhttp/internal/http/n;

.field private final c:Lcom/squareup/okhttp/Response;

.field private d:Lcom/squareup/okhttp/internal/http/HttpStream;

.field e:J

.field private f:Z

.field public final g:Z

.field private final h:Lcom/squareup/okhttp/Request;

.field private i:Lcom/squareup/okhttp/Request;

.field private j:Lcom/squareup/okhttp/Response;

.field private k:Lcom/squareup/okhttp/Response;

.field private l:Lokio/Sink;

.field private m:Lokio/BufferedSink;

.field private final n:Z

.field private final o:Z

.field private p:Lcom/squareup/okhttp/internal/http/CacheRequest;

.field private q:Lcom/squareup/okhttp/internal/http/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/internal/http/g$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/g$a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/g;->r:Lcom/squareup/okhttp/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/http/k;Lcom/squareup/okhttp/Response;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->e:J

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/http/g;->g:Z

    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/http/g;->n:Z

    iput-boolean p5, p0, Lcom/squareup/okhttp/internal/http/g;->o:Z

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/http/g;->i(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Address;

    move-result-object p1

    invoke-direct {p6, p3, p1}, Lcom/squareup/okhttp/internal/http/n;-><init>(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Address;)V

    :goto_0
    iput-object p6, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    iput-object p7, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    iput-object p8, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/Response;

    return-void
.end method

.method private A(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 3

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/g;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lokio/GzipSource;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v0, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Headers;->newBuilder()Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p1

    new-instance v2, Lcom/squareup/okhttp/internal/http/i;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private static B(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p0

    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/internal/http/HttpStream;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    return-object p1
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/g;)Lcom/squareup/okhttp/Response;
    .locals 0

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/squareup/okhttp/internal/http/CacheRequest;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 3

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/http/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    new-instance v2, Lcom/squareup/okhttp/internal/http/g$b;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/squareup/okhttp/internal/http/g$b;-><init>(Lcom/squareup/okhttp/internal/http/g;Lokio/BufferedSource;Lcom/squareup/okhttp/internal/http/CacheRequest;Lokio/BufferedSink;)V

    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object p1

    new-instance v0, Lcom/squareup/okhttp/internal/http/i;

    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object p2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p1

    return-object p1
.end method

.method private static g(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Headers;
    .locals 7

    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/OkHeaders;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v0, v4, v5}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_6

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v2}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object p0

    return-object p0
.end method

.method private h()Lcom/squareup/okhttp/internal/http/HttpStream;
    .locals 7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/squareup/okhttp/internal/http/n;->k(IIIZZ)Lcom/squareup/okhttp/internal/http/HttpStream;

    move-result-object v0

    return-object v0
.end method

.method private static i(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Address;
    .locals 14

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getCertificatePinner()Lcom/squareup/okhttp/CertificatePinner;

    move-result-object v2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    :goto_0
    new-instance v0, Lcom/squareup/okhttp/Address;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/HttpUrl;->port()I

    move-result v3

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v4

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getAuthenticator()Lcom/squareup/okhttp/Authenticator;

    move-result-object v9

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v10

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getProtocols()Ljava/util/List;

    move-result-object v11

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getConnectionSpecs()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v13

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/squareup/okhttp/Address;-><init>(Ljava/lang/String;ILcom/squareup/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/CertificatePinner;Lcom/squareup/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method public static n(Lcom/squareup/okhttp/Response;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->e(Lcom/squareup/okhttp/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method private o()V
    .locals 3

    sget-object v0, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/c;->internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/InternalCache;->remove(Lcom/squareup/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/InternalCache;->put(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/internal/http/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lcom/squareup/okhttp/internal/http/CacheRequest;

    return-void
.end method

.method private p(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;
    .locals 4

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->i(Lcom/squareup/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_0
    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_1
    const-string v1, "Accept-Encoding"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->f:Z

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/http/OkHeaders;->l(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->a(Lcom/squareup/okhttp/Request$Builder;Ljava/util/Map;)V

    :cond_3
    const-string v1, "User-Agent"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/squareup/okhttp/internal/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_4
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p1

    return-object p1
.end method

.method private r()Lcom/squareup/okhttp/Response;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/HttpStream;->finishRequest()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/HttpStream;->readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/n;->c()Ldf/a;

    move-result-object v1

    invoke-virtual {v1}, Ldf/a;->getHandshake()Lcom/squareup/okhttp/Handshake;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->handshake(Lcom/squareup/okhttp/Handshake;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/g;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/http/OkHeaders;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->o:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/http/HttpStream;->openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/n;->l()V

    :cond_2
    return-object v0
.end method

.method private static z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public C()V
    .locals 4

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->e:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->b()V

    return-void
.end method

.method public f()Lcom/squareup/okhttp/internal/http/n;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lokio/BufferedSink;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->d()V

    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    return-object v0
.end method

.method public j()Lcom/squareup/okhttp/Request;
    .locals 6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->c()Ldf/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    const-string v5, "GET"

    if-eq v2, v4, :cond_5

    const/16 v4, 0x134

    if-eq v2, v4, :cond_5

    const/16 v4, 0x191

    if-eq v2, v4, :cond_4

    const/16 v4, 0x197

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getAuthenticator()Lcom/squareup/okhttp/Authenticator;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-static {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->j(Lcom/squareup/okhttp/Authenticator;Lcom/squareup/okhttp/Response;Ljava/net/Proxy;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :pswitch_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getFollowRedirects()Z

    move-result v0

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->getFollowSslRedirects()Z

    move-result v2

    if-nez v2, :cond_a

    return-object v1

    :cond_a
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/h;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2, v5, v1}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_3

    :cond_b
    invoke-virtual {v2, v3, v1}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    :goto_3
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_c
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->x(Lcom/squareup/okhttp/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    :cond_d
    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public k()Lcom/squareup/okhttp/Connection;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->c()Ldf/a;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/squareup/okhttp/Request;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    return-object v0
.end method

.method public m()Lcom/squareup/okhttp/Response;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method q(Lcom/squareup/okhttp/Request;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/h;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->o:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/Response;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->n:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/squareup/okhttp/internal/http/g$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/squareup/okhttp/internal/http/g$c;-><init>(Lcom/squareup/okhttp/internal/http/g;ILcom/squareup/okhttp/Request;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/http/g$c;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lokio/BufferedSink;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    :cond_6
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->d(Lcom/squareup/okhttp/Request;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    instance-of v1, v0, Lcom/squareup/okhttp/internal/http/k;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/squareup/okhttp/internal/http/k;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/k;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->m:Lokio/BufferedSink;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lokio/Sink;->close()V

    goto :goto_1

    :cond_9
    invoke-interface {v0}, Lokio/Sink;->close()V

    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    instance-of v1, v0, Lcom/squareup/okhttp/internal/http/k;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    check-cast v0, Lcom/squareup/okhttp/internal/http/k;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/http/HttpStream;->writeRequestBody(Lcom/squareup/okhttp/internal/http/k;)V

    :cond_a
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->r()Lcom/squareup/okhttp/Response;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/http/g;->t(Lcom/squareup/okhttp/Headers;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    if-eqz v1, :cond_c

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/g;->B(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/Response;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/http/g;->g(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->close()V

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->w()V

    sget-object v0, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/c;->internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/InternalCache;->trackConditionalCacheHit()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/InternalCache;->update(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Response;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->A(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    return-void

    :cond_b
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    :cond_c
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/Response;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/Response$Builder;->networkResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/g;->n(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->o()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->p:Lcom/squareup/okhttp/internal/http/CacheRequest;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/g;->d(Lcom/squareup/okhttp/internal/http/CacheRequest;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->A(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    :cond_d
    return-void
.end method

.method public t(Lcom/squareup/okhttp/Headers;)V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/squareup/okhttp/internal/http/OkHeaders;->l(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public u(Lcom/squareup/okhttp/internal/http/RouteException;)Lcom/squareup/okhttp/internal/http/g;
    .locals 10

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/n;->m(Lcom/squareup/okhttp/internal/http/RouteException;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->f()Lcom/squareup/okhttp/internal/http/n;

    move-result-object v7

    new-instance p1, Lcom/squareup/okhttp/internal/http/g;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/g;->g:Z

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/http/g;->n:Z

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/http/g;->o:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    move-object v8, v0

    check-cast v8, Lcom/squareup/okhttp/internal/http/k;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/Response;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/squareup/okhttp/internal/http/g;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/http/k;Lcom/squareup/okhttp/Response;)V

    return-object p1
.end method

.method public v(Ljava/io/IOException;Lokio/Sink;)Lcom/squareup/okhttp/internal/http/g;
    .locals 10

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/n;->n(Ljava/io/IOException;Lokio/Sink;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/squareup/okhttp/OkHttpClient;->getRetryOnConnectionFailure()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->f()Lcom/squareup/okhttp/internal/http/n;

    move-result-object v7

    new-instance p1, Lcom/squareup/okhttp/internal/http/g;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/g;->g:Z

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/http/g;->n:Z

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/http/g;->o:Z

    move-object v8, p2

    check-cast v8, Lcom/squareup/okhttp/internal/http/k;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/Response;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/squareup/okhttp/internal/http/g;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;ZZZLcom/squareup/okhttp/internal/http/n;Lcom/squareup/okhttp/internal/http/k;Lcom/squareup/okhttp/Response;)V

    return-object p1
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:Lcom/squareup/okhttp/internal/http/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->o()V

    return-void
.end method

.method public x(Lcom/squareup/okhttp/HttpUrl;)Z
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y()V
    .locals 6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->q:Lcom/squareup/okhttp/internal/http/b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->p(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Request;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/c;->internalCache(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/InternalCache;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/InternalCache;->get(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Lcom/squareup/okhttp/internal/http/b$b;

    invoke-direct {v5, v3, v4, v0, v2}, Lcom/squareup/okhttp/internal/http/b$b;-><init>(JLcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/b$b;->c()Lcom/squareup/okhttp/internal/http/b;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->q:Lcom/squareup/okhttp/internal/http/b;

    iget-object v4, v3, Lcom/squareup/okhttp/internal/http/b;->a:Lcom/squareup/okhttp/Request;

    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    iget-object v4, v3, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/Response;

    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    if-eqz v1, :cond_2

    invoke-interface {v1, v3}, Lcom/squareup/okhttp/internal/InternalCache;->trackResponse(Lcom/squareup/okhttp/internal/http/b;)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/g;->h()Lcom/squareup/okhttp/internal/http/HttpStream;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    invoke-interface {v1, p0}, Lcom/squareup/okhttp/internal/http/HttpStream;->setHttpEngine(Lcom/squareup/okhttp/internal/http/g;)V

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/g;->n:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/http/g;->q(Lcom/squareup/okhttp/Request;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    if-nez v1, :cond_9

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/OkHeaders;->d(Lcom/squareup/okhttp/Request;)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->g:Z

    if-eqz v2, :cond_6

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    new-instance v2, Lcom/squareup/okhttp/internal/http/k;

    long-to-int v0, v0

    invoke-direct {v2, v0}, Lcom/squareup/okhttp/internal/http/k;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    goto/16 :goto_2

    :cond_4
    new-instance v0, Lcom/squareup/okhttp/internal/http/k;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/k;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/http/HttpStream;->writeRequestHeaders(Lcom/squareup/okhttp/Request;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/HttpStream;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->i:Lcom/squareup/okhttp/Request;

    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/http/HttpStream;->createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->l:Lokio/Sink;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/Response;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->j:Lcom/squareup/okhttp/Response;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->cacheResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/squareup/okhttp/Response$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->h:Lcom/squareup/okhttp/Request;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/g;->c:Lcom/squareup/okhttp/Response;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/g;->z(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->priorResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/http/g;->r:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/g;->A(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/g;->k:Lcom/squareup/okhttp/Response;

    :cond_9
    :goto_2
    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
