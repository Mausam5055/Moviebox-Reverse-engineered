.class public final Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lcom/transsion/shorttv/bean/Subject;

.field private c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;Ljs/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->j(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;Ljs/d;Landroid/view/View;)V

    return-void
.end method

.method private static final j(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;Ljs/d;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljs/d;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getData()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljs/d;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object v0

    invoke-virtual {p2}, Ljs/d;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showIndex(I)V

    sget-object v0, Lzr/b;->a:Lzr/b;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->b:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p2}, Ljs/d;->a()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showLockedImg(Z)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object v0

    invoke-virtual {p2}, Ljs/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->setSelect(Z)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object v0

    invoke-virtual {p2}, Ljs/d;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showDownloadedImg(Z)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object p1

    new-instance v0, Lcom/transsion/shorttv/ui/adapter/i;

    invoke-direct {v0, p0, p2}, Lcom/transsion/shorttv/ui/adapter/i;-><init>(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;Ljs/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public i(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;ILjava/util/List;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljs/d;

    if-eqz p3, :cond_0

    sget-object p3, Lzr/b;->a:Lzr/b;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->b:Lcom/transsion/shorttv/bean/Subject;

    check-cast p2, Ljs/d;

    invoke-virtual {p2}, Ljs/d;->a()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lzr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    move-result p3

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showLockedImg(Z)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object p3

    invoke-virtual {p2}, Ljs/d;->d()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->setSelect(Z)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;->f()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    move-result-object p1

    invoke-virtual {p2}, Ljs/d;->c()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->showDownloadedImg(Z)V

    :cond_0
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;->useForDownloadList()V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;

    invoke-direct {p1, p2}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;)V

    return-object p1
.end method

.method public final l(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final m(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->b:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->h(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->i(Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->k(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;

    move-result-object p1

    return-object p1
.end method
