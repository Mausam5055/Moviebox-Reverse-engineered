.class public final Lcom/transsion/upgradesdk/net/l;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/transsion/upgradesdk/net/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/upgradesdk/net/l;

    invoke-direct {v0}, Lcom/transsion/upgradesdk/net/l;-><init>()V

    sput-object v0, Lcom/transsion/upgradesdk/net/l;->a:Lcom/transsion/upgradesdk/net/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lretrofit2/k0$b;

    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    sget-object v1, Lzv/g;->b:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-static {}, Lw10/a;->f()Lw10/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    move-result-object v0

    sget-object v1, Lzv/g;->c:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    move-result-object v0

    return-object v0
.end method
