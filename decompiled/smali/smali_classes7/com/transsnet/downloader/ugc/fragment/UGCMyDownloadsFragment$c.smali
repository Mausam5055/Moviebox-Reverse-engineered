.class public final Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;->a()Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lak/o;->a:Lak/o;

    invoke-virtual {p1}, Lak/o;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->b0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;->n:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->b0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment$a;->a()Lcom/transsnet/downloader/ugc/fragment/UGCDownloadingListFragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;->d0(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
