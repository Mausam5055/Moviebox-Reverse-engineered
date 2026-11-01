.class public final Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/ui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->onDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $deeplinkUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->$deeplinkUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeeplinkClick(Z)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Lcom/vungle/ads/LinkError;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->DEEPLINK_OPEN_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->$deeplinkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/LinkError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getLogEntry(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/util/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getAdvertisement$p(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "deeplink.click"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls$default(Lcom/vungle/ads/internal/model/AdPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/vungle/ads/internal/network/f$a;

    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    const-string v2, "deeplink.click"

    invoke-virtual {v3, v2}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v2

    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getLogEntry(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/util/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    move-result-object v2

    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getTpatSender(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/network/h;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v3, v2, v4, v5, v0}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method
