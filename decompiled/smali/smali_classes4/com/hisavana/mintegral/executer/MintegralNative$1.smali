.class Lcom/hisavana/mintegral/executer/MintegralNative$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/out/NativeListener$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mintegral/executer/MintegralNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hisavana/mintegral/executer/MintegralNative;


# direct methods
.method constructor <init>(Lcom/hisavana/mintegral/executer/MintegralNative;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/mbridge/msdk/out/Campaign;)V
    .locals 2

    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->h(Lcom/hisavana/mintegral/executer/MintegralNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "mintegral_log"

    const-string v1, "Mintegral Ads onAdClick"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFramesLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAdLoadError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    const/16 v2, 0x7533

    invoke-direct {v1, v2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hisavana/mintegral/executer/MintegralNative;->e(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mintegral onLoadFailed message\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mintegral_log"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    const-string v0, "onAdLoad"

    const-string v1, "mintegral_log"

    invoke-virtual {p2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/out/Campaign;

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {v0}, Lcom/hisavana/mintegral/executer/MintegralNative;->a(Lcom/hisavana/mintegral/executer/MintegralNative;)I

    move-result v0

    iget-object v2, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseAd;->getTtl()I

    move-result v2

    iget-object v3, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {p2, v0, v2, v3}, Lcom/hisavana/mintegral/util/PlatformUtil;->getTAdNativeInfo(Lcom/mbridge/msdk/out/Campaign;IILcom/hisavana/common/base/BaseNative;)Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {v0, p2}, Lcom/hisavana/mintegral/executer/MintegralNative;->b(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {v2}, Lcom/hisavana/mintegral/executer/MintegralNative;->d(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/hisavana/common/utils/AdUtil;->release(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->f(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->g(Lcom/hisavana/mintegral/executer/MintegralNative;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseNative;->adLoaded(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v2, "ad filter"

    invoke-direct {v0, p2, v2}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hisavana/mintegral/executer/MintegralNative;->c(Lcom/hisavana/mintegral/executer/MintegralNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad not pass sensitive check or no icon or image filter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onLoggingImpression(I)V
    .locals 2

    iget-object p1, p0, Lcom/hisavana/mintegral/executer/MintegralNative$1;->a:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-static {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->h(Lcom/hisavana/mintegral/executer/MintegralNative;)Lcom/hisavana/common/bean/AdNativeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "mintegral_log"

    const-string v1, "Mintegral Ads onLoggingImpression"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
