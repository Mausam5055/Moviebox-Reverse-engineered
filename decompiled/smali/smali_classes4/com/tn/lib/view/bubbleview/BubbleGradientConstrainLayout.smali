.class public Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

.field private c:F

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private l:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field private m:I

.field private n:Z

.field private o:[I

.field private p:[F

.field private q:I

.field private r:I

.field private s:I

.field private t:Landroid/animation/ObjectAnimator;

.field private u:Landroid/animation/ObjectAnimator;

.field private v:Landroid/animation/AnimatorSet;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "BubbleGradientLinearLayout"

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "BubbleGradientLinearLayout"

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic h(Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->n(II)V

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private static j(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private k(Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;)[F
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->getDefault()Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    move-result-object v5

    const/4 v6, 0x0

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    new-array v4, v4, [F

    aput v6, v4, v3

    aput v6, v4, v2

    aput v6, v4, v1

    aput p1, v4, v0

    return-object v4

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    new-array v4, v4, [F

    aput v6, v4, v3

    aput v6, v4, v2

    aput p1, v4, v1

    aput v6, v4, v0

    return-object v4
.end method

.method private l(Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tn/lib/widget/R$styleable;->BubbleView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowRadius:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->c:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowColor:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->d:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowOffsetX:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->e:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowOffsetY:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->f:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowWidth:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->g:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowHeight:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->i:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_angle:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->h:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowPosition:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->j:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_bubbleColor:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->m:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradientStartColor:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->q:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradientEndColor:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->r:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradientCenterColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->s:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_isOpenAnimator:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->w:Z

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowLocation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_gradient_orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->l:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowCenter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->n:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->s:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->q:I

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->r:I

    filled-new-array {v0, p1, v1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->o:[I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->q:I

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->r:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->o:[I

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->n(II)V

    return-void
.end method

.method private n(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->c:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->e:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->c:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->e:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->c:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->f:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->c:F

    sub-float/2addr p2, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->f:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->o(IIII)V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->b:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private o(IIII)V
    .locals 6

    if-lt p2, p1, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p3, p3

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-direct {v0, p1, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->l:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->k(Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->p:[F

    new-instance p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    invoke-direct {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B(Landroid/graphics/RectF;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-object p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    sget-object p2, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->SHADER:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->h:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->i:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->g:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->j:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object v0

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->p:[F

    const/4 p2, 0x0

    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    const/4 p2, 0x2

    aget v3, p1, p2

    const/4 p2, 0x3

    aget v4, p1, p2

    iget-object v5, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->o:[I

    invoke-virtual/range {v0 .. v5}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y(FFFF[I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-boolean p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->n:Z

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->c:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->F(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->d:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->e:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->D(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->f:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->E(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->b:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->startTransAnim()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->i()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->n(II)V

    :cond_0
    return-void
.end method

.method public setLocation(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)V
    .locals 1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->k:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->n(II)V

    return-void
.end method

.method public setUpBubbleDrawable()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout$1;

    invoke-direct {v0, p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout$1;-><init>(Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setmArrowPosition(F)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->j:F

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->m()V

    return-void
.end method

.method public startShowRemindAnim()V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->v:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->v:Landroid/animation/AnimatorSet;

    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->u:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->j(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->j(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->j(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v7, v6

    int-to-float v6, v7

    sub-float v6, v2, v6

    const/4 v7, 0x3

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    aput v5, v7, v0

    const/4 v4, 0x2

    aput v6, v7, v4

    const-string v4, "translationX"

    invoke-static {p0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->u:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->u:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->u:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout$a;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout$a;-><init>(Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;FLandroid/view/ViewGroup$MarginLayoutParams;I)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->v:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->u:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->v:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startTransAnim()V
    .locals 5

    iget-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->j(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x2

    aput v2, v3, v0

    const-string v0, "translationY"

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_1
    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleGradientConstrainLayout;->t:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method
