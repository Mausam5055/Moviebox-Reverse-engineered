.class public final Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/bottom/BottomOpFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/bottom/BottomOpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/home/fragment/bottom/BottomOpFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->b(Lcom/transsion/home/fragment/bottom/BottomOpFragment;I)V

    return-void
.end method

.method private static final b(Lcom/transsion/home/fragment/bottom/BottomOpFragment;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lgl/j;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lgl/j;->h:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/j;->h:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/j;->h:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/j;->h:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    new-instance v2, Ljl/c;

    invoke-direct {v2, v1, p1}, Ljl/c;-><init>(Lcom/transsion/home/fragment/bottom/BottomOpFragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/j;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lgl/j;->j:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/bottom/BottomOpFragment$b;->a:Lcom/transsion/home/fragment/bottom/BottomOpFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/j;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lgl/j;->j:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
