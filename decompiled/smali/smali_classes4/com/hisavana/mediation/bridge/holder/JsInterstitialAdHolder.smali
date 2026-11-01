.class public final Lcom/hisavana/mediation/bridge/holder/JsInterstitialAdHolder;
.super Lcom/hisavana/mediation/bridge/holder/JsAdHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
        "Lcom/hisavana/mediation/ad/TInterstitialAd;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsInterstitialAdHolder;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "Lcom/hisavana/mediation/ad/TInterstitialAd;",
        "ad",
        "callbackId",
        "",
        "codeSeatId",
        "adType",
        "",
        "bridgeListener",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "<init>",
        "(Lcom/hisavana/mediation/ad/TInterstitialAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "loadAd",
        "",
        "showAd",
        "hasAd",
        "",
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
.method public constructor <init>(Lcom/hisavana/mediation/ad/TInterstitialAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V
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

    invoke-virtual {p1, p2}, Lce/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    return-void
.end method


# virtual methods
.method public hasAd()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TInterstitialAd;

    invoke-virtual {v0}, Lce/b;->hasAd()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TInterstitialAd;

    invoke-virtual {v0}, Lce/b;->loadAd()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TInterstitialAd;

    invoke-virtual {v0}, Lce/b;->destroy()V

    return-void
.end method

.method public showAd()V
    .locals 2

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/ad/TInterstitialAd;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/ad/TInterstitialAd;->show(Landroid/app/Activity;)V

    return-void
.end method
