.class public final Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JO\u0010\u000f\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0001\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u001b\u001a\n \u0018*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;",
        "",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "bridgeListener",
        "<init>",
        "(Lcom/hisavana/mediation/bridge/listener/BridgeListener;)V",
        "",
        "callbackId",
        "codeSeatId",
        "",
        "adType",
        "extInfo",
        "adCount",
        "bannerWidth",
        "Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "createAdHolder",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;",
        "",
        "release",
        "()V",
        "a",
        "Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "getBridgeListener",
        "()Lcom/hisavana/mediation/bridge/listener/BridgeListener;",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "c",
        "Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;",
        "jsBannerAdHolder",
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
.field public final a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

.field public final b:Ljava/lang/String;

.field public c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bridge/listener/BridgeListener;)V
    .locals 1

    const-string v0, "bridgeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    const-class p1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic createAdHolder$default(Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 p6, 0x0

    :cond_2
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->createAdHolder(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createAdHolder(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lcom/hisavana/mediation/bridge/holder/JsAdHolder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II)",
            "Lcom/hisavana/mediation/bridge/holder/JsAdHolder<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v0, p4

    const-string v2, "callbackId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "codeSeatId"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v3, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler$createAdHolder$1$map$1;

    invoke-direct {v3}, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler$createAdHolder$1$map$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "fromJson(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Map;

    const-string v3, "gameName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :cond_0
    :goto_0
    move-object v3, v2

    :cond_1
    :try_start_1
    const-string v7, "gameScene"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v7

    iget-object v8, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createAdHolder error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_3
    const/4 v3, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v8, :cond_c

    const/4 v10, 0x2

    if-eq v6, v10, :cond_7

    const/4 v10, 0x3

    if-eq v6, v10, :cond_6

    const/4 v10, 0x5

    if-eq v6, v10, :cond_5

    if-eq v6, v7, :cond_c

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v2, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->b:Ljava/lang/String;

    const-string v3, "Splash Ad is not supported in Mediation SDK"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_5
    new-instance v3, Lcom/hisavana/mediation/ad/TRewardedAd;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7, p2}, Lcom/hisavana/mediation/ad/TRewardedAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0, v9}, Lce/b;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;

    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsRewardAdHolder;-><init>(Lcom/hisavana/mediation/ad/TRewardedAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    return-object v0

    :cond_6
    new-instance v3, Lcom/hisavana/mediation/ad/TInterstitialAd;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7, p2}, Lcom/hisavana/mediation/ad/TInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0, v9}, Lce/b;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsInterstitialAdHolder;

    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsInterstitialAdHolder;-><init>(Lcom/hisavana/mediation/ad/TInterstitialAd;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    return-object v0

    :cond_7
    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->isRelease()Z

    move-result v7

    if-ne v7, v8, :cond_8

    iput-object v9, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    :cond_8
    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    if-nez v7, :cond_9

    new-instance v7, Lcom/hisavana/mediation/ad/TBannerView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/hisavana/mediation/ad/TBannerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p2}, Lcom/hisavana/mediation/ad/TBannerView;->setAdUnitId(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/hisavana/mediation/ad/TBannerView;->setAdSize(I)V

    const/16 v3, 0x32

    move/from16 v8, p6

    invoke-virtual {v7, v8, v3}, Lcom/hisavana/mediation/ad/TBannerView;->setCustomSizeForYandexAndLiftoff(II)V

    invoke-virtual {v7, v2, v0, v9}, Lcom/hisavana/mediation/ad/TBannerView;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    iget-object v8, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    move-object v2, v0

    move-object v3, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;-><init>(Lcom/hisavana/mediation/ad/TBannerView;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    iput-object v0, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    goto :goto_4

    :cond_9
    invoke-virtual {v7, p1}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->setCallbackId(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/mediation/ad/TBannerView;

    if-eqz v3, :cond_a

    invoke-virtual {v3, p2}, Lcom/hisavana/mediation/ad/TBannerView;->setAdUnitId(Ljava/lang/String;)V

    :cond_a
    iget-object v3, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/hisavana/mediation/bridge/holder/JsAdHolder;->getAd()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/mediation/ad/TBannerView;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2, v0, v9}, Lcom/hisavana/mediation/ad/TBannerView;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_b
    :goto_4
    iget-object v0, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    return-object v0

    :cond_c
    new-instance v10, Lz6/d;

    invoke-direct {v10, p2}, Lz6/d;-><init>(Ljava/lang/String;)V

    if-ne v6, v7, :cond_d

    move v3, v8

    :cond_d
    invoke-virtual {v10, v3}, Lz6/d;->B(Z)V

    move/from16 v3, p5

    invoke-virtual {v10, v3}, Lz6/d;->A(I)V

    invoke-virtual {v10, v2, v0, v9}, Lz6/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;

    iget-object v7, v1, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    move-object v2, v0

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/hisavana/mediation/bridge/holder/JsNativeAdHolder;-><init>(Lz6/d;Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/listener/BridgeListener;)V

    return-object v0
.end method

.method public final getBridgeListener()Lcom/hisavana/mediation/bridge/listener/BridgeListener;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->a:Lcom/hisavana/mediation/bridge/listener/BridgeListener;

    return-object v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/bridge/holder/JsAdHolderHandler;->c:Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/mediation/bridge/holder/JsBannerAdHolder;->release()V

    :cond_0
    return-void
.end method
