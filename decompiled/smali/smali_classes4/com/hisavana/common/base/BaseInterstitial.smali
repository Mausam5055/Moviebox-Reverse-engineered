.class public abstract Lcom/hisavana/common/base/BaseInterstitial;
.super Lcom/hisavana/common/base/BaseAd;

# interfaces
.implements Lcom/hisavana/common/interfacz/IadInterstitial;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseInterstitial"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method


# virtual methods
.method public adLoaded()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "BaseInterstitial"

    const-string v2, "adLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "BaseInterstitial"

    const-string v2, "destroyAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAdType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected abstract initInterstitial()V
.end method

.method public isOfflineAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .locals 0

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseInterstitial;->initInterstitial()V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseInterstitial;->onInterstitialStartLoad()V

    return-void
.end method

.method protected abstract onInterstitialShow(Landroid/app/Activity;)V
.end method

.method protected abstract onInterstitialStartLoad()V
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "BaseInterstitial"

    :try_start_0
    invoke-interface {p0}, Lcom/hisavana/common/interfacz/IadInterstitial;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseInterstitial;->onInterstitialShow(Landroid/app/Activity;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "interstitial  is not ready"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interstitial show exception:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
