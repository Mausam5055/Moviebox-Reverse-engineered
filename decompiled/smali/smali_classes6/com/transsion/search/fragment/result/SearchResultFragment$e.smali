.class public final Lcom/transsion/search/fragment/result/SearchResultFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/result/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/bean/SearchResultEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/search/bean/SearchResultEntity;->getTabs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/bean/TabItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/transsion/search/fragment/result/SearchResultFragment;->f0(Lcom/transsion/search/fragment/result/SearchResultFragment;Lcom/transsion/search/bean/TabItem;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$e;->a:Lcom/transsion/search/fragment/result/SearchResultFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/bean/SearchResultEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search/bean/SearchResultEntity;->getTabs()Ljava/util/List;

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
