.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$c;
.super Lcom/transsion/baseui/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->getIndicatorText(Landroid/content/Context;ILjava/lang/String;)Lj00/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$c;->e:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    iput p2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$c;->f:I

    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$c;->e:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/g;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lrq/g;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$c;->f:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
