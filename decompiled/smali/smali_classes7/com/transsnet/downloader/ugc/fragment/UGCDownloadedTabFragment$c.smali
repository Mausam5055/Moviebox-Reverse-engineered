.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;->d0(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;

    invoke-static {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;->B0(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedTabFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
