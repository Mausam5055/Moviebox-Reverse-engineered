.class final Lcom/cloud/hisavana/protocol/okhttptransport/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/collect/ImmutableSet;

.field private static final b:Lcom/google/common/base/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gzip"

    const-string v1, "x-gzip"

    const-string v2, "br"

    const-string v3, "deflate"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/i;->a:Lcom/google/common/collect/ImmutableSet;

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/o;->f(C)Lcom/google/common/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/o;->k()Lcom/google/common/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/o;->e()Lcom/google/common/base/o;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b:Lcom/google/common/base/o;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 1

    const-string v0, "quic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    return-object p0

    :cond_0
    const-string v0, "h3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    return-object p0

    :cond_1
    const-string v0, "spdy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    return-object p0

    :cond_2
    const-string v0, "h2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    return-object p0

    :cond_3
    const-string v0, "http/1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    return-object p0

    :cond_4
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    return-object p0
.end method

.method private static b(Lokhttp3/Request;Lorg/chromium/net/UrlResponseInfo;Lokio/Source;)Lokhttp3/Response$Builder;
    .locals 7

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    const-string v1, "Content-Type"

    invoke-static {v1, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->e(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-string v5, "Content-Encoding"

    invoke-static {v3, v5, v4}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->f(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b:Lcom/google/common/base/o;

    invoke-virtual {v6, v4}, Lcom/google/common/base/o;->h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/collect/g3;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/cloud/hisavana/protocol/okhttptransport/i;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    const-string v3, "Content-Length"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-static {v3, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->e(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v4

    invoke-static {p0, v4, v1, v6, p2}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->c(Lokhttp3/Request;ILjava/lang/String;Ljava/lang/String;Lokio/Source;)Lokhttp3/ResponseBody;

    move-result-object v4

    :cond_4
    invoke-virtual {v0, p0}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_7

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2, v3}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2, v5}, Lcom/google/common/base/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    goto :goto_4

    :cond_8
    return-object v0
.end method

.method private static c(Lokhttp3/Request;ILjava/lang/String;Ljava/lang/String;Lokio/Source;)Lokhttp3/ResponseBody;
    .locals 4

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_2

    const/16 p0, 0xcd

    if-ne p1, p0, :cond_3

    :cond_2
    cmp-long p0, v2, v0

    if-gtz p0, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    invoke-static {p4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    invoke-static {p0, v2, v3, p1}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HTTP "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " had non-zero Content-Length: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/z;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static e(Ljava/lang/String;Lorg/chromium/net/UrlResponseInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method g(Lokhttp3/Request;Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;)Lokhttp3/Response;
    .locals 7

    invoke-virtual {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->g()Lcom/google/common/util/concurrent/r;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->f()Lcom/google/common/util/concurrent/r;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/Source;

    invoke-static {p1, v0, v1}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b(Lokhttp3/Request;Lorg/chromium/net/UrlResponseInfo;Lokio/Source;)Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cloud/hisavana/protocol/okhttptransport/OkHttpBridgeRequestCallback;->h()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getUrlChain()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v2, "The number of redirects should be consistent across URLs and headers!"

    invoke-static {v4, v2}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/net/UrlResponseInfo;

    invoke-static {v4, v6, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/i;->b(Lokhttp3/Request;Lorg/chromium/net/UrlResponseInfo;Lokio/Source;)Lokhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-static {v0}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    :cond_2
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
