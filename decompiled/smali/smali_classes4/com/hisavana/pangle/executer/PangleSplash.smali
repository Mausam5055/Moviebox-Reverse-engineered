.class public Lcom/hisavana/pangle/executer/PangleSplash;
.super Lcom/hisavana/common/base/BaseSplash;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

.field private e:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

.field private f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    new-instance p1, Lcom/hisavana/pangle/executer/PangleSplash$1;

    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleSplash$1;-><init>(Lcom/hisavana/pangle/executer/PangleSplash;)V

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash;->d:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    new-instance p1, Lcom/hisavana/pangle/executer/PangleSplash$2;

    invoke-direct {p1, p0}, Lcom/hisavana/pangle/executer/PangleSplash$2;-><init>(Lcom/hisavana/pangle/executer/PangleSplash;)V

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash;->e:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    return-object p0
.end method

.method static synthetic b(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    return-object p1
.end method

.method static synthetic c(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic d(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->e:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;

    return-object p0
.end method

.method static synthetic e(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic f(Lcom/hisavana/pangle/executer/PangleSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method static synthetic g(Lcom/hisavana/pangle/executer/PangleSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method static synthetic h(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic i(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method static synthetic j(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->d:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    return-object p0
.end method

.method static synthetic k(Lcom/hisavana/pangle/executer/PangleSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

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

.method protected getSplash()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

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

.method protected onSplashShow()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/pangle/executer/PangleSplash;->f:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/m;->h()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "pangle_log"

    const-string v2, "onSplashShow show error,ad is null or no main activity"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onSplashStartLoad()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v1, 0x7533

    const-string v2, "Pangle Ads failed to load ad error with mNetwork == null"

    invoke-direct {v0, v1, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hisavana/pangle/executer/PangleSplash$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/hisavana/pangle/executer/PangleSplash$3;-><init>(Lcom/hisavana/pangle/executer/PangleSplash;J)V

    invoke-static {v2, v3}, Lcom/hisavana/pangle/check/ExistsCheck;->initAdSource(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    return-void
.end method
