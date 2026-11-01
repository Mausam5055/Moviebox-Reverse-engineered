.class public final Lyq/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lyq/f;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyq/f;

    invoke-direct {v0}, Lyq/f;-><init>()V

    sput-object v0, Lyq/f;->a:Lyq/f;

    new-instance v0, Lyq/c;

    invoke-direct {v0}, Lyq/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lyq/f;->b:Lkotlin/Lazy;

    new-instance v0, Lyq/d;

    invoke-direct {v0}, Lyq/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lyq/f;->c:Lkotlin/Lazy;

    new-instance v0, Lyq/e;

    invoke-direct {v0}, Lyq/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lyq/f;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-static {}, Lyq/f;->j()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lyq/a;
    .locals 1

    invoke-static {}, Lyq/f;->d()Lyq/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lretrofit2/k0;
    .locals 1

    invoke-static {}, Lyq/f;->k()Lretrofit2/k0;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Lyq/a;
    .locals 2

    sget-object v0, Lyq/f;->a:Lyq/f;

    invoke-direct {v0}, Lyq/f;->h()Lretrofit2/k0;

    move-result-object v0

    const-class v1, Lyq/a;

    invoke-virtual {v0, v1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyq/a;

    return-object v0
.end method

.method private final e()Lyq/a;
    .locals 2

    sget-object v0, Lyq/f;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lyq/a;

    return-object v0
.end method

.method private final g()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lyq/f;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final h()Lretrofit2/k0;
    .locals 2

    sget-object v0, Lyq/f;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lretrofit2/k0;

    return-object v0
.end method

.method private final i()Lokhttp3/OkHttpClient;
    .locals 8

    sget-object v0, Lpg/a;->a:Lpg/a$a;

    invoke-virtual {v0}, Lpg/a$a;->c()Z

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

    const-wide/16 v6, 0x14

    invoke-virtual {v1, v6, v7, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lpg/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;

    new-instance v1, Lcom/tn/lib/net/interceptor/a;

    invoke-direct {v1}, Lcom/tn/lib/net/interceptor/a;-><init>()V

    invoke-direct {v0, v1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;-><init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;)V

    sget-object v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->b(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;)V

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static final j()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lyq/f;->a:Lyq/f;

    invoke-direct {v0}, Lyq/f;->i()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static final k()Lretrofit2/k0;
    .locals 2

    new-instance v0, Lretrofit2/k0$b;

    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    const-string v1, "https://www.google.com/"

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    move-result-object v0

    sget-object v1, Lyq/f;->a:Lyq/f;

    invoke-direct {v1}, Lyq/f;->g()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-static {}, Lug/a;->f()Lug/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-static {}, Lv10/g;->d()Lv10/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->a(Lretrofit2/e$a;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 6

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyq/h;->a:Lyq/h;

    invoke-virtual {v0}, Lyq/h;->c()Lcom/transsion/search/net/GoogleSuggestConfig;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "hl"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    invoke-virtual {v0}, Lyq/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "q"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/collections/MapsKt;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    :cond_3
    invoke-direct {p0}, Lyq/f;->e()Lyq/a;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lyq/a;->a(Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method
