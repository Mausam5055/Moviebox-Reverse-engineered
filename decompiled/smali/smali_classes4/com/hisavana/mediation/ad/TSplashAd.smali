.class public Lcom/hisavana/mediation/ad/TSplashAd;
.super Lce/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lce/b;"
    }
.end annotation


# instance fields
.field public A:I
    .annotation build Lcom/hisavana/common/constant/ComConstants$SplashModeIntDef;
    .end annotation
.end field

.field public B:I

.field public C:Ljava/lang/Float;

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:Z

.field public G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

.field public H:Lcom/hisavana/common/interfacz/OnSkipListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lce/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    iput-object p2, p0, Lce/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static hasCache(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdCache;->getAdNum(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placementId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",adNum = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TSplashAd"

    invoke-virtual {v2, v6, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lbe/c;
    .locals 3

    invoke-virtual {p0}, Lce/b;->d()Lbe/i;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    invoke-virtual {v0, v1}, Lbe/i;->A(I)V

    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    invoke-virtual {v0, v1}, Lbe/i;->C(I)V

    new-instance v1, Lbe/s;

    iget-object v2, p0, Lce/b;->h:Lbe/t;

    invoke-direct {v1, p1, v0, v2}, Lbe/s;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;Lbe/t;)V

    return-object v1
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearCurrentAd()V
    .locals 0

    invoke-super {p0}, Lce/b;->clearCurrentAd()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->destroy()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lce/b;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getTopPrice(I)D
    .locals 2

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->getEcpmPrice()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-super {p0, p1}, Lce/b;->getTopPrice(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public loadAd()V
    .locals 4

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lce/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    iget-object v1, p0, Lce/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/hisavana/mediation/ad/TSplashAd;->D:Ljava/lang/String;

    iget-object v3, p0, Lce/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSplashMode(I)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-boolean v1, p0, Lce/b;->q:Z

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setContainVulgarContent(Z)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-object v1, p0, Lce/b;->r:Ljava/lang/String;

    iget-object v2, p0, Lce/b;->s:Ljava/lang/String;

    iget-object v3, p0, Lce/b;->t:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v1}, Lbe/t;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->H:Lcom/hisavana/common/interfacz/OnSkipListener;

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    invoke-virtual {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setDebug(Z)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-virtual {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->loadAd()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lce/b;->loadAd()V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0

    invoke-super {p0}, Lce/b;->pause()V

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-super {p0}, Lce/b;->resume()V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lce/b;->a:Ljava/lang/String;

    return-void
.end method

.method public setLogoLayoutHeightRatio(Ljava/lang/Float;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    :goto_1
    return-void
.end method

.method public setOnShowListener(Lcom/hisavana/common/interfacz/TAdListener;)V
    .locals 1

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbe/t;->h(Lcom/hisavana/common/interfacz/TAdListener;)V

    :cond_0
    return-void
.end method

.method public setOnSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)V
    .locals 1

    iget-object v0, p0, Lce/b;->h:Lbe/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbe/t;->g(Lcom/hisavana/common/interfacz/OnSkipListener;)V

    :cond_0
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->H:Lcom/hisavana/common/interfacz/OnSkipListener;

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setSkipListener(Lcom/hisavana/common/interfacz/OnSkipListener;)Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    :cond_1
    return-void
.end method

.method public setOnlySourceAdx(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->D:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/hisavana/mediation/ad/TSplashAd;->F:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "place use SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_PORTRAIT or SplashAdOrientation.APP_SPLASH_AD_ORIENTATION_LANDSCAPE"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->B:I

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current orientation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TSplashAd"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSplashMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/hisavana/common/constant/ComConstants$SplashModeIntDef;
        .end annotation
    .end param

    iput p1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->A:I

    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;)V
    .locals 2
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/hisavana/mediation/ad/TSplashAd;->showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/hisavana/mediation/ad/TSplashAd;->showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TSplashAd"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "appId is empty"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "you should init first"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->E:Z

    if-eqz v0, :cond_2

    iget-object p3, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    if-eqz p3, :cond_9

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    invoke-virtual {p3, v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->setLogoLayoutHeightRatio(Ljava/lang/Float;)V

    iget-object p3, p0, Lcom/hisavana/mediation/ad/TSplashAd;->G:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-virtual {p3, p1, p2}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->showAd(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lce/b;->n()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAd sceneToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lce/b;->m:Z

    if-eqz v0, :cond_3

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lce/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {p0, p1}, Lce/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_3
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_4

    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_4
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0, v0}, Lce/b;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lce/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {p0, v0}, Lce/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showAd errorCode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lce/b;->g()Lbe/c;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v2, p0, Lce/b;->q:Z

    invoke-virtual {v0, v2}, Lbe/c;->e(Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/hisavana/common/base/BaseSplash;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseSplash;->canShow()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->getAdListener()Lcom/hisavana/common/interfacz/TInnerAdListener;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    const-string v4, "TSplash setAdListener"

    invoke-virtual {v3, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v2, v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    :cond_6
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    iget v2, p0, Lce/b;->mFillSource:I

    const-string v3, "filling_source"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v2, "is_contain_vulgar"

    iget-boolean v3, p0, Lce/b;->q:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TSplashAd;->C:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseSplash;->setLogoLayoutHeightRatio(Ljava/lang/Float;)V

    invoke-virtual {v0, p2}, Lcom/hisavana/common/base/BaseSplash;->addLogoLayout(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lce/b;->setIsShowing(Z)V

    invoke-virtual {p0, p3}, Lce/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p3, p2}, Lcom/hisavana/common/base/BaseSplash;->show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "no ad or ad is expired "

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lce/b;->t()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "show error,splash handler is null"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lce/b;->t()V

    :cond_9
    :goto_0
    return-void
.end method

.method public showAd(Lcom/hisavana/mediation/ad/TSplashView;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/hisavana/mediation/ad/TSplashView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hisavana/mediation/ad/TSplashAd;->showAd(Lcom/hisavana/mediation/ad/TSplashView;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
