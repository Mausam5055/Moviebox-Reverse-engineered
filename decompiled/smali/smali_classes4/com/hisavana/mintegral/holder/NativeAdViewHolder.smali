.class public Lcom/hisavana/mintegral/holder/NativeAdViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;


# instance fields
.field private b:Lcom/mbridge/msdk/out/Campaign;

.field private c:Lcom/mbridge/msdk/nativex/view/MBMediaView;

.field private d:Lcom/hisavana/mintegral/executer/MintegralNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/mbridge/msdk/widget/MBAdChoice;

    invoke-direct {p2, p1}, Lcom/mbridge/msdk/widget/MBAdChoice;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->b:Lcom/mbridge/msdk/out/Campaign;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/widget/MBAdChoice;->setCampaign(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_0
    return-object p2
.end method

.method protected createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p2, p1}, Lcom/mbridge/msdk/nativex/view/MBMediaView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->c:Lcom/mbridge/msdk/nativex/view/MBMediaView;

    iget-object p1, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->d:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-virtual {p1}, Lcom/hisavana/mintegral/executer/MintegralNative;->getOnMBMediaViewListenerPlus()Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->c:Lcom/mbridge/msdk/nativex/view/MBMediaView;

    iget-object p2, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->d:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-virtual {p2}, Lcom/hisavana/mintegral/executer/MintegralNative;->getOnMBMediaViewListenerPlus()Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setOnMediaViewListener(Lcom/mbridge/msdk/out/OnMBMediaViewListenerPlus;)V

    :cond_0
    iget-object p1, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->c:Lcom/mbridge/msdk/nativex/view/MBMediaView;

    return-object p1
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    iget-object v0, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->c:Lcom/mbridge/msdk/nativex/view/MBMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->destory()V

    :cond_0
    return-void
.end method

.method public getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p2

    instance-of p2, p2, Lcom/hisavana/mintegral/executer/MintegralNative;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/mbridge/msdk/out/Campaign;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p2

    check-cast p2, Lcom/hisavana/mintegral/executer/MintegralNative;

    iput-object p2, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->d:Lcom/hisavana/mintegral/executer/MintegralNative;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/out/Campaign;

    iput-object p1, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->b:Lcom/mbridge/msdk/out/Campaign;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->b:Lcom/mbridge/msdk/out/Campaign;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createIconView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    iget-object p1, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->b:Lcom/mbridge/msdk/out/Campaign;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/hisavana/common/utils/MediationImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    return-object p1
.end method

.method public setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    iget-object p1, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->c:Lcom/mbridge/msdk/nativex/view/MBMediaView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisavana/mintegral/holder/NativeAdViewHolder;->b:Lcom/mbridge/msdk/out/Campaign;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->setNativeAd(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_0
    return-void
.end method
