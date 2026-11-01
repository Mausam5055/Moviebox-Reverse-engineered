.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->B0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    iput-boolean p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->b:Z

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->b:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;->a()Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhj/b;->i()Z

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lhj/b;->k(Z)V

    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->g0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;)V

    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->h0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;->n:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment$d;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;->i0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadManagerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
