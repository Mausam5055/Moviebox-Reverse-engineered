.class public Lcom/hisavana/mintegral/executer/MintegralNative;
.super Lcom/hisavana/common/base/BaseNative;


# instance fields
.field private d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

.field private e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

.field private f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

.field private g:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralNative$1;

    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralNative$1;-><init>(Lcom/hisavana/mintegral/executer/MintegralNative;)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralNative$2;

    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralNative$2;-><init>(Lcom/hisavana/mintegral/executer/MintegralNative;)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/executer/MintegralNative;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return p0
.end method

.method static synthetic b(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic d(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic f(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/hisavana/mintegral/executer/MintegralNative;)Lcom/hisavana/common/bean/AdNativeInfo;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->bidRelease()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mintegral_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getOnMBMediaViewListenerPlus()Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->f:Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    return-object v0
.end method

.method protected initNative()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->getNativeProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_num"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "videoSupport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/mbridge/msdk/out/MBBidNativeHandler;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/mbridge/msdk/out/MBBidNativeHandler;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->e:Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->setAdListener(Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->bidLoad(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Mintegral Ads failed to load ad error with param empty"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method protected onNativeAdStartLoad()V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    iput-object p3, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mbridge/msdk/out/Campaign;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative;->d:Lcom/mbridge/msdk/out/MBBidNativeHandler;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->registerView(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V

    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p3, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "mintegral_log"

    const-string p3, "registerViewForInteraction error"

    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0
    .param p1    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
