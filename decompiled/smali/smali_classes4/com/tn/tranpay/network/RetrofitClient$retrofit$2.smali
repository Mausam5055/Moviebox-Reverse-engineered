.class final Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/tranpay/network/RetrofitClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lretrofit2/k0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lretrofit2/k0;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()Lretrofit2/k0;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;

    invoke-direct {v0}, Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;-><init>()V

    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;->INSTANCE:Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;->invoke()Lretrofit2/k0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lretrofit2/k0;
    .locals 2

    new-instance v0, Lretrofit2/k0$b;

    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    invoke-static {}, Lcom/tn/tranpay/network/RetrofitClient;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    move-result-object v0

    sget-object v1, Lcom/tn/tranpay/network/RetrofitClient;->a:Lcom/tn/tranpay/network/RetrofitClient;

    invoke-static {v1}, Lcom/tn/tranpay/network/RetrofitClient;->b(Lcom/tn/tranpay/network/RetrofitClient;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-static {}, Lw10/a;->f()Lw10/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    move-result-object v0

    return-object v0
.end method
