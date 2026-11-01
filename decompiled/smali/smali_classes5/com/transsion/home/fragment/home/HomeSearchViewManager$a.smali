.class final Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/home/HomeSearchViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private b:Lcom/transsion/home/bean/AppTab;

.field final synthetic c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;


# direct methods
.method public constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-direct {p0}, Lj00/a;-><init>()V

    iput-object p2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/tn/lib/view/GradientLinePagerIndicator;

    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {v2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v1, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    sget v0, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1, p1, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    return-object v1
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 4

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/HomeTabItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomeTabItem;->getNameImage()Lcom/transsion/home/bean/NameImage;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, "context"

    if-eqz p1, :cond_3

    new-instance p1, Lcom/transsion/home/view/CustomTabAdView;

    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {v2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-direct {p1, v2}, Lcom/transsion/home/view/CustomTabAdView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    new-instance v2, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;

    invoke-direct {v2, v1, p2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/transsion/home/bean/HomeTabItem;

    :cond_2
    invoke-virtual {p1, v0}, Lcom/transsion/home/view/CustomTabAdView;->showData(Lcom/transsion/home/bean/HomeTabItem;)V

    return-object p1

    :cond_3
    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    new-instance v2, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {v3}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v0

    :cond_4
    const/16 v1, 0x11

    invoke-direct {v2, v3, v1, p1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;-><init>(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/HomeTabItem;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$b;

    invoke-direct {v0, p1, p2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$b;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public final h(Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    invoke-virtual {p0}, Lj00/a;->e()V

    return-void
.end method
