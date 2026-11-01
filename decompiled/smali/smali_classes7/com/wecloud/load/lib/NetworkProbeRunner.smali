.class public final Lcom/wecloud/load/lib/NetworkProbeRunner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/NetworkProbeRunner$Link;,
        Lcom/wecloud/load/lib/NetworkProbeRunner$Payload;,
        Lcom/wecloud/load/lib/NetworkProbeRunner$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/wecloud/load/lib/NetworkProbeRunner;

.field private static final b:Lcom/google/gson/Gson;

.field private static final c:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/wecloud/load/lib/NetworkProbeRunner;

    invoke-direct {v0}, Lcom/wecloud/load/lib/NetworkProbeRunner;-><init>()V

    sput-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->a:Lcom/wecloud/load/lib/NetworkProbeRunner;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->b:Lcom/google/gson/Gson;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->c:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicReference;Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    invoke-static {p0, p1}, Lcom/wecloud/load/lib/NetworkProbeRunner;->i(Ljava/util/concurrent/atomic/AtomicReference;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lcom/wecloud/load/lib/NetworkProbeRunner;->b:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static final synthetic c(Lcom/wecloud/load/lib/NetworkProbeRunner;Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wecloud/load/lib/NetworkProbeRunner;->g(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/lang/Throwable;)Lkotlin/Pair;
    .locals 2

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Operation timeout"

    :cond_0
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "DNS lookup failed"

    :cond_2
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "Failed to connect to host"

    :cond_4
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/io/IOException;

    const/16 v1, 0x63

    if-eqz v0, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "IO error"

    :cond_7
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "Unknown error"

    :cond_9
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p1, "SSL peer certificate verification failed"

    :cond_b
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static synthetic f(Lcom/wecloud/load/lib/NetworkProbeRunner;Ljava/lang/String;Lkotlinx/coroutines/i0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/wecloud/load/lib/NetworkProbeRunner;->e(Ljava/lang/String;Lkotlinx/coroutines/i0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final g(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getRetryCount()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner;->h(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;)Lcom/wecloud/load/lib/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wecloud/load/lib/n;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    move-object v4, v0

    if-nez v2, :cond_6

    new-instance v2, Lcom/wecloud/load/lib/n;

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "GET"

    :cond_5
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "toUpperCase(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    const-string v17, "unknown"

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, ""

    const-string v9, "Unknown error"

    const/16 v10, 0x63

    const-string v12, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v17}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V

    :cond_6
    return-object v2
.end method

.method private final h(Lcom/wecloud/load/lib/NetworkProbeRunner$Link;)Lcom/wecloud/load/lib/n;
    .locals 42

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object v14, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GET"

    :cond_1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "toUpperCase(...)"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getTimeoutMilliseconds()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x2710

    :goto_1
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getExpectedStatusCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getHeaders()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/wecloud/load/lib/NetworkProbeRunner$Link;->getBody()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v6, v1

    :cond_5
    :try_start_0
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sget-object v9, Lcom/wecloud/load/lib/NetworkProbeRunner;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    int-to-long v10, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v9

    invoke-virtual {v9, v10, v11, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v9, Lcom/wecloud/load/lib/m;

    invoke-direct {v9, v7}, Lcom/wecloud/load/lib/m;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v9}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v9, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    goto/16 :goto_16

    :cond_6
    const-string v10, "POST"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "PUT"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "PATCH"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "DELETE"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    move v10, v4

    goto :goto_5

    :cond_8
    :goto_4
    move v10, v2

    :goto_5
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "Content-Type"

    invoke-static {v12, v13, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_a
    move-object v11, v8

    :goto_6
    check-cast v11, Ljava/util/Map$Entry;

    if-eqz v11, :cond_b

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_7

    :cond_b
    move-object v5, v8

    :goto_7
    if-eqz v5, :cond_c

    sget-object v11, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v11, v5}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    goto :goto_8

    :cond_c
    move-object v5, v8

    :goto_8
    if-eqz v10, :cond_d

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_d

    sget-object v11, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v11, v6, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v5

    goto :goto_9

    :cond_d
    move-object v5, v8

    :goto_9
    if-eqz v10, :cond_f

    if-nez v5, :cond_e

    sget-object v21, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-array v5, v4, [B

    const/16 v26, 0x6

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v5

    invoke-static/range {v21 .. v27}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v5

    :cond_e
    invoke-virtual {v9, v15, v5}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    goto :goto_a

    :cond_f
    invoke-virtual {v9, v15, v8}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    :goto_a
    invoke-virtual {v0, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, v9, v19

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v21

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/Pair;

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_10
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    :cond_11
    if-nez v8, :cond_12

    move-object v8, v1

    :cond_12
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const/high16 v9, 0x100000

    if-le v5, v9, :cond_13

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v8, "substring(...)"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v5

    goto :goto_c

    :cond_13
    move-object v11, v8

    :goto_c
    const/16 v12, 0xc8

    if-lez v3, :cond_14

    if-ne v6, v3, :cond_15

    :goto_d
    move v4, v2

    goto :goto_e

    :cond_14
    if-gt v12, v6, :cond_15

    const/16 v5, 0x190

    if-ge v6, v5, :cond_15

    goto :goto_d

    :cond_15
    :goto_e
    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v5, Lcom/wecloud/load/lib/NetworkProbeRunner$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_18

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x3

    const-string v5, "HTTP/2"

    if-eq v0, v2, :cond_16

    const/4 v2, 0x4

    if-eq v0, v2, :cond_16

    const/4 v2, 0x5

    if-eq v0, v2, :cond_16

    :try_start_1
    const-string v0, "unknown"

    :goto_f
    move-object/from16 v16, v0

    goto :goto_10

    :cond_16
    move-object/from16 v16, v5

    goto :goto_10

    :cond_17
    const-string v0, "HTTP/1.1"

    goto :goto_f

    :cond_18
    const-string v0, "HTTP/1.0"

    goto :goto_f

    :goto_10
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_19

    move-object v7, v1

    goto :goto_11

    :cond_19
    move-object v7, v0

    :goto_11
    if-eqz v4, :cond_1a

    new-instance v0, Lcom/wecloud/load/lib/n;

    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object v2, v0

    move-object v3, v14

    move-object v4, v15

    move v1, v12

    move-wide/from16 v12, v17

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-wide/from16 v14, v21

    :try_start_2
    invoke-direct/range {v2 .. v16}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V

    :goto_12
    move-object/from16 v25, v0

    goto :goto_15

    :catchall_1
    move-exception v0

    goto/16 :goto_16

    :cond_1a
    move v1, v12

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    new-instance v0, Lcom/wecloud/load/lib/n;

    if-lez v3, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected status code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_14

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_13

    :goto_14
    const/16 v9, 0x63

    const/4 v5, 0x0

    move-object v2, v0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-wide/from16 v12, v17

    move-wide/from16 v14, v21

    invoke-direct/range {v2 .. v16}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_12

    :goto_15
    invoke-virtual/range {v25 .. v25}, Lcom/wecloud/load/lib/n;->l()I

    move-result v0

    if-ne v0, v1, :cond_1c

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v33

    const-string v34, ""

    const/16 v40, 0xe7f

    const/16 v41, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    invoke-static/range {v25 .. v41}, Lcom/wecloud/load/lib/n;->b(Lcom/wecloud/load/lib/n;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lcom/wecloud/load/lib/n;

    move-result-object v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object v25

    :goto_16
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v1, p0

    :try_start_4
    invoke-direct {v1, v0}, Lcom/wecloud/load/lib/NetworkProbeRunner;->d(Ljava/lang/Throwable;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    new-instance v0, Lcom/wecloud/load/lib/n;

    const-string v7, ""

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v10

    const-string v11, ""

    const-string v16, "unknown"

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-wide/from16 v12, v17

    invoke-direct/range {v2 .. v16}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_17

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    throw v0
.end method

.method private static final i(Ljava/util/concurrent/atomic/AtomicReference;Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/wecloud/load/lib/NetworkProbeRunner$b;

    invoke-direct {p1, p0}, Lcom/wecloud/load/lib/NetworkProbeRunner$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object p1
.end method


# virtual methods
.method public final e(Ljava/lang/String;Lkotlinx/coroutines/i0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wecloud/load/lib/NetworkProbeRunner$run$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
