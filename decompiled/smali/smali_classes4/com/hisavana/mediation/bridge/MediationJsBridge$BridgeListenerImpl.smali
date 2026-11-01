.class public final Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/mediation/bridge/listener/BridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/bridge/MediationJsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BridgeListenerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JW\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
        "bridge",
        "<init>",
        "(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V",
        "",
        "callbackId",
        "",
        "eventType",
        "codeSeatId",
        "adType",
        "errorCode",
        "rewardStatus",
        "",
        "price",
        "",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adInfos",
        "",
        "callBackToJs",
        "(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V",
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "jsBannerAdHolder",
        "showBanner",
        "(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V",
        "Ljava/lang/ref/WeakReference;",
        "a",
        "Ljava/lang/ref/WeakReference;",
        "weakBridge",
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


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hisavana/mediation/bridge/MediationJsBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bridge/MediationJsBridge;)V
    .locals 1

    const-string v0, "bridge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public callBackToJs(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIID",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callbackId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeSeatId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/mediation/bridge/MediationJsBridge;

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->access$callBackToJS(Lcom/hisavana/mediation/bridge/MediationJsBridge;Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public showBanner(Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V
    .locals 1

    const-string v0, "jsBannerAdHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/MediationJsBridge$BridgeListenerImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/mediation/bridge/MediationJsBridge;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->access$showBanner(Lcom/hisavana/mediation/bridge/MediationJsBridge;Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;)V

    :cond_0
    return-void
.end method
