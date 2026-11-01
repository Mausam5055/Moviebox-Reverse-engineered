.class public final Lcom/cloud/hisavana/protocol/okhttptransport/a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Interceptor;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/protocol/okhttptransport/a$b;,
        Lcom/cloud/hisavana/protocol/okhttptransport/a$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/protocol/okhttptransport/g;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/g;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/protocol/okhttptransport/g;

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/g;

    new-instance v2, Ly6/a;

    invoke-direct {v2, p0}, Ly6/a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/a;)V

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/g;Lcom/cloud/hisavana/protocol/okhttptransport/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/a;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/g;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/protocol/okhttptransport/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->h()V

    return-void
.end method

.method static synthetic d(Lcom/cloud/hisavana/protocol/okhttptransport/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic h()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/net/UrlRequest;

    invoke-virtual {v1}, Lorg/chromium/net/UrlRequest;->cancel()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v2

    const-string v3, "CronetInterceptor"

    const-string v4, "Unable to propagate cancellation status"

    invoke-virtual {v2, v3, v4, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static i(Lorg/chromium/net/CronetEngine;)Lcom/cloud/hisavana/protocol/okhttptransport/a$b;
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b;-><init>(Lorg/chromium/net/CronetEngine;)V

    return-object v0
.end method

.method private k(Lokhttp3/Response;Lokhttp3/Call;)Lokhttp3/Response;
    .locals 3

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/cloud/hisavana/protocol/okhttptransport/a$c;-><init>(Lcom/cloud/hisavana/protocol/okhttptransport/a;Lokhttp3/ResponseBody;Lokhttp3/Call;Lcom/cloud/hisavana/protocol/okhttptransport/a$a;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/g;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/cloud/hisavana/protocol/okhttptransport/g;->b(Lokhttp3/Request;II)Lcom/cloud/hisavana/protocol/okhttptransport/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->b:Ljava/util/Map;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/g$b;->a()Lorg/chromium/net/UrlRequest;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/g$b;->a()Lorg/chromium/net/UrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/UrlRequest;->start()V

    invoke-virtual {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/g$b;->b()Lokhttp3/Response;

    move-result-object v0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->k(Lokhttp3/Response;Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a;->b:Ljava/util/Map;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
