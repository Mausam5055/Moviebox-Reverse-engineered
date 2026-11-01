.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->T0(Landroidx/viewpager2/widget/ViewPager2;Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field final synthetic b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "page_tab_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1
    return-void
.end method
