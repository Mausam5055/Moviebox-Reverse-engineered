.class public Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;
.super Landroid/widget/FrameLayout;


# instance fields
.field private Dq:Lcom/bytedance/adsdk/ugeno/EjP;

.field private EjP:F

.field private HiB:Landroid/widget/LinearLayout;

.field private Jcg:Landroid/content/Context;

.field private Sj:F

.field private TKC:D

.field private sP:F

.field private vS:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Jcg:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->vS:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    const v1, 0x800003

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->vS:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->vS:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private getStarImageView()Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Sj:F

    float-to-int v2, v2

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->sP:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->EjP:F

    float-to-int v3, v2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public Sj(DIIFI)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->vS:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Jcg:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Sj:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Jcg:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p5

    float-to-int p5, p5

    int-to-float p5, p5

    iput p5, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->sP:F

    iput-wide p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->TKC:D

    int-to-float p1, p6

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->EjP:F

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const-string p5, "tt_ugen_rating_star"

    const/4 p6, 0x5

    if-ge p2, p6, :cond_0

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->getStarImageView()Landroid/widget/ImageView;

    move-result-object p6

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Jcg:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p6, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p6, p3, p5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->vS:Landroid/widget/LinearLayout;

    invoke-virtual {p5, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p6, :cond_1

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->getStarImageView()Landroid/widget/ImageView;

    move-result-object p2

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Jcg:Landroid/content/Context;

    invoke-static {p3, p5}, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->vS:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Dq:Lcom/bytedance/adsdk/ugeno/EjP;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Dq:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Jcg()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Dq:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Dq()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Dq:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Dq:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(II)[I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-wide p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->TKC:D

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->EjP:F

    add-float v1, v0, v0

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Sj:F

    add-float/2addr v1, v2

    float-to-double v3, v1

    mul-double/2addr v3, p1

    float-to-double v0, v0

    add-double/2addr v3, v0

    iget-wide v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->TKC:D

    sub-double/2addr v0, p1

    float-to-double p1, v2

    mul-double/2addr v0, p1

    add-double/2addr v3, v0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->vS:Landroid/widget/LinearLayout;

    double-to-int p2, v3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->HiB:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Dq:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/adsdk/ugeno/EjP;->sP(IIII)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    return-void
.end method
