.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;
.super Lny/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-direct {p0}, Lny/d;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V

    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->H()V

    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 7

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onRefresh completed -> refresh all"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->p1(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/f0;

    invoke-direct {v0, p2}, Lcom/transsnet/downloader/ugc/fragment/f0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/downloader/ugc/adapter/c;

    instance-of v3, v2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    invoke-virtual {v2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_6

    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    goto :goto_2

    :cond_3
    move-object p2, v1

    :goto_2
    instance-of v2, p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    if-eqz v2, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/ugc/adapter/c$c;

    move-result-object p2

    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-virtual {v1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    :cond_5
    iget-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$b;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    return-void
.end method
