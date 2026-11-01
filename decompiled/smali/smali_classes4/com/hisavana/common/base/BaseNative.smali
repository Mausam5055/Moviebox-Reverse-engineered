.class public abstract Lcom/hisavana/common/base/BaseNative;
.super Lcom/hisavana/common/base/BaseAd;

# interfaces
.implements Lcom/hisavana/common/interfacz/IadNative;


# static fields
.field protected static final FILTER_NONE:I = 0x0

.field private static final defaultAdsCount:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mAdt:I

.field protected final mNatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const-string p1, "BaseNative"

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNative;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    iput p3, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return-void
.end method

.method static synthetic access$001(Lcom/hisavana/common/base/BaseNative;Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$101(Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method protected adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    new-instance v0, Lcom/hisavana/common/base/BaseNative$2;

    invoke-direct {v0, p0, p1}, Lcom/hisavana/common/base/BaseNative$2;-><init>(Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public adLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/hisavana/common/base/BaseNative$1;

    invoke-direct {v0, p0, p1}, Lcom/hisavana/common/base/BaseNative$1;-><init>(Lcom/hisavana/common/base/BaseNative;Ljava/util/List;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public destroyAd()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/bean/TAdNativeInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove tAdNativeInfo from mNatives\uff0ccutrrent ad id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdCreateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseNative"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, -0x2710

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseNative;->isNativeBanner()Z

    move-result v0

    const/16 v1, 0x7534

    const/4 v2, 0x0

    const-string v3, "BaseNative"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->isIconValid()Z

    move-result p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ad nativebanner has icon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->isMaterielValid()Z

    move-result p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ad native has meteriel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return v0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract initNative()V
.end method

.method protected isNativeBanner()Z
    .locals 2

    iget v0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOfflineAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 1

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseNative;->initNative()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseNative;->onNativeAdStartLoad()V

    return-void
.end method

.method protected abstract onNativeAdStartLoad()V
.end method

.method public setAdCount(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    :goto_0
    return-void
.end method

.method public setAdmobMediaAspectRatio(I)V
    .locals 0

    return-void
.end method

.method public setChoicesPosition(I)V
    .locals 0

    return-void
.end method

.method protected setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/cloud/sdk/commonutil/R$id;->native_close_view_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/hisavana/common/base/BaseNative$3;

    invoke-direct {v0, p0, p2}, Lcom/hisavana/common/base/BaseNative$3;-><init>(Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRecommendReqInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 0

    return-void
.end method

.method public trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trackRecommendShow(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
