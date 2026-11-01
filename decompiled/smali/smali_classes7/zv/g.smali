.class public abstract Lzv/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lokhttp3/OkHttpClient;

.field public static final d:Lkotlin/Lazy;

.field public static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/transsion/upgradesdk/net/k;->a:Lcom/transsion/upgradesdk/net/k;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lzv/g;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/transsion/upgradesdk/net/j;->a:Lcom/transsion/upgradesdk/net/j;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lzv/g;->b:Lkotlin/Lazy;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lzv/a;

    invoke-direct {v1}, Lzv/a;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lzv/g;->c:Lokhttp3/OkHttpClient;

    sget-object v0, Lcom/transsion/upgradesdk/net/m;->a:Lcom/transsion/upgradesdk/net/m;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lzv/g;->d:Lkotlin/Lazy;

    sget-object v0, Lcom/transsion/upgradesdk/net/l;->a:Lcom/transsion/upgradesdk/net/l;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lzv/g;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static a()Lretrofit2/k0;
    .locals 2

    sget-object v0, Lzv/g;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lretrofit2/k0;

    return-object v0
.end method

.method public static b()Lretrofit2/k0;
    .locals 2

    sget-object v0, Lzv/g;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lretrofit2/k0;

    return-object v0
.end method
