.class public final Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;
.super Lcom/transsion/baseui/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->getIndicatorText(Landroid/content/Context;ILjava/lang/String;)Lj00/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;->e:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    iput p2, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;->f:I

    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;->e:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/n;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lrq/n;->r:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;->f:I

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;->e:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/n;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lrq/n;->o:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$c;->f:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method
