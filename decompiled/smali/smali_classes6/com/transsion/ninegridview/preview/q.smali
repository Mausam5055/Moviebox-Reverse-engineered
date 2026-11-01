.class public Lcom/transsion/ninegridview/preview/q;
.super Landroidx/viewpager/widget/PagerAdapter;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Landroid/content/Context;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p2, p0, Lcom/transsion/ninegridview/preview/q;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ninegridview/preview/q;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ninegridview/preview/q;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/ninegridview/preview/q;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ninegridview/preview/q;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/ninegridview/preview/q;Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ninegridview/preview/q;->j(Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/transsion/ninegridview/preview/q;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    check-cast p1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-virtual {p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->finishActivityAnim()V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    check-cast p1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;

    invoke-virtual {p1}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->finishActivityAnim()V

    return-void
.end method

.method private synthetic j(Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V
    .locals 3

    :try_start_0
    sget-object v0, Lej/f;->a:Lej/f$a;

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    sget v1, Lcom/transsion/ninegridview/R$drawable;->ic_default_color:I

    invoke-virtual {v0, v1}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lej/f$b;->f(Z)Lej/f$b;

    move-result-object v0

    iget-object p1, p1, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lej/f$b;->e(Z)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lej/f$b;->k(Z)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lej/f$b;->h(Z)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lej/f$b;->d(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public e()Lcom/transsion/photoview/PhotoView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    sget v1, Lcom/transsion/ninegridview/R$id;->pv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/photoview/PhotoView;

    return-object v0
.end method

.method public f()Landroid/widget/ImageView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    sget v1, Lcom/transsion/ninegridview/R$id;->thumb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/ninegridview/R$layout;->item_photoview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/ninegridview/R$id;->root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/transsion/ninegridview/preview/n;

    invoke-direct {v2, p0}, Lcom/transsion/ninegridview/preview/n;-><init>(Lcom/transsion/ninegridview/preview/q;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/ninegridview/preview/q;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/ninegridview/ImageInfo;

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget v1, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    sget-object v2, Loh/h;->a:Loh/h;

    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Loh/h;->e(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    iget v1, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Loh/h;->c(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    :cond_1
    iget v1, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    iget v3, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Loh/h;->e(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iput v3, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    iget-object v3, p0, Lcom/transsion/ninegridview/preview/q;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Loh/h;->e(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p2, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    sget v1, Lcom/transsion/ninegridview/R$id;->pv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/photoview/PhotoView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/transsion/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Lcom/transsion/ninegridview/preview/o;

    invoke-direct {v2, p0}, Lcom/transsion/ninegridview/preview/o;-><init>(Lcom/transsion/ninegridview/preview/q;)V

    invoke-virtual {v1, v2}, Lcom/transsion/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/transsion/ninegridview/preview/q$a;

    invoke-direct {v2, p0}, Lcom/transsion/ninegridview/preview/q$a;-><init>(Lcom/transsion/ninegridview/preview/q;)V

    invoke-virtual {v1, v2}, Lcom/transsion/photoview/PhotoView;->setSlideUpAndDownListener(Lcom/transsion/photoview/i;)V

    new-instance v2, Lcom/transsion/ninegridview/preview/p;

    invoke-direct {v2, p0, p2, v1}, Lcom/transsion/ninegridview/preview/p;-><init>(Lcom/transsion/ninegridview/preview/q;Lcom/transsion/ninegridview/ImageInfo;Lcom/transsion/photoview/PhotoView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/ninegridview/preview/q;->c:Landroid/view/View;

    return-void
.end method
