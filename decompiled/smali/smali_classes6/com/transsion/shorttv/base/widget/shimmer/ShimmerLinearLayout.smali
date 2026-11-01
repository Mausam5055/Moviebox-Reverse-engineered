.class public Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Lcom/transsion/shorttv/base/widget/shimmer/b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a:Landroid/graphics/Paint;

    new-instance v0, Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-direct {v0}, Lcom/transsion/shorttv/base/widget/shimmer/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a:Landroid/graphics/Paint;

    new-instance v0, Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-direct {v0}, Lcom/transsion/shorttv/base/widget/shimmer/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a:Landroid/graphics/Paint;

    new-instance p3, Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-direct {p3}, Lcom/transsion/shorttv/base/widget/shimmer/b;-><init>()V

    iput-object p3, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a:Landroid/graphics/Paint;

    new-instance p3, Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-direct {p3}, Lcom/transsion/shorttv/base/widget/shimmer/b;-><init>()V

    iput-object p3, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    if-nez p2, :cond_0

    new-instance p1, Lcom/transsion/shorttv/base/widget/shimmer/a$a;

    invoke-direct {p1}, Lcom/transsion/shorttv/base/widget/shimmer/a$a;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->a()Lcom/transsion/shorttv/base/widget/shimmer/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->setShimmer(Lcom/transsion/shorttv/base/widget/shimmer/a;)Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/shorttv/R$styleable;->ShortTvShimmerFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvShimmerFrameLayout_short_tv_shimmer_colored:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvShimmerFrameLayout_short_tv_shimmer_colored:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/transsion/shorttv/base/widget/shimmer/a$c;

    invoke-direct {p2}, Lcom/transsion/shorttv/base/widget/shimmer/a$c;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/transsion/shorttv/base/widget/shimmer/a$a;

    invoke-direct {p2}, Lcom/transsion/shorttv/base/widget/shimmer/a$a;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->c(Landroid/content/res/TypedArray;)Lcom/transsion/shorttv/base/widget/shimmer/a$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/shorttv/base/widget/shimmer/a$b;->a()Lcom/transsion/shorttv/base/widget/shimmer/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->setShimmer(Lcom/transsion/shorttv/base/widget/shimmer/a;)Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/base/widget/shimmer/b;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public hideShimmer()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->stopShimmer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isShimmerStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/shimmer/b;->a()Z

    move-result v0

    return v0
.end method

.method public isShimmerVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/shimmer/b;->b()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->stopShimmer()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {p1}, Lcom/transsion/shorttv/base/widget/shimmer/b;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->stopShimmer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShimmer(Lcom/transsion/shorttv/base/widget/shimmer/a;)Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;
    .locals 1
    .param p1    # Lcom/transsion/shorttv/base/widget/shimmer/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/base/widget/shimmer/b;->d(Lcom/transsion/shorttv/base/widget/shimmer/a;)V

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/transsion/shorttv/base/widget/shimmer/a;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->a:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    return-object p0
.end method

.method public setShimmerListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/base/widget/shimmer/b;->e(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public showShimmer(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->startShimmer()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startShimmer()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/shimmer/b;->f()V

    return-void
.end method

.method public stopShimmer()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    invoke-virtual {v0}, Lcom/transsion/shorttv/base/widget/shimmer/b;->h()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/base/widget/shimmer/ShimmerLinearLayout;->b:Lcom/transsion/shorttv/base/widget/shimmer/b;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
