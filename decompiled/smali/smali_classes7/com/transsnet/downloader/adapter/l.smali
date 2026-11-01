.class public final Lcom/transsnet/downloader/adapter/l;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# instance fields
.field private final a:Lny/c;

.field private b:Ljava/util/List;

.field private c:Lcom/transsion/moviedetailapi/bean/Subject;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/Integer;

.field private k:Z

.field private final l:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lny/c;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p2, p0, Lcom/transsnet/downloader/adapter/l;->a:Lny/c;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->l:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/transsnet/downloader/adapter/l;->h(I)Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    move-result-object v1

    sget-object v2, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->N:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;

    iget-object v3, v0, Lcom/transsnet/downloader/adapter/l;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsnet/downloader/adapter/l;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsnet/downloader/adapter/l;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v6, v0, Lcom/transsnet/downloader/adapter/l;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsnet/downloader/adapter/l;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsnet/downloader/adapter/l;->h:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v11, v0, Lcom/transsnet/downloader/adapter/l;->k:Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    move v13, v9

    :goto_0
    iget v14, v0, Lcom/transsnet/downloader/adapter/l;->i:I

    const/4 v12, 0x0

    move-object v9, v10

    move/from16 v10, p1

    move/from16 v15, p1

    invoke-virtual/range {v2 .. v15}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IZZIII)Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    move-result-object v1

    iget-object v2, v0, Lcom/transsnet/downloader/adapter/l;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->p1(Ljava/util/List;)V

    iget-object v2, v0, Lcom/transsnet/downloader/adapter/l;->a:Lny/c;

    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->q1(Lny/c;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/transsnet/downloader/adapter/l;->l:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final g(I)Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/l;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/l;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(I)Lcom/transsion/moviedetailapi/bean/ResourcesSeason;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/adapter/l;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->d:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->f:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->g:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->e:Ljava/lang/String;

    return-void
.end method

.method public final m(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->j:Ljava/lang/Integer;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/downloader/adapter/l;->k:Z

    return-void
.end method

.method public final o(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->h:Ljava/lang/String;

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/adapter/l;->i:I

    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/adapter/l;->b:Ljava/util/List;

    return-void
.end method
