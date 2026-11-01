.class public final Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/t;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/t;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/t;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/t;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/t;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/t;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->e0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)I

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->b0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->c0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->j0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;I)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$c;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->i0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->m0(Z)V

    return-void
.end method
