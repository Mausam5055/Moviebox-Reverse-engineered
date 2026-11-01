.class public final Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0019\u0010\n\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\n\u0010\rJ\u0019\u0010\n\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\tJ\u0019\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u0019\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\tJ\u0019\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0010J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\tJ!\u0010\u0008\u001a\u00020\u00072\u0010\u0010\u001c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u001dR\u001d\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;",
        "Lcom/cloud/hisavana/sdk/api/listener/d;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "Lz6/d;",
        "jsAdHolder",
        "<init>",
        "(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V",
        "",
        "onAdLoaded",
        "()V",
        "onAdClosed",
        "Lcom/cloud/hisavana/sdk/api/adx/TBannerView;",
        "banner",
        "(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V",
        "Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;",
        "nativeInfo",
        "(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V",
        "onAdShow",
        "onNativeAdShow",
        "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;",
        "errorCode",
        "onAdShowError",
        "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V",
        "onError",
        "onAdClicked",
        "onNativeAdClick",
        "onTimeOut",
        "",
        "nativeInfos",
        "(Ljava/util/List;)V",
        "a",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "getJsAdHolder",
        "()Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "mediation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "Lz6/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "Lz6/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "jsAdHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    return-void
.end method


# virtual methods
.method public final getJsAdHolder()Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "Lz6/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    return-object v0
.end method

.method public onAdClicked()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed()V

    return-void
.end method

.method public onAdClosed(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    return-void
.end method

.method public onAdClosed(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded()V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded(Ljava/util/List;)V

    const/16 v0, 0x4e21

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :cond_4
    move v7, v0

    move-wide v9, v1

    move-object v11, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v0

    move-wide v9, v1

    move-object v11, v3

    :goto_3
    iget-object v5, p0, Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    return-void
.end method

.method public onAdShow()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShow()V

    return-void
.end method

.method public onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/16 p1, 0x4e21

    goto :goto_0

    :goto_1
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    return-void
.end method

.method public onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public onTimeOut()V
    .locals 7

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onTimeOut()V

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;->a:Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7532

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->handleAdEvent(IIIDLjava/util/List;)V

    return-void
.end method
