.class public final Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;
.super Lcom/hisavana/mediation/bridge/holder/JsAdHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
        "Lcom/hisavana/mediation/ad/TBannerView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "Lcom/hisavana/mediation/ad/TBannerView;",
        "ad",
        "callbackId",
        "",
        "codeSeatId",
        "adType",
        "",
        "bridgeListener",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "<init>",
        "(Lcom/hisavana/mediation/ad/TBannerView;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "loadAd",
        "",
        "showAd",
        "release",
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


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/ad/TBannerView;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridgeListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->a()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hisavana/mediation/ad/TBannerView;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerView;->loadAd()V

    return-void
.end method

.method public release()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerView;->destroy()V

    return-void
.end method

.method public showAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TBannerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getBridgeListener()Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hisavana/mediation/bridge/listener/BridgeListener;->showBanner(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V

    return-void
.end method
