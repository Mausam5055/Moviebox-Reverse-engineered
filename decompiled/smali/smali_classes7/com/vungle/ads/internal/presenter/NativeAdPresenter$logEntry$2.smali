.class final Lcom/vungle/ads/internal/presenter/NativeAdPresenter$logEntry$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/presenter/NativeAdPresenter;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/k;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/platform/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/util/n;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/vungle/ads/internal/util/n;",
        "invoke",
        "()Lcom/vungle/ads/internal/util/n;",
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
.field final synthetic this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$logEntry$2;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vungle/ads/internal/util/n;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$logEntry$2;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getAdvertisement$p(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$logEntry$2;->invoke()Lcom/vungle/ads/internal/util/n;

    move-result-object v0

    return-object v0
.end method
