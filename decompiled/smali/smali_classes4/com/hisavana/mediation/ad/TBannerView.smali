.class public Lcom/hisavana/mediation/ad/TBannerView;
.super Lcom/hisavana/common/base/WrapTadView;


# instance fields
.field public a:Lcom/hisavana/mediation/ad/TBannerAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hisavana/mediation/ad/TBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/hisavana/mediation/ad/TBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/WrapTadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    new-instance p2, Lcom/hisavana/mediation/ad/TBannerAd;

    invoke-direct {p2, p1, p0}, Lcom/hisavana/mediation/ad/TBannerAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/base/WrapTadView;)V

    iput-object p2, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TBannerAd;->destroy()V

    :cond_0
    return-void
.end method

.method public enterScene(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/mediation/ad/TBannerAd;->enterScene(Ljava/lang/String;I)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getTopPrice(I)D
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lce/b;->getTopPrice(I)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public loadAd()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->loadAd()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->resume()V

    :cond_0
    return-void
.end method

.method public setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lce/b;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setAdSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->c(I)V

    :cond_0
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setAdUnitId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBannerType(I)V
    .locals 3

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setBannerType(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBannerType --> invalid banner type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TBannerView"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setCloseDirectlyWithoutJumping(Z)V

    :cond_0
    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lce/b;->setContainVulgarContent(Z)V

    :cond_0
    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lce/b;->setCurrActivityFullscreen(Z)V

    :cond_0
    return-void
.end method

.method public setCustomSizeForYandexAndLiftoff(II)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->e(I)V

    iget-object p1, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    invoke-virtual {p1, p2}, Lcom/hisavana/mediation/ad/TBannerAd;->d(I)V

    :cond_0
    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/mediation/ad/TBannerAd;->setHideAdCloseView(Z)V

    :cond_0
    return-void
.end method

.method public setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerView;->a:Lcom/hisavana/mediation/ad/TBannerAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lce/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    :cond_0
    return-void
.end method
