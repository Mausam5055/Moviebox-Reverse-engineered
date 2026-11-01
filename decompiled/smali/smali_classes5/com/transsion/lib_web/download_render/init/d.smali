.class public final Lcom/transsion/lib_web/download_render/init/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/lib_web/download_render/init/c;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/init/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public invoke()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/init/d;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    sget-object v1, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v1}, Lnh/l$a;->a()Lnh/l;

    move-result-object v1

    invoke-static {v0, v1}, Lf2/b;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    sget-object v2, Lnh/l;->g:Lnh/l$a;

    invoke-virtual {v2}, Lnh/l$a;->a()Lnh/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/d;->a:Lcom/transsion/lib_web/download_render/utils/d;

    invoke-virtual {v0}, Lcom/transsion/lib_web/download_render/utils/d;->d()V

    sget-object v0, Lom/e;->a:Lom/e;

    invoke-virtual {v0}, Lom/e;->d()V

    return-void
.end method
