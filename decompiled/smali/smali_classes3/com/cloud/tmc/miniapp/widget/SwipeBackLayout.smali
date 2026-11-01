.class public Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;,
        Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;
    }
.end annotation


# instance fields
.field public OooO:Landroid/graphics/drawable/Drawable;

.field public OooO00o:F

.field public OooO0O0:Landroidx/customview/widget/ViewDragHelper;

.field public OooO0OO:F

.field public OooO0Oo:F

.field public OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

.field public OooO0o0:Landroid/view/View;

.field public OooO0oO:Landroidx/fragment/app/Fragment;

.field public OooO0oo:Landroid/graphics/drawable/Drawable;

.field public final OooOO0:Landroid/graphics/Rect;

.field public OooOO0O:I

.field public OooOO0o:Z

.field public OooOOO:F

.field public OooOOO0:I

.field public OooOOOO:Z

.field public OooOOOo:Z

.field public OooOOo:I

.field public OooOOo0:I

.field public OooOOoo:F

.field public OooOo0:I

.field public OooOo00:I

.field public OooOo0O:I

.field public final OooOo0o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x3ecccccd    # 0.4f

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o:F

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0:Landroid/graphics/Rect;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0o:Z

    const p2, 0x3ea8f5c3    # 0.33f

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO:F

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOoo:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0:I

    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0O:I

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0o:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0()V

    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentPreForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    :cond_2
    return-void
.end method

.method public OooO00o(II)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0o:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oo:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final OooO00o(ILcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-ltz p1, :cond_0

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;->MAX:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;

    if-ne p2, p1, :cond_1

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;->MED:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;

    if-ne p2, p1, :cond_2

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    goto :goto_0

    :cond_2
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mEdgeSize"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final OooO0O0()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;)V

    invoke-static {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$b;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->shape_swipe_back_shadow:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o(II)V

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->setEdgeOrientation(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0O:I

    return-void
.end method

.method public computeScroll()V
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0Oo:F

    const/4 v0, 0x0

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOOO:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0Oo:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v0, v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    :cond_3
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    if-eqz v0, :cond_5

    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0Oo:F

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-lez p4, :cond_5

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p4}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oo:Landroid/graphics/drawable/Drawable;

    iget v2, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p4, Landroid/graphics/Rect;->top:I

    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO:Landroid/graphics/drawable/Drawable;

    iget v2, p4, Landroid/graphics/Rect;->right:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0Oo:F

    const/high16 v0, 0x43190000    # 153.0f

    mul-float/2addr p4, v0

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOoo:F

    mul-float/2addr p4, v0

    float-to-int p4, p4

    shl-int/lit8 p4, p4, 0x18

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    :cond_3
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    :goto_2
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_5
    return p3
.end method

.method public getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0o:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0O:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOOo:Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOo0:I

    iget p3, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOo:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOo:I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOOo:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0o:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo00:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOo0O:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOOo:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setEdgeLevel(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o(ILcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V

    return-void
.end method

.method public setEdgeLevel(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o(ILcom/cloud/tmc/miniapp/widget/SwipeBackLayout$EdgeLevel;)V

    return-void
.end method

.method public setEdgeOrientation(I)V
    .locals 2

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0O:I

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->shape_swipe_back_shadow:I

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o(II)V

    :cond_1
    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0o:Z

    return-void
.end method

.method public setParallaxOffset(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO:F

    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold value should be between 0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSwipeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOoo:F

    return-void
.end method
