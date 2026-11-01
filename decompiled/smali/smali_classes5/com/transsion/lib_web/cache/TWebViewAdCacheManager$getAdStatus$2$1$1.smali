.class final Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$withTimeoutOrNull:Lkotlinx/coroutines/n0;

.field final synthetic $continuation:Lkotlinx/coroutines/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/n;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlinx/coroutines/n;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2$1$1;->$$this$withTimeoutOrNull:Lkotlinx/coroutines/n0;

    iput-object p2, p0, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2$1$1;->$continuation:Lkotlinx/coroutines/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager;->a()Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2$1$1$a;

    iget-object v2, p0, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2$1$1;->$continuation:Lkotlinx/coroutines/n;

    invoke-direct {v1, v2}, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2$1$1$a;-><init>(Lkotlinx/coroutines/n;)V

    const-string v2, "window.getAdStatus()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/lib_web/cache/TWebViewAdCacheManager$getAdStatus$2$1$1;->$continuation:Lkotlinx/coroutines/n;

    invoke-interface {v0}, Lkotlinx/coroutines/n;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "webview null"

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
