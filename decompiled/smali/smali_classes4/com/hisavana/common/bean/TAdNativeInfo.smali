.class public abstract Lcom/hisavana/common/bean/TAdNativeInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/interfacz/ICacheAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/common/bean/TAdNativeInfo$Image;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdCallToAction()Ljava/lang/String;
.end method

.method public abstract getAdCreateId()Ljava/lang/String;
.end method

.method public abstract getAdData()Ljava/lang/String;
.end method

.method public abstract getAdFormat()I
.end method

.method public abstract getAdId()Ljava/lang/String;
.end method

.method public abstract getAppInfo()Ljava/lang/String;
.end method

.method public abstract getBrand()Ljava/lang/String;
.end method

.method public abstract getDeepLink()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescription2()Ljava/lang/String;
.end method

.method public abstract getDisplay()Ljava/lang/String;
.end method

.method public synthetic getExpireReason()I
    .locals 1

    invoke-static {p0}, Lcom/hisavana/common/interfacz/b;->a(Lcom/hisavana/common/interfacz/ICacheAd;)I

    move-result v0

    return v0
.end method

.method public abstract getFillSource()I
.end method

.method public abstract getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;
.end method

.method public abstract getIconDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hisavana/common/bean/TAdNativeInfo$Image;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxPrice()D
.end method

.method public abstract getMime()I
.end method

.method public abstract getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPkgs()Ljava/lang/String;
.end method

.method public abstract getPlacementId()Ljava/lang/String;
.end method

.method public abstract getPullNewestLive()I
.end method

.method public abstract getRating()Ljava/lang/String;
.end method

.method public abstract getRecommendInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSaleprice()Ljava/lang/String;
.end method

.method public abstract getSceneId()Ljava/lang/String;
.end method

.method public abstract getSceneToken()Ljava/lang/String;
.end method

.method public abstract getShowId()Ljava/lang/String;
.end method

.method public abstract getSocialContext()Ljava/lang/String;
.end method

.method public abstract getSourceSize()Ljava/lang/String;
.end method

.method public abstract getSponsoredTranslation()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTriggerId()Ljava/lang/String;
.end method

.method public abstract getTriggerTs()Ljava/lang/Long;
.end method

.method public abstract getTtl()I
.end method

.method public abstract isFromLocal()Z
.end method

.method public abstract isIconAd()Z
.end method

.method public abstract isIconValid()Z
.end method

.method public abstract isImageValid()Z
.end method

.method public abstract isMaterielValid()Z
.end method

.method public abstract isRelease()Z
.end method

.method public abstract isUseRecommend()Z
.end method

.method public abstract registerView(Landroid/view/ViewGroup;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public synthetic setExpireReason(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hisavana/common/interfacz/b;->b(Lcom/hisavana/common/interfacz/ICacheAd;I)V

    return-void
.end method

.method public abstract setFillSource(I)V
.end method

.method public abstract setIconDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V
.end method

.method public abstract setSceneId(Ljava/lang/String;)V
.end method

.method public abstract setSceneToken(Ljava/lang/String;)V
.end method

.method public abstract setShowId(Ljava/lang/String;)V
.end method

.method public abstract setTriggerId(Ljava/lang/String;)V
.end method

.method public abstract setTriggerTs(Ljava/lang/Long;)V
.end method

.method public abstract unregisterView()V
.end method
