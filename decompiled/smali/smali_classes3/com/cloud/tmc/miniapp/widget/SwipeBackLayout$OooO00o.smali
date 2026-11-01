.class public Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;
.super Landroidx/customview/widget/ViewDragHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$b;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget p3, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onEdgeTouched(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$b;->onEdgeTouched(II)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget v0, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0O:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iput p1, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/customview/widget/ViewDragHelper$b;->onViewDragStateChanged(I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$b;->onViewPositionChanged(Landroid/view/View;IIII)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget p4, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    int-to-float p4, p2

    iget-object p5, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p5

    int-to-float p5, v0

    div-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iput p4, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    goto :goto_0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    int-to-float p4, p2

    iget-object p5, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o0:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p5

    int-to-float p5, v0

    div-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iput p4, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iput p2, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOo0:I

    iput p3, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOo:I

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget p2, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p4, p2, p3

    if-lez p4, :cond_3

    iget-object p2, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOOO:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    instance-of p2, p1, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz p1, :cond_6

    const-string p1, "[SwipeBackLayout]\uff1aMiniAppActivity.onKeyDown()"

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->swipeBack(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    goto/16 :goto_1

    :cond_3
    const/4 p4, 0x0

    cmpg-float p4, p2, p4

    const-string p5, "SwipeBackLayout"

    if-gtz p4, :cond_5

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "page is hidden, mScrollPercent: "

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_6

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preView set gone, mScrollPercent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    cmpg-float p2, p2, p3

    if-gez p2, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oO:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preView set visible, mScrollPercent:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget p2, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget v0, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_0

    if-nez p2, :cond_2

    iget p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    iget v0, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    :cond_0
    iget-object p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0oo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0xa

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    cmpg-float v0, p2, v2

    if-ltz v0, :cond_3

    cmpl-float p2, p2, v2

    if-nez p2, :cond_2

    iget p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0OO:F

    iget v0, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO00o:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p2, p3, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0xa

    neg-int p2, p2

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1, p2, v3}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    iget p1, p1, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOO0O:I

    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iput v1, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooO0O0:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    iput v1, p2, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;->OooOOO0:I

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/SwipeBackLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return p1
.end method
