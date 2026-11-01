.class public Lcom/hisavana/mintegral/executer/MintegralSplash;
.super Lcom/hisavana/common/base/BaseSplash;


# instance fields
.field private d:Lcom/mbridge/msdk/out/MBSplashHandler;

.field private e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

.field private f:Lcom/mbridge/msdk/out/MBSplashShowListener;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralSplash$1;

    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralSplash$1;-><init>(Lcom/hisavana/mintegral/executer/MintegralSplash;)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

    new-instance p1, Lcom/hisavana/mintegral/executer/MintegralSplash$2;

    invoke-direct {p1, p0}, Lcom/hisavana/mintegral/executer/MintegralSplash$2;-><init>(Lcom/hisavana/mintegral/executer/MintegralSplash;)V

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->f:Lcom/mbridge/msdk/out/MBSplashShowListener;

    return-void
.end method

.method static synthetic a(Lcom/hisavana/mintegral/executer/MintegralSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSkipClick()V

    return-void
.end method

.method static synthetic b(Lcom/hisavana/mintegral/executer/MintegralSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic c(Lcom/hisavana/mintegral/executer/MintegralSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    return-void
.end method

.method static synthetic d(Lcom/hisavana/mintegral/executer/MintegralSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic e(Lcom/hisavana/mintegral/executer/MintegralSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method


# virtual methods
.method public addLogoLayout(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getLogoHeightDefaultRatio()F

    move-result v1

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediation sdk mintegral addLogoLayout heightRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mintegral_log"

    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->setLogoView(Landroid/view/View;II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->onDestroy()V

    :cond_0
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

.method protected getSplash()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "mintegral_log"

    const-string v2, "onSplashLoad"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSplashShow()V
    .locals 0

    return-void
.end method

.method protected onSplashStartLoad()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->f:Lcom/mbridge/msdk/out/MBSplashShowListener;

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
    new-instance v0, Lcom/mbridge/msdk/out/MBSplashHandler;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->e:Lcom/mbridge/msdk/out/MBSplashLoadListener;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setSplashLoadListener(Lcom/mbridge/msdk/out/MBSplashLoadListener;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    iget-object v1, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->f:Lcom/mbridge/msdk/out/MBSplashShowListener;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setSplashShowListener(Lcom/mbridge/msdk/out/MBSplashShowListener;)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->setOrientation(I)V

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/out/MBSplashHandler;->preLoadByToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    return-void

    :cond_2
    :goto_1
    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Mintegral Ads failed to load ad error with param empty"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public pauseAd()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->onPause()V

    :cond_0
    return-void
.end method

.method public resumeAd()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->onResume()V

    :cond_0
    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    const-string p3, "mintegral_log"

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->isReady(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getLogoLayout()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/mintegral/executer/MintegralSplash;->addLogoLayout(Landroid/view/View;)V

    iget-object p2, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->d:Lcom/mbridge/msdk/out/MBSplashHandler;

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralSplash;->g:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/out/MBSplashHandler;->show(Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "show"

    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hisavana/common/bean/TAdErrorCode;

    const p2, 0xc351

    const-string v0, "Mintegral Ads failed to load ad with error message: mbSplashHandler is null"

    invoke-direct {p1, p2, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "onAdShowError"

    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
