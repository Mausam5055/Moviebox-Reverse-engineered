.class public final Lcom/transsion/mpush/core/trigger/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lkotlin/jvm/functions/Function0;

.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/transsion/mpush/core/trigger/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNetworkAvailable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mpush/core/trigger/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/mpush/core/trigger/b;->b:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/transsion/mpush/core/trigger/a;

    invoke-direct {p1, p0}, Lcom/transsion/mpush/core/trigger/a;-><init>(Lcom/transsion/mpush/core/trigger/b;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/mpush/core/trigger/b;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/mpush/core/trigger/b$a;

    invoke-direct {p1, p0}, Lcom/transsion/mpush/core/trigger/b$a;-><init>(Lcom/transsion/mpush/core/trigger/b;)V

    iput-object p1, p0, Lcom/transsion/mpush/core/trigger/b;->d:Lcom/transsion/mpush/core/trigger/b$a;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/mpush/core/trigger/b;)Landroid/net/ConnectivityManager;
    .locals 0

    invoke-static {p0}, Lcom/transsion/mpush/core/trigger/b;->c(Lcom/transsion/mpush/core/trigger/b;)Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/mpush/core/trigger/b;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mpush/core/trigger/b;->b:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method private static final c(Lcom/transsion/mpush/core/trigger/b;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object p0, p0, Lcom/transsion/mpush/core/trigger/b;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private final d()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/mpush/core/trigger/b;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/mpush/core/trigger/b;->d()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/mpush/core/trigger/b;->d:Lcom/transsion/mpush/core/trigger/b$a;

    invoke-static {v0, v1}, Lf2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/mpush/core/trigger/b;->d()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/mpush/core/trigger/b;->d:Lcom/transsion/mpush/core/trigger/b$a;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
