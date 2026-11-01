.class public Lcom/google/android/material/carousel/MaskableFrameLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/material/carousel/h;
.implements Lab/q;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/RectF;

.field private c:Lab/n;

.field private final d:Lab/r;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/carousel/MaskableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/carousel/MaskableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->a:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->b:Landroid/graphics/RectF;

    invoke-static {p0}, Lab/r;->a(Landroid/view/View;)Lab/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->e:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, v0}, Lab/n;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lab/n$b;

    move-result-object p1

    invoke-virtual {p1}, Lab/n$b;->m()Lab/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->setShapeAppearanceModel(Lab/n;)V

    return-void
.end method

.method public static synthetic a(Lab/d;)Lab/d;
    .locals 0

    invoke-static {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->d(Lab/d;)Lab/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/material/carousel/MaskableFrameLayout;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic c(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private static synthetic d(Lab/d;)Lab/d;
    .locals 1

    instance-of v0, p0, Lab/a;

    if-eqz v0, :cond_0

    check-cast p0, Lab/a;

    invoke-static {p0}, Lab/c;->b(Lab/a;)Lab/c;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, p0, v1}, Lab/r;->f(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method private f()V
    .locals 5

    iget v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->a:F

    const/4 v3, 0x0

    invoke-static {v3, v0, v3, v1, v2}, Loa/a;->b(FFFFF)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v0, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/MaskableFrameLayout;->setMaskRectF(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    new-instance v1, Lqa/d;

    invoke-direct {v1, p0}, Lqa/d;-><init>(Lcom/google/android/material/carousel/MaskableFrameLayout;)V

    invoke-virtual {v0, p1, v1}, Lab/r;->e(Landroid/graphics/Canvas;Lpa/a$a;)V

    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getMaskRectF()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getMaskXPercentage()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->a:F

    return v0
.end method

.method public getShapeAppearanceModel()Lab/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->c:Lab/n;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, p0, v0}, Lab/r;->h(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    invoke-virtual {v0}, Lab/r;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->e:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lab/r;->h(Landroid/view/View;Z)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->a:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->f()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->b:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setForceCompatClipping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    invoke-virtual {v0, p0, p1}, Lab/r;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setMaskRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->e()V

    return-void
.end method

.method public setMaskXPercentage(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Ld1/a;->a(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->a:F

    invoke-direct {p0}, Lcom/google/android/material/carousel/MaskableFrameLayout;->f()V

    :cond_0
    return-void
.end method

.method public setOnMaskChangedListener(Lqa/e;)V
    .locals 0
    .param p1    # Lqa/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setShapeAppearanceModel(Lab/n;)V
    .locals 1
    .param p1    # Lab/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lqa/c;

    invoke-direct {v0}, Lqa/c;-><init>()V

    invoke-virtual {p1, v0}, Lab/n;->y(Lab/n$c;)Lab/n;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->c:Lab/n;

    iget-object v0, p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->d:Lab/r;

    invoke-virtual {v0, p0, p1}, Lab/r;->g(Landroid/view/View;Lab/n;)V

    return-void
.end method
