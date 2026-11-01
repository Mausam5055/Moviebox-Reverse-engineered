.class Lcom/transsion/publish/view/ZoomImageView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/ZoomImageView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/ZoomImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/publish/view/ZoomImageView;->l(Lcom/transsion/publish/view/ZoomImageView;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/transsion/publish/view/ZoomImageView;->g(Lcom/transsion/publish/view/ZoomImageView;I)V

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/transsion/publish/view/ZoomImageView;->h(Lcom/transsion/publish/view/ZoomImageView;I)V

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->j(Lcom/transsion/publish/view/ZoomImageView;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v2}, Lcom/transsion/publish/view/ZoomImageView;->a(Lcom/transsion/publish/view/ZoomImageView;)I

    move-result v4

    iget-object v2, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v2}, Lcom/transsion/publish/view/ZoomImageView;->b(Lcom/transsion/publish/view/ZoomImageView;)I

    move-result v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    if-ne v4, v12, :cond_1

    if-eq v5, v13, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->e(Lcom/transsion/publish/view/ZoomImageView;)Landroid/widget/OverScroller;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v9, v12

    move v11, v13

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :cond_2
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/publish/view/ZoomImageView;->i(Lcom/transsion/publish/view/ZoomImageView;Landroid/animation/ValueAnimator;)V

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/transsion/publish/view/ZoomImageView$b$a;

    invoke-direct {v2, p0}, Lcom/transsion/publish/view/ZoomImageView$b$a;-><init>(Lcom/transsion/publish/view/ZoomImageView$b;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {v1}, Lcom/transsion/publish/view/ZoomImageView;->f(Lcom/transsion/publish/view/ZoomImageView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    neg-float p2, p3

    neg-float p3, p4

    invoke-static {p1, p2, p3}, Lcom/transsion/publish/view/ZoomImageView;->m(Lcom/transsion/publish/view/ZoomImageView;FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->d(Lcom/transsion/publish/view/ZoomImageView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-static {p1}, Lcom/transsion/publish/view/ZoomImageView;->d(Lcom/transsion/publish/view/ZoomImageView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/publish/view/ZoomImageView$b;->a:Lcom/transsion/publish/view/ZoomImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
