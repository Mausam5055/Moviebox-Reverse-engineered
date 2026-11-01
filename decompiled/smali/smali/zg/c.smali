.class public final Lzg/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzg/c$a;
    }
.end annotation


# static fields
.field public static final e:Lzg/c$a;

.field private static final f:Lkotlin/Lazy;

.field private static final g:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lokhttp3/OkHttpClient;

.field private c:Lretrofit2/k0;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzg/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzg/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lzg/c;->e:Lzg/c$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lzg/b;

    invoke-direct {v1}, Lzg/b;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lzg/c;->f:Lkotlin/Lazy;

    const-string v0, "one_room_net_thread"

    sput-object v0, Lzg/c;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetServiceGenerator"

    iput-object v0, p0, Lzg/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lzg/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->h()V

    invoke-direct {p0}, Lzg/c;->j()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lzg/c;->b:Lokhttp3/OkHttpClient;

    new-instance v0, Lretrofit2/k0$b;

    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    move-result-object v0

    iget-object v1, p0, Lzg/c;->b:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-static {}, Lug/a;->f()Lug/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    move-result-object v0

    new-instance v1, Lzg/a;

    invoke-direct {v1, p0}, Lzg/a;-><init>(Lzg/c;)V

    const/4 v2, 0x6

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lqz/a;->a(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-static {v1}, Lv10/g;->e(Lio/reactivex/rxjava3/core/Scheduler;)Lv10/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->a(Lretrofit2/e$a;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    move-result-object v0

    iput-object v0, p0, Lzg/c;->c:Lretrofit2/k0;

    return-void
.end method

.method public static synthetic a(Lzg/c;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lzg/c;->c(Lzg/c;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lzg/c;
    .locals 1

    invoke-static {}, Lzg/c;->i()Lzg/c;

    move-result-object v0

    return-object v0
.end method

.method private static final c(Lzg/c;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lzg/c;->g:Ljava/lang/String;

    iget-object p0, p0, Lzg/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lzg/c;->f:Lkotlin/Lazy;

    return-object v0
.end method

.method private final e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lretrofit2/k0$b;

    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final f()Lokhttp3/Interceptor;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableQuic(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableBrotli(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "api3.aoneroom.com"

    const/16 v3, 0x1bb

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "api4.aoneroom.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "api4sg.aoneroom.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "api5.aoneroom.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "api6.aoneroom.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, " api7.aoneroom.com "

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, " api8.aoneroom.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "api6sg.aoneroom.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "api.inmoviebox.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v1

    const-string v2, "test-mse-api.aoneroom.com"

    invoke-virtual {v1, v2, v3, v3}, Lorg/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/CronetEngine$Builder;

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/net/cronet/okhttptransport/a;->i(Lorg/chromium/net/CronetEngine;)Lcom/google/net/cronet/okhttptransport/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/net/cronet/okhttptransport/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static final i()Lzg/c;
    .locals 1

    new-instance v0, Lzg/c;

    invoke-direct {v0}, Lzg/c;-><init>()V

    return-object v0
.end method

.method private final j()Lokhttp3/OkHttpClient;
    .locals 7

    sget-object v0, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v0}, Lpg/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_0
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lah/a;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    const-string v3, "createSSLSocketFactory(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lah/a;

    invoke-direct {v3}, Lah/a;-><init>()V

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    new-instance v3, Lah/a$a;

    invoke-direct {v3}, Lah/a$a;-><init>()V

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x28

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v5, 0x14

    invoke-virtual {v0, v5, v6, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v2, Lyg/a;->a:Lyg/a$a;

    invoke-virtual {v2}, Lyg/a$a;->a()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lxg/c;

    invoke-direct {v2}, Lxg/c;-><init>()V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

    invoke-direct {v2}, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;-><init>()V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lxg/a;

    invoke-direct {v2}, Lxg/a;-><init>()V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    sget-object v0, Lxg/e;->a:Lxg/e;

    invoke-virtual {v0}, Lxg/e;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    :cond_1
    sget-object v0, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v0}, Lpg/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;

    new-instance v2, Lcom/tn/lib/net/interceptor/a;

    invoke-direct {v2}, Lcom/tn/lib/net/interceptor/a;-><init>()V

    invoke-direct {v0, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;-><init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;)V

    sget-object v2, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v2}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->b(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;)V

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_2
    invoke-direct {p0}, Lzg/c;->f()Lokhttp3/Interceptor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_3
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private final k()V
    .locals 3

    sget-object v0, Lqg/a;->a:Lqg/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqg/a;->a(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lqg/a;->b(J)V

    return-void
.end method


# virtual methods
.method public final g()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lzg/c;->b:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lzg/c;->c:Lretrofit2/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lzg/c;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lzg/c;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
