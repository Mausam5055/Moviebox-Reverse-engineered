.class public final Lcom/transsion/search/fragment/hot/SearchHotFragment$e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/hot/SearchHotFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search/fragment/hot/SearchHotFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search/fragment/hot/SearchHotFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$getMHotSubjectEntity$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lcom/transsion/search/bean/HotSubjectEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search/bean/HotSubjectEntity;->getHot()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/search/bean/HotRankItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/search/bean/HotRankItem;->setIndex(I)V

    :cond_1
    sget-object p1, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;

    invoke-virtual {p1, v0}, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;->a(Lcom/transsion/search/bean/HotRankItem;)Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$e;->a:Lcom/transsion/search/fragment/hot/SearchHotFragment;

    invoke-static {v0}, Lcom/transsion/search/fragment/hot/SearchHotFragment;->access$getMHotSubjectEntity$p(Lcom/transsion/search/fragment/hot/SearchHotFragment;)Lcom/transsion/search/bean/HotSubjectEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/search/bean/HotSubjectEntity;->getHot()Ljava/util/List;

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
