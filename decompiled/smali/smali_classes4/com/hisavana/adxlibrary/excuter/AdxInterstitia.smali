.class public Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;
.super Lcom/hisavana/common/base/BaseInterstitial;


# instance fields
.field public a:Lz6/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)Lz6/b;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 5

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lz6/a;->d()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canShow failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdxInterstitia"

    invoke-virtual {v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->canShow()Z

    move-result v0

    return v0
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

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

    const-string v2, "AdxInterstitia"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initInterstitial()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    new-instance v1, Lz6/b;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lz6/b;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La7/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia$a;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-static {}, Lb7/a;->a()Lb7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lb7/a$b;->a()Lb7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz6/a;->r(Lb7/a;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {v1, v0}, Lz6/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz6/a;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isAdxAd()Z
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->e()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEwAd()Z
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->e()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isExpired()Z
    .locals 6

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    const/16 v2, 0x45b

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lz6/a;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExpired failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdxInterstitia"

    invoke-virtual {v3, v4, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1
.end method

.method public isInternalAd()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOfflineAd()Z
    .locals 2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onInterstitialShow(Landroid/app/Activity;)V
    .locals 4

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lz6/a;->h()Lb7/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {p1}, Lz6/a;->h()Lb7/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    invoke-virtual {p1, v0, v1}, Lb7/a;->h(D)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {v0, p1}, Lz6/a;->r(Lb7/a;)V

    :cond_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {p1}, Lz6/b;->t()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "AdxInterstitia"

    const-string v1, "onInterstitialShow ad or listener is null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterstitialStartLoad()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz6/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v0, v1}, Lb7/a;->k(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hisa-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mTriggerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getSupportHisavanaFlag()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lb7/a;->i(Z)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {v1, v0}, Lz6/a;->r(Lb7/a;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    invoke-virtual {v0, v1}, Lz6/a;->m(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lz6/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    invoke-virtual {v0, v1}, Lz6/a;->n(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitia;->a:Lz6/b;

    invoke-virtual {v0}, Lz6/b;->s()V

    :cond_1
    return-void
.end method
