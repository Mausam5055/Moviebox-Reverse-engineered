.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lh00/a;
.implements Lg00/b$a;


# instance fields
.field private a:Landroid/widget/HorizontalScrollView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lj00/c;

.field private e:Lj00/a;

.field private f:Lg00/b;

.field private g:Z

.field private h:Z

.field private i:F

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/util/List;

.field private r:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    new-instance p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;

    invoke-direct {p1, p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;-><init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->r:Landroid/database/DataSetObserver;

    new-instance p1, Lg00/b;

    invoke-direct {p1}, Lg00/b;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {p1, p0}, Lg00/b;->k(Lg00/b$a;)V

    return-void
.end method

.method static synthetic a(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lj00/a;
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    return-object p0
.end method

.method static synthetic b(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lg00/b;
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    return-object p0
.end method

.method static synthetic c(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V
    .locals 0

    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout_no_scroll:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->m:I

    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->l:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->indicator_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->c:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->n:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->c:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e()V

    return-void
.end method

.method private e()V
    .locals 7

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {v0}, Lg00/b;->g()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lj00/a;->c(Landroid/content/Context;I)Lj00/d;

    move-result-object v4

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/View;

    iget-boolean v5, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    if-eqz v5, :cond_0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lj00/a;->d(Landroid/content/Context;I)F

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj00/a;->b(Landroid/content/Context;)Lj00/c;

    move-result-object v0

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lj00/c;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lj00/c;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {v0}, Lg00/b;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    new-instance v2, Lk00/a;

    invoke-direct {v2}, Lk00/a;-><init>()V

    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lk00/a;->a:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v2, Lk00/a;->b:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v2, Lk00/a;->c:I

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v2, Lk00/a;->d:I

    instance-of v5, v3, Lj00/b;

    if-eqz v5, :cond_0

    check-cast v3, Lj00/b;

    invoke-interface {v3}, Lj00/b;->getContentLeft()I

    move-result v4

    iput v4, v2, Lk00/a;->e:I

    invoke-interface {v3}, Lj00/b;->getContentTop()I

    move-result v4

    iput v4, v2, Lk00/a;->f:I

    invoke-interface {v3}, Lj00/b;->getContentRight()I

    move-result v4

    iput v4, v2, Lk00/a;->g:I

    invoke-interface {v3}, Lj00/b;->getContentBottom()I

    move-result v3

    iput v3, v2, Lk00/a;->h:I

    goto :goto_1

    :cond_0
    iget v3, v2, Lk00/a;->a:I

    iput v3, v2, Lk00/a;->e:I

    iget v3, v2, Lk00/a;->b:I

    iput v3, v2, Lk00/a;->f:I

    iget v3, v2, Lk00/a;->c:I

    iput v3, v2, Lk00/a;->g:I

    iput v4, v2, Lk00/a;->h:I

    :cond_1
    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Lj00/a;
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    return-object v0
.end method

.method public getLeftPadding()I
    .locals 1

    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->m:I

    return v0
.end method

.method public getPagerIndicator()Lj00/c;
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lj00/c;

    return-object v0
.end method

.method public getPagerTitleView(I)Lj00/d;
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lj00/d;

    return-object p1
.end method

.method public getRightPadding()I
    .locals 1

    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->l:I

    return v0
.end method

.method public getScrollPivotX()F
    .locals 1

    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    return v0
.end method

.method public getTitleContainer()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isAdjustMode()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    return v0
.end method

.method public isEnablePivotScroll()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->h:Z

    return v0
.end method

.method public isFollowTouch()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    return v0
.end method

.method public isIndicatorOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->n:Z

    return v0
.end method

.method public isReselectWhenLayout()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    return v0
.end method

.method public isSkimOver()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->o:Z

    return v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj00/a;->e()V

    :cond_0
    return-void
.end method

.method public onAttachToMagicIndicator()V
    .locals 0

    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d()V

    return-void
.end method

.method public onDeselected(II)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lj00/d;

    if-eqz v1, :cond_1

    check-cast v0, Lj00/d;

    invoke-interface {v0, p1, p2}, Lj00/d;->onDeselected(II)V

    :cond_1
    return-void
.end method

.method public onDetachFromMagicIndicator()V
    .locals 0

    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lj00/d;

    if-eqz v1, :cond_1

    check-cast v0, Lj00/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lj00/d;->onEnter(IIFZ)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f()V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lj00/c;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {p1, p2}, Lj00/c;->onPositionDataProvide(Ljava/util/List;)V

    :cond_0
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {p1}, Lg00/b;->f()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {p1}, Lg00/b;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageSelected(I)V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {p1}, Lg00/b;->e()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lj00/d;

    if-eqz v1, :cond_1

    check-cast v0, Lj00/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lj00/d;->onLeave(IIFZ)V

    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {v0, p1}, Lg00/b;->h(I)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lj00/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lj00/c;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {v0, p1, p2, p3}, Lg00/b;->i(IFI)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lj00/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lj00/c;->onPageScrolled(IFI)V

    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    if-ltz p1, :cond_1

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    iget-boolean p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lk00/a;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk00/a;

    invoke-virtual {p3}, Lk00/a;->a()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    mul-float/2addr v0, v1

    sub-float/2addr p3, v0

    invoke-virtual {p1}, Lk00/a;->a()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    sub-float/2addr p1, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {v0, p1}, Lg00/b;->j(I)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lj00/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lj00/c;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onSelected(II)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lj00/d;

    if-eqz v1, :cond_1

    check-cast v0, Lj00/d;

    invoke-interface {v0, p1, p2}, Lj00/d;->onSelected(II)V

    :cond_1
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk00/a;

    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->h:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lk00/a;->a()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    mul-float/2addr p2, v1

    sub-float/2addr p1, p2

    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result p2

    iget v1, p1, Lk00/a;->a:I

    if-le p2, v1, :cond_5

    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    iget p1, p1, Lk00/a;->c:I

    if-ge p2, p1, :cond_7

    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setAdapter(Lj00/a;)V
    .locals 2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lj00/a;->g(Landroid/database/DataSetObserver;)V

    :cond_1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->r:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lj00/a;->f(Landroid/database/DataSetObserver;)V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    invoke-virtual {v0}, Lj00/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lg00/b;->m(I)V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lj00/a;

    invoke-virtual {p1}, Lj00/a;->e()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg00/b;->m(I)V

    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAdjustMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    return-void
.end method

.method public setEnablePivotScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->h:Z

    return-void
.end method

.method public setFollowTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->n:Z

    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->m:I

    return-void
.end method

.method public setReselectWhenLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    return-void
.end method

.method public setRightPadding(I)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->l:I

    return-void
.end method

.method public setScrollPivotX(F)V
    .locals 0

    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    return-void
.end method

.method public setSkimOver(Z)V
    .locals 1

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->o:Z

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Lg00/b;

    invoke-virtual {v0, p1}, Lg00/b;->l(Z)V

    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    return-void
.end method
