.class public final Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;,
        Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

.field private volatile b:Ljava/util/Set;

.field private volatile c:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;-><init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->b:Ljava/util/Set;

    sget-object p1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    iput-object p1, p0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->c:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->b:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    :cond_0
    invoke-direct {p0, p1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;-><init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;)V

    return-void
.end method

.method private final a(Lokhttp3/Headers;)Z
    .locals 3

    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "identity"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gzip"

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private final c(Lokhttp3/Headers;I)V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->b:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u2588\u2588"

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->c:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "chain"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->c:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    sget-object v4, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_0

    invoke-interface {v0, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    sget-object v7, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->HEADERS:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v8

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    const-string v11, " "

    const-string v12, ""

    if-eqz v8, :cond_4

    invoke-interface {v8}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    move-object v8, v12

    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v10, " ("

    if-nez v2, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_5
    iget-object v13, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-interface {v13, v8}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    const-string v8, "-byte body omitted)"

    const-string v13, "UTF_8"

    if-eqz v2, :cond_12

    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v14, "Content-Type"

    invoke-virtual {v5, v14}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_6

    iget-object v14, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v11

    const-string v11, "Content-Type: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v6}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object/from16 v18, v11

    :goto_4
    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v6, v14, v16

    if-eqz v6, :cond_7

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    iget-object v6, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string v2, "Content-Length: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move/from16 v19, v2

    goto :goto_5

    :cond_8
    move/from16 v19, v2

    move-object/from16 v18, v11

    :goto_5
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v2, :cond_9

    invoke-direct {v1, v5, v6}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->c(Lokhttp3/Headers;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    const-string v2, "--> END "

    if-eqz v4, :cond_11

    if-nez v7, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v3}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (encoded body omitted)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (duplex request body omitted)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (one-shot body omitted)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {v7, v5}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    if-eqz v6, :cond_e

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v11}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    if-nez v6, :cond_f

    :cond_e
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    iget-object v11, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-interface {v11, v12}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    invoke-static {v5}, Lxg/d;->a(Lokio/Buffer;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v5, v6}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (binary "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    :goto_7
    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    move/from16 v19, v2

    move-object/from16 v18, v11

    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    :try_start_0
    invoke-interface {v0, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    const-wide/16 v14, -0x1

    cmp-long v11, v6, v14

    if-eqz v11, :cond_13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-byte"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_13
    const-string v11, "unknown-length"

    :goto_9
    iget-object v14, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v15

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-nez v16, :cond_14

    move-wide/from16 v20, v6

    move-object/from16 v16, v9

    move-object v6, v12

    goto :goto_a

    :cond_14
    move-object/from16 v16, v9

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v20, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_a
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    if-nez v19, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    const-string v8, ", "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " body"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_15
    move-object/from16 v17, v8

    move-object v8, v12

    :goto_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<-- "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    if-eqz v19, :cond_20

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v3, :cond_16

    invoke-direct {v1, v2, v6}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->c(Lokhttp3/Headers;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_16
    if-eqz v4, :cond_1f

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_e

    :cond_17
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a(Lokhttp3/Headers;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v2, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_18
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    invoke-interface {v3, v6, v7}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {v3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    const-string v4, "Content-Encoding"

    invoke-virtual {v2, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "gzip"

    const/4 v6, 0x1

    invoke-static {v4, v2, v6}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_19

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Lokio/GzipSource;

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v3

    invoke-direct {v6, v3}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    :try_start_1
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {v3, v6}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v4, v2

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_19
    :goto_d
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_1a

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-nez v2, :cond_1b

    :cond_1a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    invoke-static {v3}, Lxg/d;->a(Lokio/Buffer;)Z

    move-result v5

    if-nez v5, :cond_1c

    iget-object v2, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-interface {v2, v12}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- END HTTP (binary "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1c
    const-wide/16 v5, 0x0

    cmp-long v5, v20, v5

    if-eqz v5, :cond_1d

    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-interface {v5, v12}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    :cond_1d
    const-string v2, "<-- END HTTP ("

    if-eqz v4, :cond_1e

    iget-object v5, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-byte, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-gzipped-byte body)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto :goto_f

    :cond_1e
    iget-object v4, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    goto :goto_f

    :cond_1f
    :goto_e
    iget-object v2, v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->a:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;

    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;->log(Ljava/lang/String;)V

    :cond_20
    :goto_f
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-object v0, Llg/a;->a:Llg/a$a;

    sget-object v4, Lnh/m;->a:Lnh/m;

    invoke-virtual {v4}, Lnh/m;->b()I

    move-result v4

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net_state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " url:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "<-- HTTP FAILED: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HttpTag"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v5}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    throw v2
.end method
