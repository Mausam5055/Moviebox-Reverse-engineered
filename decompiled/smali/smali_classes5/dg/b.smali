.class public final Ldg/b;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldg/b$b;,
        Ldg/b$a;
    }
.end annotation


# static fields
.field private static final e:Ldg/b$a;


# instance fields
.field private final a:Ldg/b$b;

.field private volatile b:Ljava/util/Set;

.field private volatile c:Lcom/tmc/network/log/LogLevel;

.field private volatile d:Lcom/tmc/network/log/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldg/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldg/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldg/b;->e:Ldg/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Ldg/b;-><init>(Ldg/b$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldg/b$b;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg/b;->a:Ldg/b$b;

    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ldg/b;->b:Ljava/util/Set;

    sget-object p1, Lcom/tmc/network/log/LogLevel;->NONE:Lcom/tmc/network/log/LogLevel;

    iput-object p1, p0, Ldg/b;->c:Lcom/tmc/network/log/LogLevel;

    iput-object p1, p0, Ldg/b;->d:Lcom/tmc/network/log/LogLevel;

    return-void
.end method

.method public synthetic constructor <init>(Ldg/b$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Ldg/b$b;->b:Ldg/b$b;

    :cond_0
    invoke-direct {p0, p1}, Ldg/b;-><init>(Ldg/b$b;)V

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

.method private final b(Lokhttp3/Headers;I)V
    .locals 3

    iget-object v0, p0, Ldg/b;->b:Ljava/util/Set;

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
    iget-object v1, p0, Ldg/b;->a:Ldg/b$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ldg/b$b;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/tmc/network/log/LogLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldg/b;->c:Lcom/tmc/network/log/LogLevel;

    return-void
.end method

.method public final d(Lcom/tmc/network/log/LogLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldg/b;->d:Lcom/tmc/network/log/LogLevel;

    return-void
.end method

.method public final e(Lcom/tmc/network/log/LogLevel;)Ldg/b;
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ldg/b;->c(Lcom/tmc/network/log/LogLevel;)V

    return-object p0
.end method

.method public final f(Lcom/tmc/network/log/LogLevel;)Ldg/b;
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ldg/b;->d(Lcom/tmc/network/log/LogLevel;)V

    return-object p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "chain"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Ldg/b;->c:Lcom/tmc/network/log/LogLevel;

    iget-object v3, v1, Ldg/b;->d:Lcom/tmc/network/log/LogLevel;

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    sget-object v5, Lcom/tmc/network/log/LogLevel;->NONE:Lcom/tmc/network/log/LogLevel;

    if-ne v2, v5, :cond_0

    if-ne v3, v5, :cond_0

    invoke-interface {v0, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v5, Lcom/tmc/network/log/LogLevel;->BODY:Lcom/tmc/network/log/LogLevel;

    if-ne v2, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    sget-object v8, Lcom/tmc/network/log/LogLevel;->HEADERS:Lcom/tmc/network/log/LogLevel;

    if-ne v2, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v8

    sget-object v9, Ldg/b;->e:Ldg/b$a;

    if-nez v8, :cond_4

    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v11

    :goto_3
    invoke-virtual {v9, v11}, Ldg/b$a;->b(Lokhttp3/MediaType;)Z

    move-result v9

    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ""

    if-eqz v11, :cond_5

    const-string v15, " "

    invoke-interface {v11}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v11

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_5
    move-object v11, v14

    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "-byte body)"

    const-string v15, " ("

    if-nez v2, :cond_6

    if-eqz v8, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_6
    iget-object v6, v1, Ldg/b;->a:Ldg/b$b;

    invoke-interface {v6, v11}, Ldg/b$b;->log(Ljava/lang/String;)V

    const-string v6, "-byte body omitted)"

    const-string v10, "UTF_8"

    const-wide/16 v16, -0x1

    if-eqz v2, :cond_15

    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v11

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-nez v7, :cond_8

    :cond_7
    move/from16 v18, v2

    goto :goto_5

    :cond_8
    const-string v13, "Content-Type"

    invoke-virtual {v11, v13}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_7

    iget-object v13, v1, Ldg/b;->a:Ldg/b$b;

    move/from16 v18, v2

    const-string v2, "Content-Type: "

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v19

    cmp-long v2, v19, v16

    if-eqz v2, :cond_a

    const-string v2, "Content-Length"

    invoke-virtual {v11, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, v1, Ldg/b;->a:Ldg/b$b;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v13, "Content-Length: "

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move/from16 v18, v2

    :cond_a
    :goto_6
    invoke-virtual {v11}, Lokhttp3/Headers;->size()I

    move-result v2

    if-lez v2, :cond_c

    const/4 v7, 0x0

    :goto_7
    add-int/lit8 v13, v7, 0x1

    invoke-direct {v1, v11, v7}, Ldg/b;->b(Lokhttp3/Headers;I)V

    if-lt v13, v2, :cond_b

    goto :goto_8

    :cond_b
    move v7, v13

    goto :goto_7

    :cond_c
    :goto_8
    const-string v2, "--> END "

    if-eqz v5, :cond_14

    if-nez v8, :cond_d

    goto/16 :goto_a

    :cond_d
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-direct {v1, v5}, Ldg/b;->a(Lokhttp3/Headers;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (encoded body omitted)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_e
    invoke-virtual {v8}, Lokhttp3/RequestBody;->isDuplex()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (duplex request body omitted)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_f
    if-nez v9, :cond_10

    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (non text request body omitted.)"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_10
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    invoke-virtual {v8, v5}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-nez v7, :cond_11

    const/4 v7, 0x0

    goto :goto_9

    :cond_11
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v7

    :goto_9
    if-nez v7, :cond_12

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    iget-object v9, v1, Ldg/b;->a:Ldg/b$b;

    invoke-interface {v9, v14}, Ldg/b$b;->log(Ljava/lang/String;)V

    sget-object v9, Ldg/b;->e:Ldg/b$a;

    invoke-virtual {v9, v5}, Ldg/b$a;->a(Lokio/Buffer;)Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, v1, Ldg/b;->a:Ldg/b$b;

    invoke-virtual {v5, v7}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ldg/b$b;->log(Ljava/lang/String;)V

    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (binary "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    :goto_a
    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    move/from16 v18, v2

    :goto_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    :try_start_0
    invoke-interface {v0, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lcom/tmc/network/log/LogLevel;->BODY:Lcom/tmc/network/log/LogLevel;

    if-ne v3, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_18

    sget-object v4, Lcom/tmc/network/log/LogLevel;->HEADERS:Lcom/tmc/network/log/LogLevel;

    if-ne v3, v4, :cond_17

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v3, 0x1

    :goto_e
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    sub-long v7, v19, v7

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    cmp-long v11, v8, v16

    if-eqz v11, :cond_19

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-byte"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    :cond_19
    const-string v11, "unknown-length"

    :goto_f
    iget-object v13, v1, Ldg/b;->a:Ldg/b$b;

    move-object/from16 v16, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v19, v8

    const-string v8, "<-- "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1a

    move-object/from16 v17, v6

    move-object v6, v14

    const/16 p1, 0x20

    goto :goto_10

    :cond_1a
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    const/16 p1, 0x20

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_10
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v18, :cond_1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " body"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_1b
    move-object v4, v14

    :goto_11
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Ldg/b$b;->log(Ljava/lang/String;)V

    sget-object v4, Ldg/b;->e:Ldg/b$a;

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldg/b$a;->b(Lokhttp3/MediaType;)Z

    move-result v4

    if-eqz v3, :cond_28

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    move-result v5

    if-lez v5, :cond_1d

    const/4 v6, 0x0

    :goto_12
    add-int/lit8 v8, v6, 0x1

    invoke-direct {v1, v3, v6}, Ldg/b;->b(Lokhttp3/Headers;I)V

    if-lt v8, v5, :cond_1c

    goto :goto_13

    :cond_1c
    move v6, v8

    goto :goto_12

    :cond_1d
    :goto_13
    if-eqz v2, :cond_27

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_16

    :cond_1e
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-direct {v1, v2}, Ldg/b;->a(Lokhttp3/Headers;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Ldg/b;->a:Ldg/b$b;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1f
    if-nez v4, :cond_20

    iget-object v2, v1, Ldg/b;->a:Ldg/b$b;

    const-string v3, "<-- END HTTP (non text response body omitted.)"

    invoke-interface {v2, v3}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_20
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {v2}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v2

    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lokio/GzipSource;

    invoke-virtual {v2}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v2

    invoke-direct {v4, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    :try_start_1
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeAll(Lokio/Source;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_14

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

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_21
    const/4 v5, 0x0

    move-object v3, v5

    :goto_14
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    if-nez v4, :cond_22

    move-object v4, v5

    goto :goto_15

    :cond_22
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    :goto_15
    if-nez v4, :cond_23

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_23
    sget-object v5, Ldg/b;->e:Ldg/b$a;

    invoke-virtual {v5, v2}, Ldg/b$a;->a(Lokio/Buffer;)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v3, v1, Ldg/b;->a:Ldg/b$b;

    invoke-interface {v3, v14}, Ldg/b$b;->log(Ljava/lang/String;)V

    iget-object v3, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP (binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    return-object v0

    :cond_24
    const-wide/16 v5, 0x0

    cmp-long v5, v19, v5

    if-eqz v5, :cond_25

    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    invoke-interface {v5, v14}, Ldg/b$b;->log(Ljava/lang/String;)V

    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    invoke-virtual {v2}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ldg/b$b;->log(Ljava/lang/String;)V

    :cond_25
    const-string v4, "<-- END HTTP ("

    if-eqz v3, :cond_26

    iget-object v5, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-byte, "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-gzipped-byte body)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto :goto_17

    :cond_26
    iget-object v3, v1, Ldg/b;->a:Ldg/b$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ldg/b$b;->log(Ljava/lang/String;)V

    goto :goto_17

    :cond_27
    :goto_16
    iget-object v2, v1, Ldg/b;->a:Ldg/b$b;

    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Ldg/b$b;->log(Ljava/lang/String;)V

    :cond_28
    :goto_17
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v0, v1, Ldg/b;->a:Ldg/b$b;

    const-string v3, "<-- HTTP FAILED: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ldg/b$b;->log(Ljava/lang/String;)V

    throw v2
.end method
