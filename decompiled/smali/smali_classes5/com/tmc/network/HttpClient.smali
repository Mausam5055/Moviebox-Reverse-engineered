.class public final Lcom/tmc/network/HttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/HttpClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0013\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J!\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\nH\u0002\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/tmc/network/HttpClient;",
        "",
        "config",
        "Lcom/tmc/network/HttpClientConfig;",
        "(Lcom/tmc/network/HttpClientConfig;)V",
        "mOkHttpClient",
        "Lokhttp3/OkHttpClient;",
        "createSSLSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "trustManagers",
        "",
        "Ljavax/net/ssl/TrustManager;",
        "([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;",
        "getConfig",
        "getOkHttpClient",
        "newCall",
        "Lokhttp3/Call;",
        "request",
        "Lokhttp3/Request;",
        "resetHttpClient",
        "",
        "setConfig",
        "Companion",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/tmc/network/HttpClient$Companion;

.field private static ifForceUseCache:Z

.field private static ifInitAnalytics:Z

.field private static ifTestMode:Z

.field private static ifUseCache:Z

.field private static initInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static progressListener:Lcom/tmc/network/ProgressListener;


# instance fields
.field private config:Lcom/tmc/network/HttpClientConfig;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tmc/network/HttpClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tmc/network/HttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/tmc/network/HttpClient;-><init>(Lcom/tmc/network/HttpClientConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/tmc/network/HttpClientConfig;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/tmc/network/HttpClientConfig;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tmc/network/HttpClient;->setConfig(Lcom/tmc/network/HttpClientConfig;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tmc/network/HttpClientConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/tmc/network/HttpClientConfig;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/tmc/network/HttpClientConfig;-><init>(IJLjava/util/concurrent/TimeUnit;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/tmc/network/HttpClient;-><init>(Lcom/tmc/network/HttpClientConfig;)V

    return-void
.end method

.method public static final synthetic access$getIfForceUseCache$cp()Z
    .locals 1

    sget-boolean v0, Lcom/tmc/network/HttpClient;->ifForceUseCache:Z

    return v0
.end method

.method public static final synthetic access$getIfUseCache$cp()Z
    .locals 1

    sget-boolean v0, Lcom/tmc/network/HttpClient;->ifUseCache:Z

    return v0
.end method

.method public static final synthetic access$getInitInterceptors$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tmc/network/HttpClient;->initInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$setIfForceUseCache$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifForceUseCache:Z

    return-void
.end method

.method public static final synthetic access$setIfInitAnalytics$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifInitAnalytics:Z

    return-void
.end method

.method public static final synthetic access$setIfTestMode$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifTestMode:Z

    return-void
.end method

.method public static final synthetic access$setIfUseCache$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/tmc/network/HttpClient;->ifUseCache:Z

    return-void
.end method

.method public static final synthetic access$setInitInterceptors$cp(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lcom/tmc/network/HttpClient;->initInterceptors:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setProgressListener$cp(Lcom/tmc/network/ProgressListener;)V
    .locals 0

    sput-object p0, Lcom/tmc/network/HttpClient;->progressListener:Lcom/tmc/network/ProgressListener;

    return-void
.end method

.method private final createSSLSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, p1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lgg/b;->a:Lgg/b;

    invoke-virtual {v1, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getConfig()Lcom/tmc/network/HttpClientConfig;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    return-object v0
.end method

.method public final declared-synchronized getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized newCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized resetHttpClient()V
    .locals 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getTimeoutConnect()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getTimeoutWrite()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getTimeoutRead()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lokhttp3/ConnectionPool;

    iget-object v3, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/tmc/network/HttpClientConfig;->getMaxIdleConnections()I

    move-result v3

    iget-object v4, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/tmc/network/HttpClientConfig;->getKeepAliveDuration()J

    move-result-wide v4

    iget-object v6, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/tmc/network/HttpClientConfig;->getKeepAliveTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/tmc/network/HttpClient;->ifUseCache:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "s_cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lokhttp3/Cache;

    const/high16 v4, 0xa00000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_2

    move-object v2, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getInterceptors()Ljava/util/List;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_6

    new-instance v2, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

    invoke-direct {v2}, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    sget-object v2, Lcom/tmc/network/HttpClient;->progressListener:Lcom/tmc/network/ProgressListener;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/tmc/network/DownloadInterceptor;

    invoke-direct {v3, v2}, Lcom/tmc/network/DownloadInterceptor;-><init>(Lcom/tmc/network/ProgressListener;)V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_3
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_4

    move-object v2, v7

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getInterceptors()Ljava/util/List;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_4

    :cond_6
    const-string v2, "mininetwork"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ldg/b;

    new-instance v3, Ldg/a;

    invoke-direct {v3}, Ldg/a;-><init>()V

    invoke-direct {v2, v3}, Ldg/b;-><init>(Ldg/b$b;)V

    sget-object v3, Lcom/tmc/network/log/LogLevel;->BODY:Lcom/tmc/network/log/LogLevel;

    invoke-virtual {v2, v3}, Ldg/b;->e(Lcom/tmc/network/log/LogLevel;)Ldg/b;

    invoke-virtual {v2, v3}, Ldg/b;->f(Lcom/tmc/network/log/LogLevel;)Ldg/b;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_7
    sget-object v2, Lcom/tmc/network/HttpClient;->initInterceptors:Ljava/util/List;

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_5

    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_a

    move-object v2, v7

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getNetworkInterceptors()Ljava/util/List;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_b

    move-object v2, v7

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getNetworkInterceptors()Ljava/util/List;

    move-result-object v2

    :goto_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    if-nez v3, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_9

    :cond_d
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_e

    move-object v2, v7

    goto :goto_a

    :cond_e
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_10

    new-instance v2, Lokhttp3/Dispatcher;

    iget-object v3, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v3, :cond_f

    move-object v3, v7

    goto :goto_b

    :cond_f
    invoke-virtual {v3}, Lcom/tmc/network/HttpClientConfig;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    :goto_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    :cond_10
    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_11

    move-object v2, v7

    goto :goto_c

    :cond_11
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v2

    :goto_c
    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v7

    :goto_d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    :cond_13
    sget-object v2, Lcg/b;->c:Lcg/b$a;

    invoke-virtual {v2}, Lcg/b$a;->a()Lokhttp3/EventListener$Factory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    iget-object v2, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    if-nez v2, :cond_14

    goto :goto_e

    :cond_14
    invoke-virtual {v2}, Lcom/tmc/network/HttpClientConfig;->getLocalDns()Lokhttp3/Dns;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    :goto_e
    sget-boolean v2, Lcom/tmc/network/HttpClient;->ifTestMode:Z

    if-eqz v2, :cond_17

    new-instance v2, Lcom/tmc/network/HttpClient$resetHttpClient$trustAllCerts$1;

    invoke-direct {v2}, Lcom/tmc/network/HttpClient$resetHttpClient$trustAllCerts$1;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    aput-object v2, v3, v0

    invoke-direct {p0, v3}, Lcom/tmc/network/HttpClient;->createSSLSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    aget-object v0, v3, v0

    if-eqz v0, :cond_16

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lcom/tmc/network/HttpClient$resetHttpClient$3;

    invoke-direct {v0}, Lcom/tmc/network/HttpClient$resetHttpClient$3;-><init>()V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_f

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_f
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tmc/network/HttpClient;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v0}, Lcom/transsion/api/gateway/GateWaySdk;->setOkHttpClient(Lokhttp3/OkHttpClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setConfig(Lcom/tmc/network/HttpClientConfig;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/tmc/network/HttpClient;->config:Lcom/tmc/network/HttpClientConfig;

    invoke-virtual {p0}, Lcom/tmc/network/HttpClient;->resetHttpClient()V

    return-void
.end method
