.class Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    return-void
.end method

.method public onAdClicked()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adx onAdClicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adx onAdClosed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->b(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adx splashview onAdLoaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lz6/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;)Lz6/f;

    move-result-object v0

    invoke-virtual {v0}, Lz6/a;->f()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {v2, v0, v1}, Lcom/hisavana/common/base/BaseAd;->setEcpmPrice(D)V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adx onAdShow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxSplash;->a(Lcom/hisavana/adxlibrary/excuter/AdxSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adx onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxSplash$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxSplash;

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdxSplash"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
