.class public Lcom/tn/lib/view/SwitchButton;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/SwitchButton$State;,
        Lcom/tn/lib/view/SwitchButton$d;
    }
.end annotation


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/RectF;

.field private l:I

.field private m:Z

.field private n:F

.field private o:Lcom/tn/lib/view/SwitchButton$State;

.field private p:Lcom/tn/lib/view/SwitchButton$d;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tn/lib/view/SwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tn/lib/view/SwitchButton;->u:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/tn/lib/widget/R$styleable;->SwitchView:[I

    sget v1, Lcom/tn/lib/widget/R$style;->def_switch_view:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_6

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_bg_color:I

    const/high16 v2, -0x1000000

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    goto :goto_1

    :cond_0
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_ball_color:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_checked_bg_color:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->c:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_radius:I

    if-ne v0, v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    goto :goto_1

    :cond_3
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_gradient_start_color:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->s:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/tn/lib/widget/R$styleable;->SwitchView_switch_gradient_end_color:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->t:I

    :cond_5
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/tn/lib/view/SwitchButton;->i()V

    return-void
.end method

.method static bridge synthetic a(Lcom/tn/lib/view/SwitchButton;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/tn/lib/view/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    return p0
.end method

.method static bridge synthetic c(Lcom/tn/lib/view/SwitchButton;F)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    return-void
.end method

.method static bridge synthetic d(Lcom/tn/lib/view/SwitchButton;I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    return-void
.end method

.method private e(IIII)V
    .locals 4

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v1, Lcom/tn/lib/view/SwitchButton$a;

    invoke-direct {v1, p0}, Lcom/tn/lib/view/SwitchButton$a;-><init>(Lcom/tn/lib/view/SwitchButton;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p3, v3, v2

    aput-object p4, v3, p1

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p3

    new-instance p4, Lcom/tn/lib/view/SwitchButton$b;

    invoke-direct {p4, p0}, Lcom/tn/lib/view/SwitchButton$b;-><init>(Lcom/tn/lib/view/SwitchButton;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object p3, v0, p1

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x32

    invoke-virtual {p4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Lcom/tn/lib/view/SwitchButton$c;

    invoke-direct {p1, p0}, Lcom/tn/lib/view/SwitchButton$c;-><init>(Lcom/tn/lib/view/SwitchButton;)V

    invoke-virtual {p4, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private f(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p4

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-object v0
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    iget-object v3, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->h:I

    int-to-float v4, v1

    iget v6, p0, Lcom/tn/lib/view/SwitchButton;->s:I

    iget v7, p0, Lcom/tn/lib/view/SwitchButton;->t:I

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/tn/lib/view/SwitchButton;->k:Landroid/graphics/RectF;

    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->c:I

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/tn/lib/view/SwitchButton;->f(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/tn/lib/view/SwitchButton;->f(IILandroid/graphics/Paint$Style;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    invoke-virtual {v0, v1, v2}, Loh/h;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tn/lib/view/SwitchButton;->j:F

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/lib/view/SwitchButton;->m:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lcom/tn/lib/view/SwitchButton;->u:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    :goto_1
    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->p:Lcom/tn/lib/view/SwitchButton$d;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, p0, v0}, Lcom/tn/lib/view/SwitchButton$d;->a(Lcom/tn/lib/view/SwitchButton;Z)V

    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tn/lib/view/SwitchButton;->h(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/tn/lib/view/SwitchButton;->g(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v3, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    if-eq v1, v4, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v3, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iput p2, p0, Lcom/tn/lib/view/SwitchButton;->g:I

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->h:I

    int-to-float p3, p1

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p3, p4

    const/high16 p4, 0x41f00000    # 30.0f

    div-float/2addr p3, p4

    iput p3, p0, Lcom/tn/lib/view/SwitchButton;->a:F

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    iget-boolean p3, p0, Lcom/tn/lib/view/SwitchButton;->m:Z

    if-eqz p3, :cond_0

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    :goto_0
    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/tn/lib/view/SwitchButton;->h:I

    int-to-float p2, p2

    iget p3, p0, Lcom/tn/lib/view/SwitchButton;->g:I

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton;->k:Landroid/graphics/RectF;

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/tn/lib/view/SwitchButton;->m:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    :goto_0
    iget-object v1, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    if-nez p1, :cond_2

    sget-object p1, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p1, v0, v1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->n:F

    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->b:I

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    if-ne v0, p1, :cond_3

    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/tn/lib/view/SwitchButton;->i:I

    iget v0, p0, Lcom/tn/lib/view/SwitchButton;->l:I

    iget v1, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    iget v2, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->e(IIII)V

    :goto_1
    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->p:Lcom/tn/lib/view/SwitchButton$d;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton;->o:Lcom/tn/lib/view/SwitchButton$State;

    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, p0, v0}, Lcom/tn/lib/view/SwitchButton$d;->a(Lcom/tn/lib/view/SwitchButton;Z)V

    :cond_5
    return-void
.end method

.method public setColor(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->q:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->r:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/view/SwitchButton;->u:Z

    return-void
.end method

.method public setGradientColors(IILjava/lang/Integer;)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->s:I

    iput p2, p0, Lcom/tn/lib/view/SwitchButton;->t:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tn/lib/view/SwitchButton;->d:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton;->p:Lcom/tn/lib/view/SwitchButton$d;

    return-void
.end method
