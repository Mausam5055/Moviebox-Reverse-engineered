.class Lcom/to/aboomy/pager2banner/Banner$d;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method private constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/to/aboomy/pager2banner/Banner;Lcom/to/aboomy/pager2banner/Banner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner$d;-><init>(Lcom/to/aboomy/pager2banner/Banner;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->k(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0, v3}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->j(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->j(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v2

    iget-object v4, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v4}, Lcom/to/aboomy/pager2banner/Banner;->k(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v4

    add-int/2addr v2, v4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0, v3}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->k(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1, v0}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_3
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/to/aboomy/pager2banner/a;->onPageScrollStateChanged(I)V

    :cond_4
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0, p1}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    move-result p1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/to/aboomy/pager2banner/a;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->j(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0, p1}, Lcom/to/aboomy/pager2banner/Banner;->h(Lcom/to/aboomy/pager2banner/Banner;I)I

    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->l(Lcom/to/aboomy/pager2banner/Banner;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0, p1}, Lcom/to/aboomy/pager2banner/Banner;->q(Lcom/to/aboomy/pager2banner/Banner;I)I

    move-result p1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$d;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/to/aboomy/pager2banner/a;->onPageSelected(I)V

    :cond_2
    return-void
.end method
