.class public Lcom/cloud/hisavana/sdk/api/view/MediaView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/api/view/MediaView$b;,
        Lcom/cloud/hisavana/sdk/api/view/MediaView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

.field private b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

.field private d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

.field private e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

.field private f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private g:I

.field private h:Z

.field private volatile i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i:Z

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m:F

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->h(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->g(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->j:F

    return p1
.end method

.method private d(II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-object p0
.end method

.method private f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    if-nez v2, :cond_1

    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    invoke-virtual {v2, p2}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;->setScale(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    if-gez p2, :cond_2

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-nez p2, :cond_3

    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v2, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/api/view/MediaView$a;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v2, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/z3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-virtual {p2, v2}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    :cond_3
    return-void
.end method

.method private synthetic g(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;II)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p5, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-virtual {v1, v0, p2}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    new-instance p2, Lc7/c;

    invoke-direct {p2, p0, p1, p3}, Lc7/c;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setInteractiveView error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MediaView"

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private synthetic h(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/MediaView$b;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView$b;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setUseListMode(Z)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p0, p2, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    :cond_2
    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->j:F

    return p0
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->k:F

    return p1
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_mediaview_iv_id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->release()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    :cond_3
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->k:F

    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l:F

    return p1
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l:F

    return p0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m:F

    return p1
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m:F

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->release()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->destroy()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public init(I)V
    .locals 1

    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->g:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l()V

    :cond_0
    return-void
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->h:Z

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->play()V

    :cond_0
    return-void
.end method

.method public setInteractiveView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Lc7/b;

    invoke-direct {v0, p0, p3, p1, p2}, Lc7/b;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;->registerGlobalLayoutListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;)V

    :cond_0
    return-void
.end method

.method public setMediaView(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView$ScaleType;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-static {}, Li7/c;->k()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-static {}, Li7/c;->j()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->attachView(Landroid/widget/ImageView;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->h:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setRadius(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {v0, p2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {v0, p3}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {v0, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    cmpl-float p1, p2, v1

    if-nez p1, :cond_1

    cmpl-float p1, p3, v1

    if-nez p1, :cond_1

    cmpl-float p1, p4, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setVideoView(Ljava/lang/String;ZLjava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 4

    invoke-direct {p0, p4, p5}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const-string v0, "MediaView"

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    if-eqz p5, :cond_3

    if-nez p4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init impBean.isAutoPlayVideoAd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p5, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    iget-boolean p5, p5, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    invoke-virtual {v1, p5}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setPlayWhenReady(Z)V

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMaterialStyleValid---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "   materialStyle---->"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setShowComponents(Z)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setAutoReset(Z)V

    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setCompanionSize(Ljava/lang/String;)V

    :cond_2
    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-virtual {p3, p1, p4, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "setVideoView filePath is null or adVideoView is null or adsDTO is null"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
