.class public Lcom/hisavana/pangle/executer/PangleNative;
.super Lcom/hisavana/common/base/BaseNative;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

.field private e:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

.field private f:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

.field private g:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    new-instance p1, Lcom/hisavana/pangle/executer/PangleNative$1;

    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleNative$1;-><init>(Lcom/hisavana/pangle/executer/PangleNative;)V

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative;->d:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    new-instance p1, Lcom/hisavana/pangle/executer/PangleNative$2;

    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleNative$2;-><init>(Lcom/hisavana/pangle/executer/PangleNative;)V

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative;->e:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleNative;->f:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    return-object p0
.end method

.method static synthetic c(Lcom/hisavana/pangle/executer/PangleNative;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleNative;->f:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    return-object p1
.end method

.method static synthetic d(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic e(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic f(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic g(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic h(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic i(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleNative;->d:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    return-object p0
.end method

.method static synthetic j(Lcom/hisavana/pangle/executer/PangleNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic k(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic l(Lcom/hisavana/pangle/executer/PangleNative;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return p0
.end method

.method static synthetic m(Lcom/hisavana/pangle/executer/PangleNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n(Lcom/hisavana/pangle/executer/PangleNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method static synthetic o(Lcom/hisavana/pangle/executer/PangleNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p(Lcom/hisavana/pangle/executer/PangleNative;)Lcom/hisavana/common/bean/AdNativeInfo;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    return-object p0
.end method

.method static synthetic q(Lcom/hisavana/pangle/executer/PangleNative;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative;->f:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative;->d:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative;->e:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    iput-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

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

    const-string v2, "pangle_log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initNative()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Pangle Ads failed to load ad error with mNetwork == null"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hisavana/pangle/executer/PangleNative$3;

    invoke-direct {v1, p0}, Lcom/hisavana/pangle/executer/PangleNative$3;-><init>(Lcom/hisavana/pangle/executer/PangleNative;)V

    invoke-static {v0, v1}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    return-void
.end method

.method protected onNativeAdStartLoad()V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 6
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

    iput-object p3, p0, Lcom/hisavana/pangle/executer/PangleNative;->g:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/widget/ImageView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/hisavana/pangle/executer/PangleNative;->e:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleNative;->f:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    if-eqz v0, :cond_2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdInteractionListener;)V

    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    :cond_2
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
