.class public final Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdClicked"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdClosed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$adClosed(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdLoaded"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$getRewarded$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Lz6/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz6/a;->f()D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmpl-double v0, v3, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-virtual {v0, v3, v4}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdShow"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$adFailedToLoad(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {p1, v0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$adFailedToLoad(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void
.end method

.method public onRewarded()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$getTag$p(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRewarded"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;->access$onReward(Lcom/hisavana/adxlibrary/excuter/AdxInterstitialRewarded;)V

    return-void
.end method
