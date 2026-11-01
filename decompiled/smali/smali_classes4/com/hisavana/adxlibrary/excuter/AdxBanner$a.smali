.class Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxBanner;->getBanner()Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner is click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdClosed(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner onAdClosed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v1}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdxBanner"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->b(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner is Loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;)Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getBidPrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v2, v0, v1}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseBanner;->adLoaded()V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner onAdShow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner onAdShowError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    :goto_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-static {p1, v0}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->c(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner is Load error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxBanner"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxBanner$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxBanner;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxBanner;->a(Lcom/hisavana/adxlibrary/excuter/AdxBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
