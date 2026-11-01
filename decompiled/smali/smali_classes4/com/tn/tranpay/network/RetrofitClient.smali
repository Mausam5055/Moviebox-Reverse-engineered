.class public final Lcom/tn/tranpay/network/RetrofitClient;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/network/RetrofitClient;

.field private static b:Ljava/lang/String;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/network/RetrofitClient;

    invoke-direct {v0}, Lcom/tn/tranpay/network/RetrofitClient;-><init>()V

    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->a:Lcom/tn/tranpay/network/RetrofitClient;

    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://api.paynicorn.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://test.paynicorn.com/"

    :goto_0
    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->b:Ljava/lang/String;

    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient$okHttpClient$2;->INSTANCE:Lcom/tn/tranpay/network/RetrofitClient$okHttpClient$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->c:Lkotlin/Lazy;

    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;->INSTANCE:Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->d:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Lcom/tn/tranpay/network/RetrofitClient;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/network/RetrofitClient;->c()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method private final c()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public final d()Lretrofit2/k0;
    .locals 2

    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-retrofit>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lretrofit2/k0;

    return-object v0
.end method
