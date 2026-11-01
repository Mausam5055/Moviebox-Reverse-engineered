.class public interface abstract Lcom/hisavana/common/interfacz/IBaseAdSummary;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
.end method

.method public abstract getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
.end method

.method public abstract getInterstitialRewarded(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
.end method

.method public abstract getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
.end method

.method public abstract getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
.end method

.method public abstract getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
.end method

.method public abstract getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
.end method

.method public abstract getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
.end method

.method public abstract init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
