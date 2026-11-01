.class public final Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    sget-object v0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;

    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-static {v1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/search_pugc/bean/HotRank;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;->a(Lcom/transsion/search_pugc/bean/HotRank;I)Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->access$getRankList$p(Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
