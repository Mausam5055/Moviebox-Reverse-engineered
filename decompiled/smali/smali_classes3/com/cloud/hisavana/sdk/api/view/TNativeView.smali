.class public Lcom/cloud/hisavana/sdk/api/view/TNativeView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field private e:Landroid/widget/ImageView$ScaleType;

.field private f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private g:Z

.field private h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

.field private i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private k:Lf7/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g:Z

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    return-object p0
.end method

.method private d(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/f0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lf7/d;

    invoke-direct {v0, p0}, Lf7/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lf7/d;->j(Ljava/lang/String;)Lf7/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lf7/d;->h(Ljava/lang/String;)Lf7/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lf7/d;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lf7/d;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k:Lf7/d;

    invoke-virtual {p1}, Lf7/d;->k()V

    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    return-object p0
.end method

.method private g(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-static {v0, p1, v3, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/TNativeView$c;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$c;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getACReady()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getACReady()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    const/4 v2, 0x3

    invoke-static {v0, p1, v2, v3, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/TNativeView$d;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$d;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getTemplateEnum()Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->getCloseImageType()Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    move-result-object v1

    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-eq v0, v1, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    new-instance v1, Lc7/d;

    invoke-direct {v1, p0}, Lc7/d;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_3
    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setDefaultLogo(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isAdImageRecycled()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Ll7/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSize(Landroid/view/View;)V

    :cond_2
    check-cast v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {v0, v3}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    new-instance v4, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;

    invoke-direct {v4, p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView;)V

    invoke-static {v1, v2, v3, v4, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setInteractiveMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void

    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "TNativeView"

    const-string v1, "setMediaView\uff08\uff09----> adType = -1"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setVideoMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setDefaultImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setVideoMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getSdkTypeSetStoreMark()I

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "L91601"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const v1, -0x878788

    :goto_1
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    goto :goto_2

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getStoreMarkTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getStoreMarkTextSize()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private setDefaultImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getMime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    if-nez v1, :cond_1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    sget v3, Lcom/cloud/sdk/commonutil/R$id;->native_mediaview_iv_id:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-static {}, Li7/c;->k()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-static {}, Li7/c;->j()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    new-instance v3, Lcom/cloud/hisavana/sdk/api/view/TNativeView$a;

    invoke-direct {v3, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$a;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-static {v0, v1, v3, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method private setDefaultLogo(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    instance-of v1, v1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSize(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    check-cast v1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    check-cast v1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "L91601"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x41800000    # 16.0f

    :goto_0
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x40800000    # 4.0f

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method private setImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TNativeView"

    const-string v2, "start to set img media"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    if-nez v1, :cond_1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :cond_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setNeedBlurBackground(Z)V

    :cond_2
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getMime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isAdImageRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->renderRadius(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V

    :cond_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result p1

    invoke-virtual {v2, v0, v1, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setMediaView(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView$ScaleType;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    new-instance v3, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;

    invoke-direct {v3, p0, p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_mediaview_iv_id:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {v0, v2, v1, v3, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private setInteractiveMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TNativeView"

    const-string v2, "setVideoMedia() ----> start to set interactive media"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, ""

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setInteractiveView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setVideoMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 9

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "setVideoMedia() ----> start to set video media"

    const-string v2, "TNativeView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v2;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoMedia() ----> mainUrl = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result v5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v7

    iget-boolean v8, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g:Z

    invoke-virtual/range {v3 .. v8}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setVideoView(Ljava/lang/String;ZLjava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k:Lf7/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf7/d;->f()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k:Lf7/d;

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMarkViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMediaView()Lcom/cloud/hisavana/sdk/api/view/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    return-object v0
.end method

.method public getTemplateStyle()Lcom/cloud/hisavana/sdk/ad/template/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public inflateAdChoiceView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public inflateIconView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public inflateMediaView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public setAdBagdeView(Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    return-void
.end method

.method public setAdChoiceView(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    return-void
.end method

.method public setAdCloseView(Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    return-void
.end method

.method public setAdDisclaimerView(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    return-void
.end method

.method public final setIconView(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public setPsMarkView(Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    return-void
.end method

.method public setTemplateStyle(Lcom/cloud/hisavana/sdk/ad/template/a;)V
    .locals 0

    return-void
.end method

.method public setUseListMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g:Z

    return-void
.end method

.method public final setupViews(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->l(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method
