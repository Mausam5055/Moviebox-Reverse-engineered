.class public abstract Lcom/transsion/audio/view/FloatingMagnetView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;
    }
.end annotation


# static fields
.field public static final MARGIN_EDGE:I = 0xd


# instance fields
.field protected a:Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;

.field protected b:I

.field private c:I

.field private d:Z

.field private e:F

.field f:F

.field g:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/audio/view/FloatingMagnetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->d:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->f:F

    iput p1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->g:F

    invoke-direct {p0}, Lcom/transsion/audio/view/FloatingMagnetView;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/view/FloatingMagnetView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->e(Z)V

    return-void
.end method

.method static bridge synthetic b(Lcom/transsion/audio/view/FloatingMagnetView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/view/FloatingMagnetView;->g(FF)V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/view/FloatingMagnetView;->e:F

    return-void
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;

    invoke-direct {v0, p0}, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;-><init>(Lcom/transsion/audio/view/FloatingMagnetView;)V

    iput-object v0, p0, Lcom/transsion/audio/view/FloatingMagnetView;->a:Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private synthetic e(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/view/FloatingMagnetView;->i()V

    iget-boolean v0, p0, Lcom/transsion/audio/view/FloatingMagnetView;->d:Z

    invoke-direct {p0, v0, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->h(ZZ)V

    return-void
.end method

.method private f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->e:F

    :cond_0
    return-void
.end method

.method private g(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private h(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 p1, 0x41500000    # 13.0f

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->b:I

    add-int/lit8 p1, p1, -0xd

    int-to-float p1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget p2, p0, Lcom/transsion/audio/view/FloatingMagnetView;->e:F

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/transsion/audio/view/FloatingMagnetView;->c()V

    move v0, p2

    :cond_1
    iget-object p2, p0, Lcom/transsion/audio/view/FloatingMagnetView;->a:Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/transsion/audio/view/FloatingMagnetView$MoveAnimator;->start(FF)V

    return-void
.end method

.method private i()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/audio/view/FloatingMagnetView;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method abstract attach(Landroid/content/Context;)V
.end method

.method abstract expanded()V
.end method

.method abstract isPackUp()Z
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/audio/view/FloatingMagnetView;->f(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/audio/view/c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/audio/view/c;-><init>(Lcom/transsion/audio/view/FloatingMagnetView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method abstract onProgress(I)V
.end method

.method abstract onSlideTheLeft()V
.end method

.method abstract onStateChanged(I)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/audio/view/FloatingMagnetView;->f:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/audio/view/FloatingMagnetView;->g:F

    iget v1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->f:F

    cmpg-float v3, v0, v1

    if-gez v3, :cond_3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/view/FloatingMagnetView;->onSlideTheLeft()V

    return v2

    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/transsion/audio/view/FloatingMagnetView;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/view/FloatingMagnetView;->onViewClick()V

    return v2

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method abstract onViewClick()V
.end method

.method abstract packUp()V
.end method

.method abstract packUpAnimation()V
.end method

.method abstract prepare()V
.end method

.method abstract setOnOptionListener(Lcom/transsion/audio/view/EnFloatingView$f;)V
.end method
