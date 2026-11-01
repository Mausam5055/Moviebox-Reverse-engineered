.class public final Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;
.super Lny/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadingListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-direct {p0}, Lny/d;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->j(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)V

    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->H()V

    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 11

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    const-string v1, ",resourceId="

    const-string v2, " subjectId="

    const-string v3, ",bean="

    const/4 v4, 0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v5, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-virtual {v5}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRefresh,getList status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1, v4}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadingListFragment;->T0(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    new-instance v0, Lcom/transsnet/downloader/fragment/a6;

    invoke-direct {v0, p2}, Lcom/transsnet/downloader/fragment/a6;-><init>(Lcom/transsnet/downloader/fragment/DownloadingListFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v0

    const/4 v5, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v5, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-virtual {v6}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onRefresh position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",status="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1, v4}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadingListFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadingListFragment;

    invoke-virtual {p2}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, v5, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
