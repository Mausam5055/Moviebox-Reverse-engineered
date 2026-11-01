.class public Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public createAdBadgeView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p2

    check-cast p2, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lz6/d;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdBagdeView(Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;)V

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    return-object v0
.end method

.method public createAdCloseView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p2

    check-cast p2, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lz6/d;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Lz6/d;->t(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    return-object v0

    :cond_3
    iget-object p2, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdCloseView(Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V

    :cond_4
    return-object p1
.end method

.method public createAdDisclaimerView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object p2

    check-cast p2, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lz6/d;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdDisclaimerView(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;)V

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    return-object v0
.end method

.method public createChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v1

    check-cast v1, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lz6/d;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v1, p1, p2}, Lz6/d;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdChoiceView(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V

    :cond_3
    return-object v0
.end method

.method public createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p3, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-direct {p3, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getMime()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    return-object p3
.end method

.method public createStoreMarkView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setPsMarkView(Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V

    :cond_1
    return-object p2
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->destroy()V

    :cond_0
    return-void
.end method

.method public getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    return-object p1
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_0

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setIconView(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public setMediaView(Landroid/view/View;Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    instance-of v1, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    check-cast p1, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->getSdkTypeSetStoreMark()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setSdkTypeSetStoreMark(I)V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->getStoreMarkTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setStoreMarkTextColor(I)V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->getStoreMarkTextSize()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setStoreMarkTextSize(I)V

    :cond_2
    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setupViews(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_3
    :goto_0
    return-void
.end method
