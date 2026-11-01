.class public final Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;


# direct methods
.method public constructor <init>(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxWrapperSplash"

    const-string v2, "AdxWrapperSplash --> onAdActivate"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getEcpm()Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setImageUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onAdActivate(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_3
    return-void
.end method

.method public onAdClicked()V
    .locals 3

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClicked()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxWrapperSplash"

    const-string v2, "AdxWrapperSplash --> onAdClicked"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdClosed()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxWrapperSplash"

    const-string v2, "AdxWrapperSplash --> onAdClosed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getSplashMode$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getTSplashView$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/cloud/hisavana/sdk/api/adx/TSplashView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->getBidPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getTSplash$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lz6/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz6/a;->f()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdxWrapperSplash --> onAdLoaded, ecpm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdxWrapperSplash"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_3
    return-void
.end method

.method public onAdShow()V
    .locals 3

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShow()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "AdxWrapperSplash"

    const-string v2, "AdxWrapperSplash --> onAdShow"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdShowError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_2
    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {v0}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalListener$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash$b;->b:Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;

    invoke-static {p1}, Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;->access$getAdditionalInfo$p(Lcom/hisavana/adxlibrary/excuter/AdxWrapperSplash;)Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_2
    return-void
.end method
