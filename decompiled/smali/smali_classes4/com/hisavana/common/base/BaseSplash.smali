.class public abstract Lcom/hisavana/common/base/BaseSplash;
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
.field logoLayout:Landroid/view/View;

.field protected mLogoLayoutHeightRatio:Ljava/lang/Float;

.field private orientation:I

.field splash:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected splashMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->orientation:I

    return-void
.end method

.method private addLogoLayout(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hisavana/common/base/WrapTadView;",
            "TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    move-result v0

    const-string v1, "BaseSplash"

    const/4 v2, 0x0

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_1
    const v3, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediation sdk addLogoLayout heightRatio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLogoLayout logoHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " screenHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addLogoLayout(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    return-void
.end method

.method public canShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected checkNeedAddLogo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroyAd()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    iput-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    return-void
.end method

.method public getAdType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getLogoHeightDefaultRatio()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getLogoLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->orientation:I

    return v0
.end method

.method protected abstract getSplash()Landroid/view/View;
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

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getSplash()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSplashStartLoad()V

    :cond_0
    return-void
.end method

.method protected onSkipClick()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TInnerAdListener;->onSkipClick()V

    :cond_1
    return-void
.end method

.method protected abstract onSplashShow()V
.end method

.method protected abstract onSplashStartLoad()V
.end method

.method protected onTimeReach()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TInnerAdListener;->onTimeReach()V

    :cond_1
    return-void
.end method

.method public pauseAd()V
    .locals 0

    return-void
.end method

.method public resumeAd()V
    .locals 0

    return-void
.end method

.method public setLogoLayoutHeightRatio(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->orientation:I

    return-void
.end method

.method public setSplashMode(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->checkNeedAddLogo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/hisavana/common/base/BaseSplash;->addLogoLayout(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSplashShow()V

    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Splash is null "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BaseSplash"

    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    :goto_0
    return-void
.end method
