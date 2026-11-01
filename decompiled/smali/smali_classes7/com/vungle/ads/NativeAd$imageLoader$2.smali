.class final Lcom/vungle/ads/NativeAd$imageLoader$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/util/k;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/vungle/ads/internal/util/k;",
        "invoke",
        "()Lcom/vungle/ads/internal/util/k;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/NativeAd$imageLoader$2;->this$0:Lcom/vungle/ads/NativeAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vungle/ads/internal/util/k;
    .locals 2

    sget-object v0, Lcom/vungle/ads/internal/util/k;->Companion:Lcom/vungle/ads/internal/util/k$a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/k$a;->getInstance()Lcom/vungle/ads/internal/util/k;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$imageLoader$2;->this$0:Lcom/vungle/ads/NativeAd;

    invoke-static {v1}, Lcom/vungle/ads/NativeAd;->access$getExecutors(Lcom/vungle/ads/NativeAd;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/vungle/ads/internal/executor/a;->getIoExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/k;->init(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$imageLoader$2;->invoke()Lcom/vungle/ads/internal/util/k;

    move-result-object v0

    return-object v0
.end method
