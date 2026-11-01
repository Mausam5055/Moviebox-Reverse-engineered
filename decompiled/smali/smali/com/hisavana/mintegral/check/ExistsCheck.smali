.class public Lcom/hisavana/mintegral/check/ExistsCheck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# static fields
.field public static final MINTEGRAL_TAG:Ljava/lang/String; = "mintegral_log"

.field public static isDebug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAdSource(Ljava/lang/String;Ljava/lang/String;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    .locals 10

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAdSource\uff0cmintegralAppID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cmintegralAppKey\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->getInstance()Lcom/hisavana/mintegral/check/MBridgeSDKManager;

    move-result-object v3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v4

    sget-boolean v7, Lcom/hisavana/mintegral/check/ExistsCheck;->isDebug:Z

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p0

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "sdk_init"

    const-string v1, "ExistsCheck --> Mintegral--> initialize exception"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0

    new-instance p4, Lcom/hisavana/mintegral/executer/MintegralBanner;

    invoke-direct {p4, p1, p2, p3}, Lcom/hisavana/mintegral/executer/MintegralBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-object p4
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 1

    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralInterstitial;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/mintegral/executer/MintegralInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public synthetic getInterstitialRewarded(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hisavana/common/interfacz/a;->a(Lcom/hisavana/common/interfacz/IBaseAdSummary;Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;

    move-result-object p1

    return-object p1
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 1

    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-direct {v0, p1, p2, p3}, Lcom/hisavana/mintegral/executer/MintegralNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-object v0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 1

    new-instance v0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;

    invoke-direct {v0}, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;-><init>()V

    return-object v0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 1

    new-instance v0, Lcom/hisavana/mintegral/bidding/MintegralBidding;

    invoke-direct {v0}, Lcom/hisavana/mintegral/bidding/MintegralBidding;-><init>()V

    return-object v0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 1

    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralSplash;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/mintegral/executer/MintegralSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 1

    new-instance v0, Lcom/hisavana/mintegral/executer/MintegralVideo;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/mintegral/executer/MintegralVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isDebug:Z

    sput-boolean p1, Lcom/hisavana/mintegral/check/ExistsCheck;->isDebug:Z

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "mintegral_log"

    const-string v0, "mintegral initialize exception"

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
