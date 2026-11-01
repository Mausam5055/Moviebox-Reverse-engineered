.class public final Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lrq/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lrq/f;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "a0",
        "(Landroid/view/LayoutInflater;)Lrq/f;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "b0",
        "lazyLoadData",
        "",
        "a",
        "Z",
        "hasReported",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "b",
        "Lcom/transsion/search/viewmodel/SearchViewModel;",
        "searchViewModel",
        "c",
        "Search_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final c:Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;


# instance fields
.field private a:Z

.field private b:Lcom/transsion/search/viewmodel/SearchViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search/fragment/hot/SearchRankPagerFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a0(Landroid/view/LayoutInflater;)Lrq/f;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lrq/f;->c(Landroid/view/LayoutInflater;)Lrq/f;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b0()V
    .locals 13

    iget-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->a:Z

    if-nez v0, :cond_8

    sget-object v0, Lak/h;->a:Lak/h;

    invoke-virtual {v0}, Lak/h;->a()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "hotRankItem"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/search/bean/HotRankItem;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lcom/transsion/search/bean/HotRankItem;

    if-eqz v3, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    iget-object v1, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v9, v1

    goto :goto_4

    :cond_3
    :goto_3
    const-string v1, "mb_sug"

    goto :goto_2

    :goto_4
    const/4 v10, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v10

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v12, v3, 0x1

    if-gez v3, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_4
    move-object v2, v1

    check-cast v2, Lcom/transsion/search/bean/HotSubject;

    sget-object v1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    move-result v5

    move v6, v0

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/search/widget/d$a;->n(Lcom/transsion/search/bean/HotSubject;ILjava/lang/String;IZLjava/lang/String;)V

    move v3, v12

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    move v3, v10

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v10, v3, 0x1

    if-gez v3, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_6
    move-object v2, v1

    check-cast v2, Lcom/transsion/search/bean/GroupInfo;

    sget-object v1, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    move-result v5

    move v6, v0

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/search/widget/d$a;->l(Lcom/transsion/search/bean/GroupInfo;ILjava/lang/String;IZLjava/lang/String;)V

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->a:Z

    :cond_8
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->a0(Landroid/view/LayoutInflater;)Lrq/f;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "hotRankItem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/bean/HotRankItem;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lcom/transsion/search/bean/HotRankItem;

    if-eqz v0, :cond_1

    move-object p2, p1

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getGroups()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/f;

    const-string v1, "TV"

    const-string v2, "Movie"

    if-eqz v0, :cond_c

    iget-object v0, v0, Lrq/f;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xa82

    if-eq v4, v5, :cond_a

    const v5, 0x4714f10

    if-eq v4, v5, :cond_8

    const v5, 0x473fe05

    if-eq v4, v5, :cond_6

    goto :goto_2

    :cond_6
    const-string v4, "Music"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_music:I

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_movie:I

    goto :goto_3

    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_2
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_community:I

    goto :goto_3

    :cond_b
    sget v3, Lcom/transsion/search/R$drawable;->rank_type_tv:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lrq/f;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lrq/f;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "getResources(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsion/search/f;->e(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v4, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    :cond_d
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_4
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Lig/f;

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_e
    const-string v1, "mb_sug"

    if-eqz p1, :cond_11

    new-instance p1, Lcom/transsion/search/fragment/hot/adapter/c;

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    move-object v1, v4

    :cond_10
    :goto_5
    invoke-direct {p1, v2, v3, v1}, Lcom/transsion/search/fragment/hot/adapter/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getGroups()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_7

    :cond_11
    new-instance p1, Lcom/transsion/search/fragment/hot/adapter/h;

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getIndex()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_6

    :cond_12
    move-object v1, v5

    :cond_13
    :goto_6
    invoke-direct {p1, v2, v4, v3, v1}, Lcom/transsion/search/fragment/hot/adapter/h;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/search/bean/HotRankItem;->getItems()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :goto_7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_14
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Landroidx/lifecycle/v0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/search/viewmodel/SearchViewModel;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/transsion/search/viewmodel/SearchViewModel;

    iput-object p1, p0, Lcom/transsion/search/fragment/hot/SearchRankPagerFragment;->b:Lcom/transsion/search/viewmodel/SearchViewModel;

    return-void
.end method
