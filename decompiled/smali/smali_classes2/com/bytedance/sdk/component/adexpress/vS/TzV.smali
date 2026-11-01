.class public Lcom/bytedance/sdk/component/adexpress/vS/TzV;
.super Landroid/view/View;


# instance fields
.field private Dq:F

.field private EjP:Landroid/animation/ValueAnimator;

.field private HiB:Landroid/graphics/Paint;

.field private Jcg:F

.field private Sj:F

.field private TEQ:I

.field private TKC:Landroid/animation/ValueAnimator;

.field private sP:F

.field private uA:Landroid/animation/Animator$AnimatorListener;

.field private vS:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->vS:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Jcg:F

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->TEQ:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Sj()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/vS/TzV;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Jcg:F

    return p1
.end method


# virtual methods
.method public Sj()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->HiB:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->HiB:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->TEQ:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public TKC()V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Dq:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->EjP:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->vS:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->EjP:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->EjP:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/TzV$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/vS/TzV$2;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/TzV;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->uA:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->EjP:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->EjP:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Sj:F

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->sP:F

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Jcg:F

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p3, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Sj:F

    int-to-float p3, p2

    div-float/2addr p3, p4

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->sP:F

    int-to-double p3, p1

    int-to-double p1, p2

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Dq:F

    return-void
.end method

.method public sP()V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->Dq:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->TKC:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->vS:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->TKC:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->TKC:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/TzV$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/vS/TzV$1;-><init>(Lcom/bytedance/sdk/component/adexpress/vS/TzV;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->TKC:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/TzV;->uA:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method
