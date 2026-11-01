.class public Lcom/hisavana/mediation/ad/TInterstitialAd;
.super Lce/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lce/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lce/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lbe/c;
    .locals 3

    invoke-virtual {p0}, Lce/b;->d()Lbe/i;

    move-result-object v0

    new-instance v1, Lbe/k;

    iget-object v2, p0, Lce/b;->h:Lbe/t;

    invoke-direct {v1, p1, v0, v2}, Lbe/k;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lbe/i;Lbe/t;)V

    return-object v1
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x3

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

.method public show(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/hisavana/mediation/ad/TInterstitialAd;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TInterstitialAd"

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
    invoke-virtual {p0}, Lce/b;->n()V

    iget-boolean v0, p0, Lce/b;->m:Z

    if-eqz v0, :cond_2

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lce/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {p0, p1}, Lce/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_2
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_3

    iget-object v0, p0, Lce/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lbe/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_3
    iget-object v0, p0, Lce/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0, v0}, Lce/b;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lce/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {p0, v0}, Lce/b;->b(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lce/b;->g()Lbe/c;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lce/b;->q:Z

    invoke-virtual {v0, v2}, Lbe/c;->e(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/base/BaseInterstitial;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->getAdListener()Lcom/hisavana/common/interfacz/TInnerAdListener;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    const-string v4, "TInterstitial setAdListener"

    invoke-virtual {v3, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lce/b;->h:Lbe/t;

    invoke-virtual {v2, v3}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    :cond_5
    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v3, "filling_source"

    iget v4, p0, Lce/b;->mFillSource:I

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    const-string v3, "is_contain_vulgar"

    iget-boolean v4, p0, Lce/b;->q:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lce/b;->setIsShowing(Z)V

    invoke-virtual {p0, p2}, Lce/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/hisavana/common/base/BaseInterstitial;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "no ad or ad is expired "

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lce/b;->t()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "show error,interstitial handler is null"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lce/b;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "show exception"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lce/b;->t()V

    :goto_0
    return-void
.end method
