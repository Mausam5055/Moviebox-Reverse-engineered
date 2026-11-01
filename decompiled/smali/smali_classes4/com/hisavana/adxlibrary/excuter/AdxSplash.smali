.class public Lcom/hisavana/adxlibrary/excuter/AdxSplash;
.super Lcom/hisavana/common/base/BaseSplash;


# instance fields
.field public a:Lz6/f;

.field public b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lz6/f;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSkipClick()V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSkipClick()V

    return-void
.end method

.method public static synthetic f(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    return-void
.end method

.method public static synthetic g(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    return-object p0
.end method

.method public static synthetic h(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-nez v0, :cond_0

    new-instance v0, Lz6/f;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lz6/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La7/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-static {}, Lb7/a;->a()Lb7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lb7/a$b;->a()Lb7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz6/a;->r(Lb7/a;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {v1, v0}, Lz6/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    new-instance v1, Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;

    invoke-direct {v1, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$b;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    invoke-virtual {v0, v1}, Lz6/f;->x(Lcom/cloud/hisavana/sdk/api/listener/g;)V

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La7/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$c;

    invoke-direct {v0, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$c;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-static {}, Lb7/a;->a()Lb7/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lb7/a$b;->a()Lb7/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Lb7/a;)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setListener(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hisavana/adxlibrary/excuter/AdxSplash$d;

    invoke-direct {v1, p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash$d;-><init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->setSkipListener(Lcom/cloud/hisavana/sdk/api/listener/g;)V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    return-object v0
.end method

.method public canShow()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lz6/a;->d()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdReadyStatusWithoutTracking()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->canShow()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canShow failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AdxSplash"

    invoke-virtual {v2, v3, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public checkNeedAddLogo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/f;->c()V

    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->destroy()V

    iput-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    :cond_1
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

    const-string v2, "AdxSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSplash()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isAdxAd()Z
    .locals 4

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->e()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public isEwAd()Z
    .locals 3

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->e()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdSource()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
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
    const/16 v0, 0x45b

    :try_start_0
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lz6/a;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getAdReadyStatusWithoutTracking()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExpired failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdxSplash"

    invoke-virtual {v3, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    return v1
.end method

.method public isInternalAd()Z
    .locals 3

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isDefaultAd()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isMatchVulgarBrand()Z
    .locals 3

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->isMatchVulgarBrand()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isOfflineAd()Z
    .locals 3

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->g()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getFillAdType()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public onSplashShow()V
    .locals 6

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-string v4, "show splash failed"

    const-string v5, "AdxSplash"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    invoke-virtual {v0, v1, v2}, Lb7/a;->h(D)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {v1, v0}, Lz6/a;->r(Lb7/a;)V

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lz6/f;->w(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getLogoLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz6/f;->v(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {v0}, Lz6/f;->y()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-wide v4, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/hisavana/common/base/BaseAd;->secondPrice:D

    invoke-virtual {v0, v1, v2}, Lb7/a;->h(D)V

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Lb7/a;)V

    :cond_4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->show()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onSplashStartLoad()V
    .locals 4

    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    const/4 v1, 0x1

    const-string v2, "hisa-"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {v0}, Lz6/a;->h()Lb7/a;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v0, v1}, Lb7/a;->k(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {v1, v0}, Lz6/a;->r(Lb7/a;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    invoke-virtual {v0, v1}, Lz6/a;->m(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lz6/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    invoke-virtual {v0, v1}, Lz6/a;->n(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a:Lz6/f;

    invoke-virtual {v0}, Lz6/f;->t()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getRequest()Lb7/a;

    move-result-object v0

    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->requestType:I

    invoke-virtual {v0, v1}, Lb7/a;->k(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setRequest(Lb7/a;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->isContainVulgarContent:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setContainVulgarContent(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mGameScene:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mExtInfo:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    iget-boolean v1, p0, Lcom/hisavana/common/base/BaseAd;->mCurrActivityFullscreen:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->setCurrActivityFullscreen(Z)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b:Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->loadAd()V

    :cond_1
    :goto_0
    return-void
.end method
