.class public abstract Lcom/hisavana/common/bean/NativeAdWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private adImpl:Lcom/hisavana/common/base/BaseNative;

.field private final nativeAd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/hisavana/common/base/BaseNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/hisavana/common/base/BaseNative;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->nativeAd:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    return-void
.end method


# virtual methods
.method public abstract destroy()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation
.end method

.method public detachContext()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->detachContext()V

    :cond_0
    return-void
.end method

.method public getAdData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdImpl()Lcom/hisavana/common/base/BaseNative;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    return-object v0
.end method

.method public getExpireReason()I
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getExpireReason()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNativeAd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->nativeAd:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTrackBundle()Landroid/os/Bundle;
.end method

.method public handleClick()V
    .locals 0

    return-void
.end method

.method public handleShow()V
    .locals 0

    return-void
.end method

.method public isExpired()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public abstract isIconValid()Z
.end method

.method public abstract isImageValid()Z
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMaterielValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isImageValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->isIconValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/hisavana/common/interfacz/AdShowListener;)V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 1
    .param p3    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/hisavana/common/interfacz/IadNative;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V

    :cond_0
    return-void
.end method

.method public setExpireReason(I)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->setExpireReason(I)V

    :cond_0
    return-void
.end method

.method public trackRecommendClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trackRecommendShow(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 1
    .param p1    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/hisavana/common/bean/NativeAdWrapper;->adImpl:Lcom/hisavana/common/base/BaseNative;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/hisavana/common/interfacz/IadNative;->unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V

    :cond_0
    return-void
.end method
