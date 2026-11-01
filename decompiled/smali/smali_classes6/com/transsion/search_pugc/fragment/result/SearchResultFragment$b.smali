.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->l0(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field final synthetic b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    sget-object v0, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->i0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/bean/SearchTab;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getOps()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v1, p1, v3}, Lcom/transsion/search_pugc/g;->C(Ljava/lang/String;Lcom/transsion/search_pugc/bean/SearchTab;Ljava/lang/String;)V

    return-void
.end method
