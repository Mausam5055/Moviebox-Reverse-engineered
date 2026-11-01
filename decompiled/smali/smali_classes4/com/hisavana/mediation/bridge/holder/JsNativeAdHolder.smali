.class public final Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;
.super Lcom/hisavana/mediation/bridge/holder/JsAdHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
        "Lz6/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "Lz6/d;",
        "ad",
        "",
        "callbackId",
        "codeSeatId",
        "",
        "adType",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "bridgeListener",
        "<init>",
        "(Lz6/d;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "",
        "loadAd",
        "()V",
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
.method public constructor <init>(Lz6/d;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V
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

    new-instance p2, Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;

    invoke-direct {p2, p0}, Lcom/hisavana/mediation/bridge/listener/BridgeSspAdListener;-><init>(Lcom/hisavana/mediation/bridge/holder/JsAdHolder;)V

    invoke-virtual {p1, p2}, Lz6/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz6/d;

    invoke-virtual {v0}, Lz6/d;->w()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->release()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz6/d;

    invoke-virtual {v0}, Lz6/a;->c()V

    return-void
.end method

.method public showAd()V
    .locals 0

    return-void
.end method
