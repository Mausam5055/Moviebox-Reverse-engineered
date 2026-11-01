.class public Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

.field private b:F

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c(II)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tn/lib/widget/R$styleable;->BubbleView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowRadius:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowColor:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowOffsetX:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_shadowOffsetY:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowWidth:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->f:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowHeight:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->h:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_angle:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->g:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowPosition:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->i:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_bubbleColor:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->k:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowLocation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->j:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowCenter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->l:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private c(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    sub-float/2addr p2, v2

    iget v2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d(IIII)V

    iget-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private d(IIII)V
    .locals 1

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

    new-instance p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    invoke-direct {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B(Landroid/graphics/RectF;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-object p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->j:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    sget-object p2, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->g:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->h:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->f:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->i:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->k:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-boolean p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->l:Z

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->b:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->F(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->d:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->D(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->e:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->E(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;->c(II)V

    :cond_0
    return-void
.end method

.method public setUpBubbleDrawable()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout$1;-><init>(Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
