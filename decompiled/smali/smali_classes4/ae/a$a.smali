.class Lae/a$a;
.super Lcom/hisavana/common/bean/NativeAdWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/a;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;IILcom/hisavana/common/base/BaseNative;Lz6/d;)Lcom/hisavana/common/bean/TAdNativeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/common/base/BaseNative;

.field public final synthetic b:Lcom/hisavana/common/bean/AdNativeInfo;

.field public final synthetic c:Lz6/d;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/base/BaseNative;Lcom/hisavana/common/bean/AdNativeInfo;Lz6/d;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    iput-object p3, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    iput-object p4, p0, Lae/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    iput-object p5, p0, Lae/a$a;->c:Lz6/d;

    iput-object p6, p0, Lae/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/bean/NativeAdWrapper;-><init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lae/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNative;->destroySingleAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy ad error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Eagllwin"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAdData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lae/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackBundle()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleClick()V
    .locals 2

    iget-object v0, p0, Lae/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {v0}, Lh7/a;->b(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    iget-object v0, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    iget-object v1, p0, Lae/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adClicked(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public handleShow()V
    .locals 2

    iget-object v0, p0, Lae/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {v0}, Lh7/a;->e(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    iget-object v0, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    iget-object v1, p0, Lae/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->adImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public isExpired()Z
    .locals 2

    iget-object v0, p0, Lae/a$a;->c:Lz6/d;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0, v1}, Lz6/d;->u(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->setExpireReason(I)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isImageValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    iget-object v0, p0, Lae/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMatchVulgarBrand()Z

    move-result v0

    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    iget-object v0, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->isIconAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lae/a$a;->isIconValid()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lae/a$a;->isImageValid()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/hisavana/common/interfacz/AdShowListener;)V
    .locals 2

    iget-object v0, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lae/a$a;->b:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    iget-object v0, p0, Lae/a$a;->d:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    new-instance v1, Lae/a$a$a;

    invoke-direct {v1, p0, p2}, Lae/a$a$a;-><init>(Lae/a$a;Lcom/hisavana/common/interfacz/AdShowListener;)V

    invoke-static {v0, p1, v1}, Lh7/a;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/view/View;Lcom/cloud/hisavana/sdk/api/listener/e;)V

    return-void
.end method

.method public trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/base/BaseNative;->trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public trackRecommendShow(Ljava/util/List;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lae/a$a;->a:Lcom/hisavana/common/base/BaseNative;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNative;->trackRecommendShow(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
