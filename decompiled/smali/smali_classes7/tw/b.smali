.class public final Ltw/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/b$a;
    }
.end annotation


# static fields
.field public static final c:Ltw/b$a;

.field private static final d:Lkotlin/Lazy;


# instance fields
.field private a:Lokhttp3/OkHttpClient;

.field private b:Lretrofit2/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltw/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltw/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltw/b;->c:Ltw/b$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Ltw/a;

    invoke-direct {v1}, Ltw/a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltw/b;->d:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->h()V

    invoke-direct {p0}, Ltw/b;->g()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Ltw/b;->a:Lokhttp3/OkHttpClient;

    new-instance v0, Lretrofit2/k0$b;

    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    invoke-direct {p0}, Ltw/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    move-result-object v0

    iget-object v1, p0, Ltw/b;->a:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-static {}, Lug/a;->f()Lug/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    move-result-object v0

    sget-object v1, Lcom/tn/lib/thread/c;->f:Lcom/tn/lib/thread/c$a;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/tn/lib/thread/c$a;->a(I)Leh/a;

    move-result-object v1

    const-string v2, "one_room_net_thread"

    invoke-virtual {v1, v2}, Leh/a;->b(Ljava/lang/String;)Leh/a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Leh/a;->c(I)Leh/a;

    move-result-object v1

    invoke-virtual {v1}, Leh/a;->a()Lcom/tn/lib/thread/c;

    move-result-object v1

    invoke-static {v1}, Lqz/a;->a(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-static {v1}, Lv10/g;->e(Lio/reactivex/rxjava3/core/Scheduler;)Lv10/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->a(Lretrofit2/e$a;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    move-result-object v0

    iput-object v0, p0, Ltw/b;->b:Lretrofit2/k0;

    return-void
.end method

.method public static synthetic a()Ltw/b;
    .locals 1

    invoke-static {}, Ltw/b;->f()Ltw/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Ltw/b;->d:Lkotlin/Lazy;

    return-object v0
.end method

.method private final c(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lretrofit2/k0$b;

    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v0}, Lpg/a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://test.paynicorn.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://api.paynicorn.com"

    :goto_0
    return-object v0
.end method

.method private static final f()Ltw/b;
    .locals 1

    new-instance v0, Ltw/b;

    invoke-direct {v0}, Ltw/b;-><init>()V

    return-object v0
.end method

.method private final g()Lokhttp3/OkHttpClient;
    .locals 6

    new-instance v0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;

    new-instance v1, Lcom/tn/lib/net/interceptor/a;

    invoke-direct {v1}, Lcom/tn/lib/net/interceptor/a;-><init>()V

    invoke-direct {v0, v1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;-><init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;)V

    sget-object v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->b(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;)V

    sget-object v1, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v1}, Lpg/a$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_0
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lah/a;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    const-string v4, "createSSLSocketFactory(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lah/a;

    invoke-direct {v4}, Lah/a;-><init>()V

    invoke-virtual {v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lah/a$a;

    invoke-direct {v4}, Lah/a$a;-><init>()V

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v3, Lyg/a;->a:Lyg/a$a;

    invoke-virtual {v3}, Lyg/a$a;->a()Lokhttp3/Interceptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v3, Lxg/a;

    invoke-direct {v3}, Lxg/a;-><init>()V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lxg/e;->a:Lxg/e;

    invoke-virtual {v1}, Lxg/e;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private final h()V
    .locals 3

    sget-object v0, Lqg/a;->a:Lqg/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqg/a;->a(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lqg/a;->b(J)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltw/b;->b:Lretrofit2/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ltw/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Ltw/b;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
