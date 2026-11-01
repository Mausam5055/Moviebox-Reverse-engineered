.class public abstract Lcom/hisavana/common/base/BaseBanner;
.super Lcom/hisavana/common/base/BaseAd;

# interfaces
.implements Lcom/hisavana/common/interfacz/IadView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/hisavana/common/base/BaseAd;",
        "Lcom/hisavana/common/interfacz/IadView;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected isCloseDirectly:Z

.field protected isHideAdCloseView:Z

.field protected mBannerAdMaxHeight:I

.field protected mBannerAdWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const-string p1, "BaseBanner"

    iput-object p1, p0, Lcom/hisavana/common/base/BaseBanner;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_3

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x7533

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const-string v2, "error_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_3

    const-string p1, "null"

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string v1, "error_message"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    const-string v1, "request_num"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner have been Loaded, but refresh banner failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseBanner"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public adLoaded()V
    .locals 3

    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    const-string v2, "request_num"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner have been Loaded, but refresh banner success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public canShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->getBanner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->onBannerDestroy()V

    :cond_1
    return-void
.end method

.method public destroyFoldAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected abstract getBanner()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public isOfflineAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->getBanner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->onBannerLoad()V

    :cond_0
    return-void
.end method

.method protected abstract onBannerDestroy()V
.end method

.method protected abstract onBannerLoad()V
.end method

.method public pauseAd()V
    .locals 0

    return-void
.end method

.method public resumeAd()V
    .locals 0

    return-void
.end method

.method public setBannerAdMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdMaxHeight:I

    return-void
.end method

.method public setBannerAdWidth(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseBanner;->isCloseDirectly:Z

    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseBanner;->isHideAdCloseView:Z

    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->getBanner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/WrapTadView;->onAddView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->showBanner()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "banner is null "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BaseBanner"

    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract showBanner()V
.end method
