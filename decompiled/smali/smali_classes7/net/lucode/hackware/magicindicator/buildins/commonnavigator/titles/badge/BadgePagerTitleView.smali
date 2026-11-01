.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lj00/b;


# instance fields
.field private a:Lj00/d;

.field private b:Landroid/view/View;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->c:Z

    return-void
.end method


# virtual methods
.method public getBadgeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    return-object v0
.end method

.method public getContentBottom()I
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of v1, v0, Lj00/b;

    if-eqz v1, :cond_0

    check-cast v0, Lj00/b;

    invoke-interface {v0}, Lj00/b;->getContentBottom()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getContentLeft()I
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of v0, v0, Lj00/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    check-cast v1, Lj00/b;

    invoke-interface {v1}, Lj00/b;->getContentLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentRight()I
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of v0, v0, Lj00/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    check-cast v1, Lj00/b;

    invoke-interface {v1}, Lj00/b;->getContentRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of v1, v0, Lj00/b;

    if-eqz v1, :cond_0

    check-cast v0, Lj00/b;

    invoke-interface {v0}, Lj00/b;->getContentTop()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getInnerPagerTitleView()Lj00/d;
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    return-object v0
.end method

.method public getXBadgeRule()Ll00/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getYBadgeRule()Ll00/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoCancelBadge()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->c:Z

    return v0
.end method

.method public onDeselected(II)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lj00/d;->onDeselected(II)V

    :cond_0
    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lj00/d;->onEnter(IIFZ)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    const/16 p2, 0xe

    new-array p2, p2, [I

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    const/4 p4, 0x0

    aput p3, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    const/4 p4, 0x2

    aput p3, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p3

    const/4 p5, 0x3

    aput p3, p2, p5

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of v0, p3, Lj00/b;

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    check-cast p3, Lj00/b;

    invoke-interface {p3}, Lj00/b;->getContentLeft()I

    move-result v0

    aput v0, p2, v5

    invoke-interface {p3}, Lj00/b;->getContentTop()I

    move-result v0

    aput v0, p2, v4

    invoke-interface {p3}, Lj00/b;->getContentRight()I

    move-result v0

    aput v0, p2, v3

    invoke-interface {p3}, Lj00/b;->getContentBottom()I

    move-result p3

    aput p3, p2, v2

    goto :goto_1

    :cond_0
    move p3, v5

    :goto_0
    if-ge p3, v1, :cond_1

    add-int/lit8 v0, p3, -0x4

    aget v0, p2, v0

    aput v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/2addr p3, p4

    aput p3, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p4

    const/16 p3, 0x9

    aput p1, p2, p3

    aget p1, p2, v5

    div-int/2addr p1, p4

    const/16 p3, 0xa

    aput p1, p2, p3

    aget p1, p2, v4

    div-int/2addr p1, p4

    const/16 p3, 0xb

    aput p1, p2, p3

    aget p1, p2, v3

    aget p3, p2, p4

    sub-int/2addr p3, p1

    div-int/2addr p3, p4

    add-int/2addr p1, p3

    const/16 p3, 0xc

    aput p1, p2, p3

    aget p1, p2, v2

    aget p3, p2, p5

    sub-int/2addr p3, p1

    div-int/2addr p3, p4

    add-int/2addr p1, p3

    const/16 p3, 0xd

    aput p1, p2, p3

    :cond_2
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lj00/d;->onLeave(IIFZ)V

    :cond_0
    return-void
.end method

.method public onSelected(II)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lj00/d;->onSelected(II)V

    :cond_0
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->c:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->setBadgeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setAutoCancelBadge(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->c:Z

    return-void
.end method

.method public setBadgeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setInnerPagerTitleView(Lj00/d;)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->a:Lj00/d;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/badge/BadgePagerTitleView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public setXBadgeRule(Ll00/a;)V
    .locals 0

    return-void
.end method

.method public setYBadgeRule(Ll00/a;)V
    .locals 0

    return-void
.end method
