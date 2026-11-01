.class public Lcom/tn/lib/view/bubbleview/BubbleTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;


# instance fields
.field private a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tn/lib/widget/R$styleable;->BubbleView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowWidth:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->b:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowHeight:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->d:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_angle:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->c:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowPosition:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->e:F

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_bubbleColor:I

    sget v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->f:I

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowLocation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->h:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_arrowCenter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->i:Z

    sget v0, Lcom/tn/lib/widget/R$styleable;->BubbleView_bubbleAlpha:I

    const/16 v1, 0xff

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->g:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->f()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->d(II)V

    return-void
.end method

.method private d(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, p2}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->e(IIII)V

    return-void
.end method

.method private e(IIII)V
    .locals 1

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

    iget-object p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->h:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    sget-object p2, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->c:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->g:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->p(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->d:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->b:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->f:I

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->e:F

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    iget-boolean p2, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->i:Z

    invoke-virtual {p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    return-void
.end method

.method private f()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sget-object v4, Lcom/tn/lib/view/bubbleview/BubbleTextView$a;->a:[I

    iget-object v5, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->h:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->d:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->d:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->b:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    iget v4, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->b:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    :goto_0
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->c()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->a:Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->d(II)V

    :cond_0
    return-void
.end method

.method public setArrowPosition(F)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleTextView;->e:F

    invoke-direct {p0}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->c()V

    return-void
.end method
