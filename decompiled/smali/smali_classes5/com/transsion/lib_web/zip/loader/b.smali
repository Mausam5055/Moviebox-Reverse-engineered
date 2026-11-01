.class public final Lcom/transsion/lib_web/zip/loader/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/lib_web/zip/loader/b;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/lib_web/zip/loader/b;

    invoke-direct {v0}, Lcom/transsion/lib_web/zip/loader/b;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/zip/loader/b;->a:Lcom/transsion/lib_web/zip/loader/b;

    new-instance v0, Lcom/transsion/lib_web/zip/loader/a;

    invoke-direct {v0}, Lcom/transsion/lib_web/zip/loader/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/zip/loader/b;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-static {}, Lcom/transsion/lib_web/zip/loader/b;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lokhttp3/OkHttpClient;
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/zip/loader/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public final d()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/lib_web/zip/loader/b;->c()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
