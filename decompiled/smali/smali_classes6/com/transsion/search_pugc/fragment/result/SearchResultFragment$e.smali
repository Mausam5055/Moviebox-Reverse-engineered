.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 6

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/search_pugc/bean/SearchTab;

    :cond_0
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/bean/SearchTab;

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;->n:Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$a;

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->i0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->f0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment$a;->a(Ljava/lang/String;Lcom/transsion/search_pugc/bean/UGCSearchResultData;Lcom/transsion/search_pugc/bean/SearchTab;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
