.class public final Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lrq/f;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "a0",
        "(Landroid/view/LayoutInflater;)Lrq/f;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "b0",
        "lazyLoadData",
        "",
        "a",
        "Z",
        "hasReported",
        "",
        "b",
        "I",
        "rankIndex",
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
.field public static final c:Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->c:Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment$a;

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
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->a:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "hotRank"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/search_pugc/bean/HotRank;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/transsion/search_pugc/bean/HotRank;

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/search_pugc/bean/HotRank;->getVideos()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    sget-object v5, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    move-result-object v5

    invoke-virtual {v1}, Lcom/transsion/search_pugc/bean/HotRank;->getName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->b:I

    invoke-virtual {v5, v3, v2, v6, v7}, Lcom/transsion/search_pugc/g;->s(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;I)V

    move v2, v4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->a:Z

    :cond_5
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->a0(Landroid/view/LayoutInflater;)Lrq/f;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "hotRank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/transsion/search_pugc/bean/HotRank;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lcom/transsion/search_pugc/bean/HotRank;

    if-eqz v0, :cond_1

    move-object p2, p1

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->b:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getVideos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/f;

    const-string v0, "For you"

    if-eqz p1, :cond_9

    iget-object p1, p1, Lrq/f;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "Binge-watch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_tv:I

    goto :goto_3

    :sswitch_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_foryou:I

    goto :goto_3

    :sswitch_2
    const-string v2, "Video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_movie:I

    goto :goto_3

    :sswitch_3
    const-string v2, "Music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_movie:I

    goto :goto_3

    :cond_8
    sget v1, Lcom/transsion/search/R$drawable;->rank_type_music:I

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lrq/f;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lrq/f;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_a

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v1, Lcom/transsion/search_pugc/fragment/hot/adapter/g;

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/transsion/search_pugc/fragment/hot/SearchRankPagerFragment;->b:I

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/search_pugc/fragment/hot/adapter/g;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/HotRank;->getVideos()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x473fe05 -> :sswitch_3
        0x4ed245b -> :sswitch_2
        0x3ab4f828 -> :sswitch_1
        0x48707507 -> :sswitch_0
    .end sparse-switch
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method
