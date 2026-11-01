.class public final Lcom/transsion/search/fragment/result/SearchResultFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultFragment;->l0(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field final synthetic b:Lcom/transsion/search/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/search/fragment/result/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object p2, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    iget-object v1, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-static {v1}, Lcom/transsion/search/fragment/result/SearchResultFragment;->i0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-static {v2}, Lcom/transsion/search/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/bean/SearchResultEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/search/bean/SearchResultEntity;->getTabs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/bean/TabItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/search/bean/TabItem;->getTabId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-static {v2}, Lcom/transsion/search/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "mb_sug"

    :cond_2
    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/search/widget/d$a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
