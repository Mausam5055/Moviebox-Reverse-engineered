.class public final Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->q0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->a:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->d0(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
