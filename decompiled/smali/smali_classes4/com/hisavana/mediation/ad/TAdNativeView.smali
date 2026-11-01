.class public Lcom/hisavana/mediation/ad/TAdNativeView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public a:Lcom/hisavana/common/base/BaseNativeViewHolder;

.field public b:Z

.field public c:Lcom/hisavana/common/bean/TAdNativeInfo;

.field public d:I

.field public e:Z

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/hisavana/common/base/BaseNativeViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hisavana/mediation/ad/TAdNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hisavana/mediation/ad/TAdNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->b:Z

    iput p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->e:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->f:Landroid/util/SparseArray;

    return-void
.end method

.method private final setBodyView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setBodyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setCallToActionOtherView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setCallToActionOtherView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setCallToActionView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setCallToActionView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setDomain(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setDomain(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setFeedback(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setFeedback(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setHeadlineView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setHeadlineView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final setMaxNativeAdViewBinder(Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hisavana/common/bean/CommonViewBinder;

    invoke-direct {v0}, Lcom/hisavana/common/bean/CommonViewBinder;-><init>()V

    iget v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->titleId:I

    iput v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->titleId:I

    iget v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->iconId:I

    iput v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->iconId:I

    iget v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->callToActionId:I

    iput v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->callToActionId:I

    iget v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->mediaId:I

    iput v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->mediaId:I

    iget v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->adChoicesView:I

    iput v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->adChoicesView:I

    iget v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->descriptionId:I

    iput v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->descriptionId:I

    iget v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->layoutId:I

    iput v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->layoutId:I

    iget-object v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->layout:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->layout:Landroid/view/View;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/hisavana/common/bean/CommonViewBinder;->layoutReference:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setBinderLayoutId(Lcom/hisavana/common/bean/CommonViewBinder;)V

    :cond_1
    return-void
.end method

.method private setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    return-void
.end method

.method private setPrice(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setPrice(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setSponsored(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setSponsored(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-nez v0, :cond_1

    invoke-static {}, Lbe/o;->a()Lbe/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbe/o;->f(I)Lcom/hisavana/common/interfacz/IBaseAdSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 v2, 0x0

    :goto_0
    long-to-float p1, v2

    const/high16 v2, 0x4e800000

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "%.1f GB"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v2, 0x49800000    # 1048576.0f

    cmpl-float v3, p1, v2

    const-string v4, "%.1f MB"

    if-ltz v3, :cond_1

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget p3, p3, Lcom/hisavana/mediation/ad/ViewBinder;->adBadgeView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->getAdBadgeView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    instance-of v1, v1, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/cloud/hisavana/sdk/R$dimen;->ad_badge_height:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object p3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TAdNativeView"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->c:Lcom/hisavana/common/bean/TAdNativeInfo;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    :cond_1
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->c:Lcom/hisavana/common/bean/TAdNativeInfo;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 1
    .param p1    # Lcom/hisavana/common/bean/TAdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hisavana/mediation/ad/ViewBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "TAdNativeView"

    const-string v0, "make sure nativeInfo is valid"

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p2, Lcom/hisavana/mediation/ad/ViewBinder;->mode:I

    iput v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/ad/TAdNativeView;->c(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/ad/TAdNativeView;->b(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdNativeInfo is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/hisavana/mediation/ad/TIconView;Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/hisavana/common/view/TIconView;->attachLayout(Lcom/hisavana/common/base/BaseNativeViewHolder;)V

    :cond_1
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->canUse()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p2, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/hisavana/common/view/TIconView;->getIconView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "TAdNativeView"

    const-string v0, "TAdIconView\'s child is null"

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p2, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setIconView(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/hisavana/mediation/ad/TMediaView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/mediation/ad/TAdNativeView;->b(Lcom/hisavana/mediation/ad/TMediaView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/hisavana/mediation/ad/ViewBinder;Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->d(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Landroid/view/View;)V

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, p2, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    invoke-virtual {p0, v1, p2, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->d(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    invoke-virtual {p0, v1, p2, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->b(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    invoke-virtual {p0, v1, p2, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->e(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    invoke-virtual {p0, v1, p2, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->c(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    :cond_0
    iget-object p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "TAdNativeView"

    const-string v1, "set tag to AdViewHolder in List Mode"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setTag(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->getCloseView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget p3, p3, Lcom/hisavana/mediation/ad/ViewBinder;->adCloseView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    instance-of v0, v0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/cloud/hisavana/sdk/R$dimen;->ad_badge_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object p3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TAdNativeView"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final b(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v4, "start bindViewInternal"

    const-string v5, "TAdNativeView"

    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v6, 0x0

    if-lez v0, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v2, :cond_13

    if-eqz v3, :cond_13

    if-nez v7, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object v0, v1, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->isCachedAdView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "--- get cached adview ---"

    invoke-virtual {v0, v5, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget v0, v3, Lcom/hisavana/mediation/ad/ViewBinder;->titleId:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    iget v0, v3, Lcom/hisavana/mediation/ad/ViewBinder;->iconId:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/hisavana/mediation/ad/TIconView;

    iget v0, v3, Lcom/hisavana/mediation/ad/ViewBinder;->callToActionId:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    iget v0, v3, Lcom/hisavana/mediation/ad/ViewBinder;->mediaId:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/hisavana/mediation/ad/TMediaView;

    iget v0, v3, Lcom/hisavana/mediation/ad/ViewBinder;->descriptionId:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    iget v0, v3, Lcom/hisavana/mediation/ad/ViewBinder;->ratingId:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iget v13, v3, Lcom/hisavana/mediation/ad/ViewBinder;->priceId:I

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget v14, v3, Lcom/hisavana/mediation/ad/ViewBinder;->adCloseView:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/hisavana/mediation/ad/TAdCloseView;

    iget v15, v3, Lcom/hisavana/mediation/ad/ViewBinder;->domainId:I

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    iget v4, v3, Lcom/hisavana/mediation/ad/ViewBinder;->sponsoredId:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v6, v3, Lcom/hisavana/mediation/ad/ViewBinder;->feedbackId:I

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v16, v14

    :try_start_0
    iget v14, v3, Lcom/hisavana/mediation/ad/ViewBinder;->sourceSizeId:I

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_3

    move-object/from16 v17, v7

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSourceSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    :cond_3
    move-object/from16 v17, v7

    :catchall_1
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getRating()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    const-string v6, "rating !!!!!!"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getRating()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getRating()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RatingBar;->setRating(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v18, v6

    :goto_2
    if-eqz v13, :cond_5

    invoke-direct {v1, v13}, Lcom/hisavana/mediation/ad/TAdNativeView;->setPrice(Landroid/view/View;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "price !!!!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSaleprice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSaleprice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getSaleprice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v8, :cond_6

    invoke-direct {v1, v8}, Lcom/hisavana/mediation/ad/TAdNativeView;->setHeadlineView(Landroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v6, "add native has no title!!!!!!"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v9, :cond_7

    invoke-virtual {v1, v9, v2}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Lcom/hisavana/mediation/ad/TIconView;Lcom/hisavana/common/bean/TAdNativeInfo;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v6, "add native has no adIconView!!!!!!"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-eqz v10, :cond_8

    const-string v0, "ad_download"

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {v1, v10}, Lcom/hisavana/mediation/ad/TAdNativeView;->setCallToActionView(Landroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v6, "add native has no callToAction!!!!!!"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v6, "setMediaView"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_9

    invoke-virtual {v1, v11, v2, v3}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Lcom/hisavana/mediation/ad/TMediaView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v6, "add native has no mediaView!!!!!!"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-eqz v12, :cond_a

    invoke-direct {v1, v12}, Lcom/hisavana/mediation/ad/TAdNativeView;->setBodyView(Landroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v6, "add native has no odyView!!!!!!"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eqz v15, :cond_b

    invoke-direct {v1, v15}, Lcom/hisavana/mediation/ad/TAdNativeView;->setDomain(Landroid/view/View;)V

    goto :goto_8

    :cond_b
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v6, "yandex ad need domain!!!!!!"

    invoke-virtual {v0, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    if-eqz v4, :cond_c

    invoke-direct {v1, v4}, Lcom/hisavana/mediation/ad/TAdNativeView;->setSponsored(Landroid/view/View;)V

    goto :goto_9

    :cond_c
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v4, "yandex ad need sponsored!!!!!!"

    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    if-eqz v18, :cond_d

    move-object/from16 v6, v18

    invoke-direct {v1, v6}, Lcom/hisavana/mediation/ad/TAdNativeView;->setFeedback(Landroid/view/View;)V

    goto :goto_a

    :cond_d
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v4, "yandex ad need feedback!!!!!!"

    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    iget-object v0, v3, Lcom/hisavana/mediation/ad/ViewBinder;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct/range {p0 .. p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v4, "setNativeAd"

    invoke-virtual {v0, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v3, Lcom/hisavana/mediation/ad/ViewBinder;->actionIds:Ljava/util/List;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, v3, Lcom/hisavana/mediation/ad/ViewBinder;->actionIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v7, v17

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    goto :goto_b

    :cond_e
    invoke-virtual {v1, v0, v8}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v1, v0, v9}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v1, v0, v11}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v1, v0, v10}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v1, v0, v12}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    :cond_f
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_10

    move-object/from16 v14, v16

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v1, v0, v4}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->isIconAd()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v3, Lcom/hisavana/mediation/ad/ViewBinder;->actionView:Landroid/view/View;

    if-eqz v4, :cond_12

    invoke-virtual {v1, v0, v4}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Ljava/util/List;Landroid/view/View;)V

    iget-object v3, v3, Lcom/hisavana/mediation/ad/ViewBinder;->actionView:Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/hisavana/mediation/ad/TAdNativeView;->setCallToActionOtherView(Landroid/view/View;)V

    :cond_12
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    const-string v4, "start registerView"

    invoke-virtual {v3, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->registerView(Landroid/view/ViewGroup;Ljava/util/List;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "end bindViewInternal"

    invoke-virtual {v0, v5, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :goto_d
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "not prepare to bind data"

    invoke-virtual {v0, v5, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/hisavana/mediation/ad/TMediaView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 1

    iget-boolean p3, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->e:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p1, p3, p2}, Lcom/hisavana/mediation/ad/TMediaView;->attachLayout(Lcom/hisavana/common/base/BaseNativeViewHolder;Lcom/hisavana/common/bean/TAdNativeInfo;)V

    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getImageList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->canUse()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/hisavana/mediation/ad/TMediaView;->setMediaView(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :cond_1
    iget-object p2, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/hisavana/mediation/ad/TMediaView;->getMediaView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "TAdNativeView"

    const-string p3, "TMediaView\'s child is null"

    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/ad/TMediaView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setMediaView(Landroid/view/View;Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    return-void
.end method

.method public final c(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget p3, p3, Lcom/hisavana/mediation/ad/ViewBinder;->adDisclaimerView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->getAdDisclaimerView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    instance-of v0, v0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;

    if-eqz v0, :cond_2

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TAdNativeView"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final c(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNativeView nativeInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAdNativeView"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->d:I

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(I)Lcom/hisavana/common/base/BaseNativeViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    iget v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_view_id:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/cloud/sdk/commonutil/R$id;->native_view_id:I

    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->e:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "the same ad scroll back"

    invoke-virtual {p1, v3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "cant create the AdViewHolder instance"

    invoke-virtual {p1, v3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    sget v0, Lcom/cloud/sdk/commonutil/R$id;->native_view_id:I

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/hisavana/mediation/ad/TAdNativeView;->setMaxNativeAdViewBinder(Lcom/hisavana/mediation/ad/ViewBinder;)V

    invoke-virtual {p0, p2, p1}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Lcom/hisavana/mediation/ad/ViewBinder;Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return v2
.end method

.method public final d(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/hisavana/mediation/ad/ViewBinder;->layout:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget p2, p2, Lcom/hisavana/mediation/ad/ViewBinder;->layoutId:I

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_1
    const-string p2, "TAdNativeView"

    if-nez v1, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v1, "make sure ViewBinder correct"

    invoke-virtual {p1, p2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {v0, p1, p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setUseListMode(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->addContentView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result view is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public final d(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->getChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget p3, p3, Lcom/hisavana/mediation/ad/ViewBinder;->adChoicesView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    instance-of v0, v0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/cloud/hisavana/sdk/R$dimen;->ad_badge_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object p3, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TAdNativeView"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final e(Landroid/view/View;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/hisavana/common/base/BaseNativeViewHolder;->getStoreMarkView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget p3, p3, Lcom/hisavana/mediation/ad/ViewBinder;->adStoreMarkView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    instance-of v1, p1, Lcom/hisavana/mediation/ad/TStoreMarkView;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/hisavana/mediation/ad/TStoreMarkView;

    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TStoreMarkView;->getSdkTypeSetStoreMark()I

    move-result v1

    move-object v2, p1

    check-cast v2, Lcom/hisavana/mediation/ad/TStoreMarkView;

    invoke-virtual {v2}, Lcom/hisavana/mediation/ad/TStoreMarkView;->getTextColor()I

    move-result v2

    move-object v3, p1

    check-cast v3, Lcom/hisavana/mediation/ad/TStoreMarkView;

    invoke-virtual {v3}, Lcom/hisavana/mediation/ad/TStoreMarkView;->getTextSize()I

    move-result v3

    instance-of v4, p2, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v4, :cond_2

    move-object v4, p2

    check-cast v4, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v4, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setSdkTypeSetStoreMark(I)V

    move-object v1, p2

    check-cast v1, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setStoreMarkTextColor(I)V

    check-cast p2, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p2, v3}, Lcom/hisavana/common/bean/AdNativeInfo;->setStoreMarkTextSize(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "TAdNativeView"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getIconView(Lcom/hisavana/mediation/ad/ViewBinder;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget p1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->iconId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/ad/TAdNativeView;->a(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    return-void
.end method

.method public final release()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->a:Lcom/hisavana/common/base/BaseNativeViewHolder;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/base/BaseNativeViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TAdNativeView;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
