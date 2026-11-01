.class public abstract Lcom/hisavana/common/base/BaseNativeViewHolder;
.super Ljava/lang/Object;


# instance fields
.field private adBadgeView:Landroid/view/View;

.field private adCloseView:Landroid/view/View;

.field protected adDisclaimerView:Landroid/view/View;

.field private attributionView:Landroid/view/View;

.field protected choicesView:Landroid/view/View;

.field protected iconView:Landroid/view/View;

.field protected mediaView:Landroid/view/View;

.field protected storeMarkView:Landroid/view/View;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected createAdBadgeView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createAdCloseView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/cloud/sdk/commonutil/R$id;->native_close_view_id:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    sget-object v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-virtual {p2, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    return-object p2
.end method

.method protected createAdDisclaimerView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-direct {v0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method protected createStoreMarkView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->mediaView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->storeMarkView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    iput-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    iput-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->mediaView:Landroid/view/View;

    iput-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->storeMarkView:Landroid/view/View;

    return-void
.end method

.method public final getAdBadgeView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adBadgeView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createAdBadgeView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adBadgeView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adBadgeView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adBadgeView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adBadgeView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adBadgeView:Landroid/view/View;

    return-object p1
.end method

.method public final getAdDisclaimerView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adDisclaimerView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createAdDisclaimerView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adDisclaimerView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adDisclaimerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adDisclaimerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adDisclaimerView:Landroid/view/View;

    return-object p1
.end method

.method public final getChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    return-object p1
.end method

.method public final getCloseView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adCloseView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createAdCloseView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adCloseView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adCloseView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adCloseView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adCloseView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->adCloseView:Landroid/view/View;

    return-object p1
.end method

.method public getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createIconView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    return-object p1
.end method

.method public getMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->mediaView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->mediaView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->mediaView:Landroid/view/View;

    return-object p1
.end method

.method public final getStoreMarkView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->storeMarkView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createStoreMarkView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->storeMarkView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->storeMarkView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->storeMarkView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->storeMarkView:Landroid/view/View;

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isCachedAdView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeAttributionView()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->attributionView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removePointView(Landroid/view/View;)V

    return-void
.end method

.method public removeChoiceView()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->choicesView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removePointView(Landroid/view/View;)V

    return-void
.end method

.method public removePointView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected removeView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setBinderLayoutId(Lcom/hisavana/common/bean/CommonViewBinder;)V
    .locals 0

    return-void
.end method

.method public setBodyView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setCallToActionOtherView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setCallToActionView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setDomain(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setFeedback(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setHeadlineView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setMediaView(Landroid/view/View;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method

.method public setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 0

    return-void
.end method

.method public setPrice(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSponsored(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->tag:Ljava/lang/String;

    return-void
.end method
