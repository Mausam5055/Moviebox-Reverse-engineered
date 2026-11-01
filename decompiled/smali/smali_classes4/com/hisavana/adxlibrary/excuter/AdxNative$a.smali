.class Lcom/hisavana/adxlibrary/excuter/AdxNative$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxNative;->initNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxNative;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    return-void
.end method

.method public onAdClosed(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 7

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "onAdLoaded multi"

    const-string v2, "AdxNative"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iget-object v3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v3}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;)I

    move-result v3

    iget-object v4, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-virtual {v4}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    move-result v4

    iget-object v5, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    iget-object v6, v5, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a:Lz6/d;

    invoke-static {v1, v3, v4, v5, v6}, Lae/a;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;IILcom/hisavana/common/base/BaseNative;Lz6/d;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v3, v1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v4}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->c(Lcom/hisavana/adxlibrary/excuter/AdxNative;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v1, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Ljava/util/List;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "ad filter"

    invoke-direct {v0, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->b(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad not pass filter check or no icon or image filter:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoaded error +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdxNative"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p1

    instance-of v0, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    check-cast p1, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    :goto_0
    return-void
.end method

.method public onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShow()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    invoke-static {v0, p1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->a(Lcom/hisavana/adxlibrary/excuter/AdxNative;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p1

    instance-of v0, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    check-cast p1, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxNative$a;->b:Lcom/hisavana/adxlibrary/excuter/AdxNative;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    :goto_0
    return-void
.end method
